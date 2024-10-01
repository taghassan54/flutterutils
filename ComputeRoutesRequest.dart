import 'dart:convert';

import 'package:google_maps_flutter/google_maps_flutter.dart';
/// origin : {"vehicleStopover":false,"sideOfRoad":false,"location":{"latLng":{"latitude":"25.397750","longitude":"55.519897"}}}
/// destination : {"vehicleStopover":false,"sideOfRoad":false,"location":{"latLng":{"latitude":"25.416252","longitude":"55.442449"}}}
/// travelMode : "drive"
/// routingPreference : "traffic_unaware"
/// polylineQuality : "high_quality"
/// computeAlternativeRoutes : false
/// routeModifiers : {"avoidTolls":false,"avoidHighways":false,"avoidFerries":false,"avoidIndoor":false}

ComputeRoutesRequest computeRoutesRequestFromJson(String str) => ComputeRoutesRequest.fromJson(json.decode(str));
String computeRoutesRequestToJson(ComputeRoutesRequest data) => json.encode(data.toJson());
class ComputeRoutesRequest {
  ComputeRoutesRequest({
    Waypoint? origin,
    Waypoint? destination,
    List<Waypoint>? intermediates,
      String? travelMode, 
      String? routingPreference, 
      String? polylineQuality, 
      bool? computeAlternativeRoutes, 
      RouteModifiers? routeModifiers,}){
    _origin = origin;
    _destination = destination;
    _intermediates = intermediates;
    _travelMode = travelMode;
    _routingPreference = routingPreference;
    _polylineQuality = polylineQuality;
    _computeAlternativeRoutes = computeAlternativeRoutes;
    _routeModifiers = routeModifiers;
}

  ComputeRoutesRequest.fromJson(dynamic json) {
    _origin = json['origin'] != null ? Waypoint.fromJson(json['origin']) : null;
    _destination = json['destination'] != null ? Waypoint.fromJson(json['destination']) : null;
    _travelMode = json['travelMode'];
    _routingPreference = json['routingPreference'];
    _polylineQuality = json['polylineQuality'];
    _computeAlternativeRoutes = json['computeAlternativeRoutes'];
    _routeModifiers = json['routeModifiers'] != null ? RouteModifiers.fromJson(json['routeModifiers']) : null;
  }
  Waypoint? _origin;
  Waypoint? _destination;
  List<Waypoint>? _intermediates;
  String? _travelMode;
  String? _routingPreference;
  String? _polylineQuality;
  bool? _computeAlternativeRoutes;
  RouteModifiers? _routeModifiers;
ComputeRoutesRequest copyWith({  Waypoint? origin,
  Waypoint? destination,
  List<Waypoint>? intermediates,
  String? travelMode,
  String? routingPreference,
  String? polylineQuality,
  bool? computeAlternativeRoutes,
  RouteModifiers? routeModifiers,
}) => ComputeRoutesRequest(  origin: origin ?? _origin,
  destination: destination ?? _destination,
  travelMode: travelMode ?? _travelMode,
  intermediates: intermediates ?? _intermediates,
  routingPreference: routingPreference ?? _routingPreference,
  polylineQuality: polylineQuality ?? _polylineQuality,
  computeAlternativeRoutes: computeAlternativeRoutes ?? _computeAlternativeRoutes,
  routeModifiers: routeModifiers ?? _routeModifiers,
);
  Waypoint? get origin => _origin;
  Waypoint? get destination => _destination;
  List<Waypoint>? get intermediates => _intermediates;
  String? get travelMode => _travelMode;
  String? get routingPreference => _routingPreference;
  String? get polylineQuality => _polylineQuality;
  bool? get computeAlternativeRoutes => _computeAlternativeRoutes;
  RouteModifiers? get routeModifiers => _routeModifiers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_origin != null) {
      map['origin'] = _origin?.toJson();
    }
    if (_destination != null) {
      map['destination'] = _destination?.toJson();
    }
    if (_intermediates != null) {
      map['intermediates'] = _intermediates?.map((e) => e.toJson(),).toList();
    }
    map['travelMode'] = _travelMode??'drive';
    map['routingPreference'] = _routingPreference??'traffic_unaware';
    map['polylineQuality'] = _polylineQuality??'high_quality';
    map['computeAlternativeRoutes'] = _computeAlternativeRoutes??false;
    if (_routeModifiers != null) {
      map['routeModifiers'] = _routeModifiers?.toJson();
    }else{
      map['routeModifiers'] = {
        "avoidTolls": false,
    "avoidHighways": false,
    "avoidFerries": false,
    "avoidIndoor": false
  };
    }
    return map;
  }

}

/// avoidTolls : false
/// avoidHighways : false
/// avoidFerries : false
/// avoidIndoor : false

RouteModifiers routeModifiersFromJson(String str) => RouteModifiers.fromJson(json.decode(str));
String routeModifiersToJson(RouteModifiers data) => json.encode(data.toJson());
class RouteModifiers {
  RouteModifiers({
      bool? avoidTolls, 
      bool? avoidHighways, 
      bool? avoidFerries, 
      bool? avoidIndoor,}){
    _avoidTolls = avoidTolls;
    _avoidHighways = avoidHighways;
    _avoidFerries = avoidFerries;
    _avoidIndoor = avoidIndoor;
}

