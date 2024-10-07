# 
## flutter listview inside another list
 ```
 shrinkWrap: true, // This ensures the ListView takes only the space it needs
 physics: NeverScrollableScrollPhysics(), // Disable ListView's scrolling
 ```           

```

        var response = await GoogleMapHelper.directionsComputeRoute(
          request: compute_request.ComputeRoutesRequest(
              origin: origin,
              destination: destination,
              intermediates: intermediates),
        );

        List<PointLatLng> result = response?.polylinePoints ?? [];

        if (result.isNotEmpty) {
          List<LatLng> polyPoints = result
              .map(
                (e) => LatLng(e.latitude, e.longitude),
          )
              .toList();

          // Creating a polyline
          Polyline polyline = Polyline(
            polylineId: const PolylineId("route"),
            color: Colors.blueAccent,
            width: 5,
            points: polyPoints,
          );

          polyLines.add(polyline);
        }
```

### fix ios devices not showing in android studio 

```
 sudo xcode-select --switch /Volumes/2tb/Applications/Xcode.app/Contents/Developer

sudo xcodebuild -runFirstLaunch
```

### start logcat 
```
adb logcat | grep flutter
```
