import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:siaded/core/utils/extensions.dart';
import 'package:siaded/core/injectable/injection.dart';
import 'package:siaded/core/utils/logger_utils.dart';
import 'package:siaded/core/utils/snack_alert.dart';

@injectable
class GeolocatorHelper {
  LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 100,
  );

  Future<bool> get isLocationServiceEnabled async =>
      await Geolocator.isLocationServiceEnabled();

  StreamSubscription<ServiceStatus> serviceStatusStream =
      Geolocator.getServiceStatusStream().listen((ServiceStatus status) {
    AppLogger.it.logWarning(status.toString());
  });

  Stream<ServiceStatus> getServiceStatusStream= Geolocator.getServiceStatusStream();

  Future<LocationPermission> get checkPermission async =>
      await Geolocator.checkPermission();

  Future<bool> get isPermissionGranted async {
    LocationPermission permission =await Geolocator.checkPermission();
    return permission == LocationPermission.always|| permission == LocationPermission.whileInUse;
  }

  Future<LocationPermission> get requestPermission async =>
      await Geolocator.requestPermission();

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

// Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
// Location services are not enabled don't continue
// accessing the position and request users of the
// App to enable the location services.

      locationServicesDisabledDialog();

      return Future.error('location_services_disabled'.tr);
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
// Permissions are denied, next time you could try
// requesting permissions again (this is also where
// Android's shouldShowRequestPermissionRationale
// returned true. According to Android guidelines
// your App should show an explanatory UI now.
        await Geolocator.requestPermission();

        SnackAlert.showCustomSnackBar('location_permissions_denied_now'.tr);
        return Future.error('location_permissions_denied_now'.tr);
      }
    }

    if (permission == LocationPermission.deniedForever) {
      locationPermissionsDeniedDialog();
// Permissions are denied forever, handle appropriately.

      return Future.error('location_permissions_denied'.tr);
    }

// When we reach here, permissions are granted and we can
// continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  locationPermissionsDeniedDialog(){
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Get.context!.sizedBoxHeightExtraSmall,
        Text('location_permissions_denied'.tr)
      ],
    ).animatedDialog(
      confirmText: "open_settings",
      onConfirm: () async {
        Get.back();
        await Geolocator.openAppSettings();
      },
      onCancel: () => Get.back(),
    );
  }

  locationServicesDisabledDialog(){
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Get.context!.sizedBoxHeightExtraSmall,
        Text('location_services_disabled'.tr)
      ],
    ).animatedDialog(
      confirmText: "open_settings",
      onConfirm: () async {
        Get.back();
        await Geolocator.openLocationSettings();
      },
      onCancel: () => Get.back(),
    );
  }

  openLocationSettings()async{
    await Geolocator.openLocationSettings();
  }

  openAppSettings()async{
    await Geolocator.openAppSettings();
  }

  Future<Position> getCurrentPosition() async =>
      await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

  Future<Position?> getLastKnownPosition() async =>
      await Geolocator.getLastKnownPosition();

  Future<double?> distanceBetween({
    required double startLatitude,
    required double startLongitude,
    required double endLatitude,
    required double endLongitude,
  }) async =>
      Geolocator.distanceBetween(
          startLatitude, startLongitude, endLatitude, endLongitude);

  Future<double?> bearingBetween({
    required double startLatitude,
    required double startLongitude,
    required double endLatitude,
    required double endLongitude,
  }) async =>
      Geolocator.bearingBetween(
          startLatitude, startLongitude, endLatitude, endLongitude);

  Stream<Position> getPositionStream() {
    checkPlatformSetting();
    Stream<Position> positionStream =
        Geolocator.getPositionStream(locationSettings: locationSettings);

    return positionStream;
  }


  void checkPlatformSetting() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      locationSettings = AndroidSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 100,
          forceLocationManager: true,
          intervalDuration: const Duration(seconds: 10),
          //(Optional) Set foreground notification config to keep the app alive
          //when going to the background
          foregroundNotificationConfig: ForegroundNotificationConfig(
            notificationText: 'background_notification_text'.tr,
            notificationTitle: 'background_notification_title'.tr,
            enableWakeLock: true,
            notificationIcon:const AndroidResource(name: 'cloud',)
          ));
    } else if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      locationSettings = AppleSettings(
        accuracy: LocationAccuracy.high,
        activityType: ActivityType.fitness,
        distanceFilter: 100,
        pauseLocationUpdatesAutomatically: true,
        // Only set to true if our app will be started up in the background.
        showBackgroundLocationIndicator: false,
      );
    } else {
      locationSettings = const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
      );
    }
  }

 static Future<Placemark> getMark(  double latitude,
     double longitude)async{
    getIt<AppLogger>().logInfo("${latitude} - ${longitude}");
    List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
    return placemarks.first;
  }
}