  RouteModifiers.fromJson(dynamic json) {
    _avoidTolls = json['avoidTolls'];
    _avoidHighways = json['avoidHighways'];
    _avoidFerries = json['avoidFerries'];
    _avoidIndoor = json['avoidIndoor'];
  }
  bool? _avoidTolls;
  bool? _avoidHighways;
  bool? _avoidFerries;
  bool? _avoidIndoor;
RouteModifiers copyWith({  bool? avoidTolls,
  bool? avoidHighways,
  bool? avoidFerries,
  bool? avoidIndoor,
}) => RouteModifiers(  avoidTolls: avoidTolls ?? _avoidTolls,
  avoidHighways: avoidHighways ?? _avoidHighways,
  avoidFerries: avoidFerries ?? _avoidFerries,
  avoidIndoor: avoidIndoor ?? _avoidIndoor,
);
  bool? get avoidTolls => _avoidTolls;
  bool? get avoidHighways => _avoidHighways;
  bool? get avoidFerries => _avoidFerries;
  bool? get avoidIndoor => _avoidIndoor;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['avoidTolls'] = _avoidTolls;
    map['avoidHighways'] = _avoidHighways;
    map['avoidFerries'] = _avoidFerries;
    map['avoidIndoor'] = _avoidIndoor;
    return map;
  }

}

// /// vehicleStopover : false
// /// sideOfRoad : false
// /// location : {"latLng":{"latitude":"25.416252","longitude":"55.442449"}}
//
// Destination destinationFromJson(String str) => Destination.fromJson(json.decode(str));
// String destinationToJson(Destination data) => json.encode(data.toJson());
// class Destination {
//   Destination({
//       bool? vehicleStopover,
//       bool? sideOfRoad,
//       Location? location,}){
//     _vehicleStopover = vehicleStopover;
//     _sideOfRoad = sideOfRoad;
//     _location = location;
// }
//
//   Destination.fromJson(dynamic json) {
//     _vehicleStopover = json['vehicleStopover'];
//     _sideOfRoad = json['sideOfRoad'];
//     _location = json['location'] != null ? Location.fromJson(json['location']) : null;
//   }
//   bool? _vehicleStopover;
//   bool? _sideOfRoad;
//   Location? _location;
// Destination copyWith({  bool? vehicleStopover,
//   bool? sideOfRoad,
//   Location? location,
// }) => Destination(  vehicleStopover: vehicleStopover ?? _vehicleStopover,
//   sideOfRoad: sideOfRoad ?? _sideOfRoad,
//   location: location ?? _location,
// );
//   bool? get vehicleStopover => _vehicleStopover;
//   bool? get sideOfRoad => _sideOfRoad;
//   Location? get location => _location;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['vehicleStopover'] = _vehicleStopover;
//     map['sideOfRoad'] = _sideOfRoad;
//     if (_location != null) {
//       map['location'] = _location?.toJson();
//     }
//     return map;
//   }
//
// }

/// latLng : {"latitude":"25.416252","longitude":"55.442449"}

Location locationFromJson(String str) => Location.fromJson(json.decode(str));
String locationToJson(Location data) => json.encode(data.toJson());
class Location {
  Location({
      LatLng? latLng,}){
    _latLng = latLng;
}

  Location.fromJson(dynamic json) {
    _latLng = json['latLng'] != null ? LatLng.fromJson(json['latLng']) : null;
  }
  LatLng? _latLng;
Location copyWith({  LatLng? latLng,
}) => Location(  latLng: latLng ?? _latLng,
);
  LatLng? get latLng => _latLng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_latLng != null) {
      map['latLng'] = {
        "latitude": _latLng?.latitude,
        "longitude": _latLng?.longitude
      } ;
    }
    return map;
  }

}

/// vehicleStopover : false
/// sideOfRoad : false
/// location : {"latLng":{"latitude":"25.397750","longitude":"55.519897"}}

Waypoint waypointFromJson(String str) => Waypoint.fromJson(json.decode(str));
String waypointToJson(Waypoint data) => json.encode(data.toJson());
class Waypoint {
  Waypoint({
      bool? vehicleStopover, 
      bool? sideOfRoad, 
      Location? location,}){
    _vehicleStopover = vehicleStopover;
    _sideOfRoad = sideOfRoad;
    _location = location;
}

  Waypoint.fromJson(dynamic json) {
    _vehicleStopover = json['vehicleStopover'];
    _sideOfRoad = json['sideOfRoad'];
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
  }
  bool? _vehicleStopover;
  bool? _sideOfRoad;
  Location? _location;
  Waypoint copyWith({  bool? vehicleStopover,
  bool? sideOfRoad,
  Location? location,
}) => Waypoint(  vehicleStopover: vehicleStopover ?? _vehicleStopover,
  sideOfRoad: sideOfRoad ?? _sideOfRoad,
  location: location ?? _location,
);
  bool? get vehicleStopover => _vehicleStopover;
  bool? get sideOfRoad => _sideOfRoad;
  Location? get location => _location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['vehicleStopover'] = _vehicleStopover;
    map['sideOfRoad'] = _sideOfRoad;
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    return map;
  }

}
