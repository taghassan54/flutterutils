import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_routes/google_maps_routes.dart';
import 'package:injectable/injectable.dart';
import 'package:siaded/core/storage/global_data_holder.dart';
import 'package:siaded/core/storage/local_database/local_database.dart';
import 'DirectionsComputeRouteModel.dart'
    as compute_route_model;
import 'package:siaded/features/login/domain/entities/InspectorAreasResponseEntity.dart';
import 'package:siaded/features/map/domain/entities/EstablishmentMarkerEntity.dart';
import 'package:siaded/features/map/presentation/controllers/map_logic.dart';
import 'package:siaded/generated/assets.dart';

import '../injectable/injection.dart';
import 'ComputeRoutesRequest.dart' as compute_request;
import 'logger_utils.dart';

@singleton
class GoogleMapHelper {
  static AppDatabase localDatabase = Get.find<AppDatabase>();

  static Future<BitmapDescriptor> loadCustomMarker(String markerIcon,
      {Size? size}) async {
    BitmapDescriptor customMarkerIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(size: size ?? const Size(28, 28)),
      markerIcon,
    );
    return customMarkerIcon;
  }

  static moveCameraTo(Position? inspectorPosition, MapLogic mapLogic) async {
    final GoogleMapController mapController =
        await mapLogic.googleMapController.future;
    try {
      mapLogic.initialCameraPosition = CameraPosition(
        target:
            LatLng(inspectorPosition!.latitude, inspectorPosition.longitude),
        zoom: 14.4746,
      );

      CameraUpdate update =
          CameraUpdate.newCameraPosition(mapLogic.initialCameraPosition);
      await mapController.animateCamera(update);
    } catch (e) {
      getIt<AppLogger>().logError("move Camera To $e");
    }
  }

  static void updateInspectorMarker(Position event, MapLogic mapLogic) async {
    mapLogic.removeInspectorMarker();

    var customMarkerIcon =
        await GoogleMapHelper.loadCustomMarker(Assets.iconsIcPinInspector);
    mapLogic.inspector = Marker(
      infoWindow: const InfoWindow(title: "", snippet: ""),
      markerId: const MarkerId('inspector'),
      position: LatLng(event.latitude, event.longitude),
      icon: customMarkerIcon,
      onTap: () {},
    );
    mapLogic.markers.add(mapLogic.inspector!);
    mapLogic.allMarkers.add(mapLogic.inspector!);
    mapLogic.update();
    mapLogic.initClusterMarker();
  }

  static Future<List<AreaBoundaryPoint>?> get areaBoundaries async =>
      await localDatabase.areaBoundariesDao.getAllAreaBoundaries();

  static List<InspectorAreasResponseContentEntity>? get inspectorAreas =>
      GlobalDataHolder.inspectorAreasList ?? [];

  static Future<List<AreaBoundaryPoint>?> get inspectorAreasBoundaries async {
    if (inspectorAreas != null) {
      List<String>? inspectorAreasIds =
          inspectorAreas?.map((e) => e.id!.toLowerCase()).toList();
      List<AreaBoundaryPoint>? boundaries = await areaBoundaries;
      return boundaries
          ?.where(
            (boundary) =>
                inspectorAreasIds != null &&
                inspectorAreasIds.contains(
                  boundary.areaId.toLowerCase(),
                ),
          )
          .toList();
    }
    return null;
  }

  static Color getRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @Deprecated("upgrade this to stable version")
  static useAndroidViewSurface() {
    // TODO upgrade this to stable version
    if (Platform.isAndroid) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
  }

  static Future<compute_route_model.DirectionsComputeRouteModel?>?
      directionsComputeRoute({
    required compute_request.ComputeRoutesRequest request
}) async {
    try {
      var headers = {
        'accept': '*/*',
        'accept-language': 'en-US,en;q=0.9,ar;q=0.8',
        'content-type': 'application/json',
        'origin': 'https://developers-dot-devsite-v2-prod.appspot.com',
        'priority': 'u=1, i',
        'referer': 'https://developers-dot-devsite-v2-prod.appspot.com/',
        'sec-ch-ua':
            '"Chromium";v="128", "Not;A=Brand";v="24", "Google Chrome";v="128"',
        'sec-ch-ua-mobile': '?0',
        'sec-ch-ua-platform': '"macOS"',
        'sec-fetch-dest': 'empty',
        'sec-fetch-mode': 'cors',
        'sec-fetch-site': 'cross-site',
        'user-agent':
            'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',
        'x-client-data':
            'CKO1yQEIhLbJAQiktskBCKmdygEIhPvKAQiWocsBCJv+zAEIhqDNAQjY/M0BCNe9zgEI/8HOARj2yc0B',
        'x-goog-api-key': 'AIzaSyAOWd855Jru-vGD_bVJqc6Qr-n8VpX0XsA',
        'x-goog-fieldmask': '*'
      };
AppLogger.it.logDeveloper("${jsonEncode(request.toJson())}");
      var dio = getIt<Dio>();
      var response = await dio.request(
        'https://routes.googleapis.com/directions/v2:computeRoutes',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: request.toJson(),
      );

      if (response.statusCode == 200) {
        return compute_route_model.DirectionsComputeRouteModel.fromJson(
            response.data);
      } else {
        AppLogger.it.logError(response.statusMessage.toString());
      }
    } on DioException catch (e) {
      AppLogger.it.logError(e.message.toString());
    } catch (e) {
      AppLogger.it.logError(e.toString());
    }
    return null;
  }

  // Function to calculate distance between two LatLng points
  static double getDistanceFromInspector(LatLng point, Position inspectorPosition ) {
    String distance = DistanceCalculator()
        .calculateRouteDistance([point, LatLng(inspectorPosition.latitude, inspectorPosition.longitude)], decimals: 1)
        .split("km")
        .first;
    return double.tryParse(distance) != null
        ? double.parse(distance)
        : 0.0; // Extract the numeric part before "km"
  }
}

extension LatLngExtensions on LatLng {
  compute_request.Waypoint toWaypoint()=>compute_request.Waypoint(
  vehicleStopover: false,
  sideOfRoad: false,
  location: compute_request.Location(
  latLng: LatLng(latitude, longitude),
  ));
}
extension LatLngListExtensions on List<LatLng> {
  List<compute_request.Waypoint> toWaypoints()=>map((element) => element.toWaypoint(),)
      .toList();

  List<String> toUrlStringWaypoints()=> map(
        (e) => '${e.latitude},${e.longitude}',
  )
      .toList();
}


extension MarkerCluster on Marker {
  EstablishmentMarker toEstablishmentMarker() => EstablishmentMarker(
      locationName: '${infoWindow.title}',
      markerId: markerId.toString(),
      latitude: position.latitude,
      longitude: position.longitude,
      onTap: onTap,
      thumbnailSrc: icon);
}

extension StringMapExtension on String {
 MarkerId toMarkerId()=>MarkerId(this);
}

mixin MapHelperMixin {
  Marker? inspector;
  Completer<GoogleMapController> googleMapController =
      Completer<GoogleMapController>();
  CameraPosition initialCameraPosition =
      const CameraPosition(target: LatLng(25.3903141, 55.519646));

  RxList<Polygon> polygons = <Polygon>[].obs;
  RxList<Marker> markers = <Marker>[].obs;
  RxList<Marker> allMarkers = <Marker>[].obs;

  Position? inspectorPosition;

  List<SyncLog?> lastSyncLog = [];

  void removeInspectorMarker();

  void initClusterMarker();
}
