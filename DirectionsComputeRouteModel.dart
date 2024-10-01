import 'dart:convert';

import 'package:flutter_polyline_points_plus/flutter_polyline_points_plus.dart';
/// routes : [{"legs":[{"distanceMeters":5208,"duration":"4217s","staticDuration":"4217s","polyline":{"encodedPolyline":"st_zCmezqI`@Lm@zBMb@d@CLHBBBB@DDL[nCGh@OrAMhAMnAEj@Cd@Ef@Ch@IrB?RCf@A`@?t@HXDJBJHHAP?TAfC?tGAV?lAAjCBpC?h@?@@nA?T?P@fA@D@f@BnABR@VDr@@Z@VBT?L@@?@?F@F?FB^BTB`@Fv@BR@PLnADd@Db@LpAHp@h@dEHz@ZrCpA`JF`@x@pGb@nDNlAPrAPlANdA|BxPvAfLf@`E~@pGPpAf@dE^xCz@xF@HF\\r@dFr@zEl@~Dt@jFjBdLIn@ETIRIHEDEDIFEBGBIB{IdB_C`@I@YF_@JOBe@Ng@RQDKBO?QCM?G?K?qDcBO[IQCKAI?IAM@MBOCWAEACACGGGEIEUKUIQGA?CAA?C?C?MBSDA?C?C?AACACCM[A?A??AA?A?AAA??AA??AAA?A?A?AA??A@A?A?A?AACEEKQUMgAi@]Q_@GGAWEYO]MQIKECC"},"startLocation":{"latLng":{"latitude":25.398659300000002,"longitude":55.5171901}},"endLocation":{"latLng":{"latitude":25.4003335,"longitude":55.4779461}},"steps":[{"distanceMeters":20,"staticDuration":"16s","polyline":{"encodedPolyline":"st_zCmezqI`@L"},"startLocation":{"latLng":{"latitude":25.398659300000002,"longitude":55.5171901}},"endLocation":{"latLng":{"latitude":25.3984921,"longitude":55.5171194}},"navigationInstruction":{"maneuver":"DEPART","instructions":"الاتجاه نحو الجنوب"},"localizedValues":{"distance":{"text":"20 م"},"staticDuration":{"text":"1 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":87,"staticDuration":"72s","polyline":{"encodedPolyline":"qs_zC_ezqIm@zBMb@"},"startLocation":{"latLng":{"latitude":25.3984921,"longitude":55.5171194}},"endLocation":{"latLng":{"latitude":25.3987895,"longitude":55.516321000000005}},"navigationInstruction":{"maneuver":"TURN_RIGHT","instructions":"الاتجاه نحو  اليمين"},"localizedValues":{"distance":{"text":"87 م"},"staticDuration":{"text":"1 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":21,"staticDuration":"15s","polyline":{"encodedPolyline":"mu_zC_`zqId@C"},"startLocation":{"latLng":{"latitude":25.3987895,"longitude":55.516321000000005}},"endLocation":{"latLng":{"latitude":25.398599599999997,"longitude":55.516342599999994}},"navigationInstruction":{"maneuver":"TURN_LEFT","instructions":"الاتجاه نحو اليسار"},"localizedValues":{"distance":{"text":"21 م"},"staticDuration":{"text":"1 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":494,"staticDuration":"415s","polyline":{"encodedPolyline":"gt_zCc`zqILHBBBB@DDL[nCGh@OrAMhAMnAEj@Cd@Ef@Ch@IrB?RCf@A`@?t@HXDJBJHH"},"startLocation":{"latLng":{"latitude":25.398599599999997,"longitude":55.516342599999994}},"endLocation":{"latLng":{"latitude":25.398884799999998,"longitude":55.5115889}},"navigationInstruction":{"maneuver":"TURN_RIGHT","instructions":"الاتجاه نحو  اليمين"},"localizedValues":{"distance":{"text":"0.5 كم"},"staticDuration":{"text":"7 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":3558,"staticDuration":"2832s","polyline":{"encodedPolyline":"_v_zCmbyqIAP?TAfC?tGAV?lAAjCBpC?h@?@@nA?T?P@fA@D@f@BnABR@VDr@@Z@VBT?L@@?@?F@F?FB^BTB`@Fv@BR@PLnADd@Db@LpAHp@h@dEHz@ZrCpA`JF`@x@pGb@nDNlAPrAPlANdA|BxPvAfLf@`E~@pGPpAf@dE^xCz@xF@HF\\r@dFr@zEl@~Dt@jFjBdL"},"startLocation":{"latLng":{"latitude":25.398884799999998,"longitude":55.5115889}},"endLocation":{"latLng":{"latitude":25.392732799999997,"longitude":55.476972599999996}},"navigationInstruction":{"maneuver":"TURN_SLIGHT_RIGHT","instructions":"إلى اليمين قليلاً إلى شارع الشيخ زايد/شارع الشيخ مكتوم بن راشد"},"localizedValues":{"distance":{"text":"3.6 كم"},"staticDuration":{"text":"47 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":510,"staticDuration":"417s","polyline":{"encodedPolyline":"qo~yCajrqIIn@ETIRIHEDEDIFEBGBIB{IdB_C`@I@YF_@JOBe@Ng@RQDKBO?QCM?G?K?"},"startLocation":{"latLng":{"latitude":25.392732799999997,"longitude":55.476972599999996}},"endLocation":{"latLng":{"latitude":25.396822699999998,"longitude":55.4752893}},"navigationInstruction":{"maneuver":"TURN_SLIGHT_RIGHT","instructions":"الاتجاه نحو  اليمين قليلاً"},"localizedValues":{"distance":{"text":"0.5 كم"},"staticDuration":{"text":"7 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":111,"staticDuration":"90s","polyline":{"encodedPolyline":"ci_zCq_rqIqDcB"},"startLocation":{"latLng":{"latitude":25.396822699999998,"longitude":55.4752893}},"endLocation":{"latLng":{"latitude":25.3977139,"longitude":55.4757854}},"navigationInstruction":{"maneuver":"NAME_CHANGE","instructions":"تابع السير في شارع الاتحاد/إ11"},"localizedValues":{"distance":{"text":"0.1 كم"},"staticDuration":{"text":"2 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":66,"staticDuration":"65s","polyline":{"encodedPolyline":"un_zCubrqIO[IQCKAI?IAM@MBO"},"startLocation":{"latLng":{"latitude":25.3977139,"longitude":55.4757854}},"endLocation":{"latLng":{"latitude":25.3978468,"longitude":55.4763995}},"navigationInstruction":{"maneuver":"TURN_SLIGHT_RIGHT","instructions":"الاتجاه نحو  اليمين قليلاً"},"localizedValues":{"distance":{"text":"66 م"},"staticDuration":{"text":"1 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":341,"staticDuration":"295s","polyline":{"encodedPolyline":"qo_zCofrqICWAEACACGGGEIEUKUIQGA?CAA?C?C?MBSDA?C?C?AACACCM[A?A??AA?A?AAA??AA??AAA?A?A?AA??A@A?A?A?AACEEKQUMgAi@]Q_@GGAWEYO]MQIKECC"},"startLocation":{"latLng":{"latitude":25.3978468,"longitude":55.4763995}},"endLocation":{"latLng":{"latitude":25.4003335,"longitude":55.4779461}},"navigationInstruction":{"maneuver":"TURN_SLIGHT_LEFT","instructions":"الاتجاه نحو  اليسار قليلاً\nمرور خلال دوّار واحد\nستكون الوجهة إلى يمين الطريق"},"localizedValues":{"distance":{"text":"0.3 كم"},"staticDuration":{"text":"5 دقيقة"}},"travelMode":"WALK"}],"localizedValues":{"distance":{"text":"5.2 كم"},"duration":{"text":"1 ساعة 10 دقيقة"},"staticDuration":{"text":"1 ساعة 10 دقيقة"}}}],"distanceMeters":5208,"duration":"4217s","staticDuration":"4217s","polyline":{"encodedPolyline":"st_zCmezqI`@Lm@zBMb@d@CLHBBBB@DDL[nCGh@OrAMhAMnAEj@Cd@Ef@Ch@IrB?RCf@A`@?t@HXDJBJHHAP?TAfC?tGAV?lAAjCBpC?h@?@@nA?T?P@fA@D@f@BnABR@VDr@@Z@VBT?L@@?@?F@F?FB^BTB`@Fv@BR@PLnADd@Db@LpAHp@h@dEHz@ZrCpA`JF`@x@pGb@nDNlAPrAPlANdA|BxPvAfLf@`E~@pGPpAf@dE^xCz@xF@HF\\r@dFr@zEl@~Dt@jFjBdLIn@ETIRIHEDEDIFEBGBIB{IdB_C`@I@YF_@JOBe@Ng@RQDKBO?QCM?G?K?qDcBO[IQCKAI?IAM@MBOCWAEACACGGGEIEUKUIQGA?CAA?C?C?MBSDA?C?C?AACACCM[A?A??AA?A?AAA??AA??AAA?A?A?AA??A@A?A?A?AACEEKQUMgAi@]Q_@GGAWEYO]MQIKECC"},"description":"شارع الشيخ زايد/شارع الشيخ مكتوم بن راشد","viewport":{"low":{"latitude":25.392732799999997,"longitude":55.4752723},"high":{"latitude":25.4003335,"longitude":55.5171901}},"travelAdvisory":{},"localizedValues":{"distance":{"text":"5.2 كم"},"duration":{"text":"1 ساعة 10 دقيقة"},"staticDuration":{"text":"1 ساعة 10 دقيقة"}},"routeLabels":["DEFAULT_ROUTE"]}]
/// geocodingResults : {"origin":{"geocoderStatus":{},"type":["establishment","local_government_office","point_of_interest"],"placeId":"ChIJLZQeBrn39T4R8Rn-YMbqyw8"},"destination":{"geocoderStatus":{},"type":["establishment","point_of_interest","shopping_mall"],"placeId":"ChIJa4tLQBJYXz4R7dnT6xGfyTE"}}

DirectionsComputeRouteModel directionsComputeRouteModelFromJson(String str) => DirectionsComputeRouteModel.fromJson(json.decode(str));
String directionsComputeRouteModelToJson(DirectionsComputeRouteModel data) => json.encode(data.toJson());
class DirectionsComputeRouteModel {
  DirectionsComputeRouteModel({
      List<Routes>? routes, 
      GeocodingResults? geocodingResults,}){
    _routes = routes;
    _geocodingResults = geocodingResults;
}

  DirectionsComputeRouteModel.fromJson(dynamic json) {
    if (json['routes'] != null) {
      _routes = [];
      json['routes'].forEach((v) {
        _routes?.add(Routes.fromJson(v));
      });
    }
    _geocodingResults = json['geocodingResults'] != null ? GeocodingResults.fromJson(json['geocodingResults']) : null;
  }
  List<Routes>? _routes;
  GeocodingResults? _geocodingResults;
DirectionsComputeRouteModel copyWith({  List<Routes>? routes,
  GeocodingResults? geocodingResults,
}) => DirectionsComputeRouteModel(  routes: routes ?? _routes,
  geocodingResults: geocodingResults ?? _geocodingResults,
);
  List<Routes>? get routes => _routes;
  GeocodingResults? get geocodingResults => _geocodingResults;

  List<PointLatLng> get polylinePoints => routes != null &&
  routes!.isNotEmpty &&
  routes!.first.polyline?.encodedPolyline != null? PolylinePoints().decodePolyline(
  "${routes!.first.polyline?.encodedPolyline}"):<PointLatLng>[];

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_routes != null) {
      map['routes'] = _routes?.map((v) => v.toJson()).toList();
    }
    if (_geocodingResults != null) {
      map['geocodingResults'] = _geocodingResults?.toJson();
    }
    return map;
  }

}

/// origin : {"geocoderStatus":{},"type":["establishment","local_government_office","point_of_interest"],"placeId":"ChIJLZQeBrn39T4R8Rn-YMbqyw8"}
/// destination : {"geocoderStatus":{},"type":["establishment","point_of_interest","shopping_mall"],"placeId":"ChIJa4tLQBJYXz4R7dnT6xGfyTE"}

GeocodingResults geocodingResultsFromJson(String str) => GeocodingResults.fromJson(json.decode(str));
String geocodingResultsToJson(GeocodingResults data) => json.encode(data.toJson());
class GeocodingResults {
  GeocodingResults({
      Origin? origin, 
      Destination? destination,}){
    _origin = origin;
    _destination = destination;
}

  GeocodingResults.fromJson(dynamic json) {
    _origin = json['origin'] != null ? Origin.fromJson(json['origin']) : null;
    _destination = json['destination'] != null ? Destination.fromJson(json['destination']) : null;
  }
  Origin? _origin;
  Destination? _destination;
GeocodingResults copyWith({  Origin? origin,
  Destination? destination,
}) => GeocodingResults(  origin: origin ?? _origin,
  destination: destination ?? _destination,
);
  Origin? get origin => _origin;
  Destination? get destination => _destination;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_origin != null) {
      map['origin'] = _origin?.toJson();
    }
    if (_destination != null) {
      map['destination'] = _destination?.toJson();
    }
    return map;
  }

}

/// geocoderStatus : {}
/// type : ["establishment","point_of_interest","shopping_mall"]
/// placeId : "ChIJa4tLQBJYXz4R7dnT6xGfyTE"

Destination destinationFromJson(String str) => Destination.fromJson(json.decode(str));
String destinationToJson(Destination data) => json.encode(data.toJson());
class Destination {
  Destination({
      dynamic geocoderStatus, 
      List<String>? type, 
      String? placeId,}){
    _geocoderStatus = geocoderStatus;
    _type = type;
    _placeId = placeId;
}

  Destination.fromJson(dynamic json) {
    _geocoderStatus = json['geocoderStatus'];
    _type = json['type'] != null ? json['type'].cast<String>() : [];
    _placeId = json['placeId'];
  }
  dynamic _geocoderStatus;
  List<String>? _type;
  String? _placeId;
Destination copyWith({  dynamic geocoderStatus,
  List<String>? type,
  String? placeId,
}) => Destination(  geocoderStatus: geocoderStatus ?? _geocoderStatus,
  type: type ?? _type,
  placeId: placeId ?? _placeId,
);
  dynamic get geocoderStatus => _geocoderStatus;
  List<String>? get type => _type;
  String? get placeId => _placeId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['geocoderStatus'] = _geocoderStatus;
    map['type'] = _type;
    map['placeId'] = _placeId;
    return map;
  }

}

/// geocoderStatus : {}
/// type : ["establishment","local_government_office","point_of_interest"]
/// placeId : "ChIJLZQeBrn39T4R8Rn-YMbqyw8"

Origin originFromJson(String str) => Origin.fromJson(json.decode(str));
String originToJson(Origin data) => json.encode(data.toJson());
class Origin {
  Origin({
      dynamic geocoderStatus, 
      List<String>? type, 
      String? placeId,}){
    _geocoderStatus = geocoderStatus;
    _type = type;
    _placeId = placeId;
}

  Origin.fromJson(dynamic json) {
    _geocoderStatus = json['geocoderStatus'];
    _type = json['type'] != null ? json['type'].cast<String>() : [];
    _placeId = json['placeId'];
  }
  dynamic _geocoderStatus;
  List<String>? _type;
  String? _placeId;
Origin copyWith({  dynamic geocoderStatus,
  List<String>? type,
  String? placeId,
}) => Origin(  geocoderStatus: geocoderStatus ?? _geocoderStatus,
  type: type ?? _type,
  placeId: placeId ?? _placeId,
);
  dynamic get geocoderStatus => _geocoderStatus;
  List<String>? get type => _type;
  String? get placeId => _placeId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['geocoderStatus'] = _geocoderStatus;
    map['type'] = _type;
    map['placeId'] = _placeId;
    return map;
  }

}

/// legs : [{"distanceMeters":5208,"duration":"4217s","staticDuration":"4217s","polyline":{"encodedPolyline":"st_zCmezqI`@Lm@zBMb@d@CLHBBBB@DDL[nCGh@OrAMhAMnAEj@Cd@Ef@Ch@IrB?RCf@A`@?t@HXDJBJHHAP?TAfC?tGAV?lAAjCBpC?h@?@@nA?T?P@fA@D@f@BnABR@VDr@@Z@VBT?L@@?@?F@F?FB^BTB`@Fv@BR@PLnADd@Db@LpAHp@h@dEHz@ZrCpA`JF`@x@pGb@nDNlAPrAPlANdA|BxPvAfLf@`E~@pGPpAf@dE^xCz@xF@HF\\r@dFr@zEl@~Dt@jFjBdLIn@ETIRIHEDEDIFEBGBIB{IdB_C`@I@YF_@JOBe@Ng@RQDKBO?QCM?G?K?qDcBO[IQCKAI?IAM@MBOCWAEACACGGGEIEUKUIQGA?CAA?C?C?MBSDA?C?C?AACACCM[A?A??AA?A?AAA??AA??AAA?A?A?AA??A@A?A?A?AACEEKQUMgAi@]Q_@GGAWEYO]MQIKECC"},"startLocation":{"latLng":{"latitude":25.398659300000002,"longitude":55.5171901}},"endLocation":{"latLng":{"latitude":25.4003335,"longitude":55.4779461}},"steps":[{"distanceMeters":20,"staticDuration":"16s","polyline":{"encodedPolyline":"st_zCmezqI`@L"},"startLocation":{"latLng":{"latitude":25.398659300000002,"longitude":55.5171901}},"endLocation":{"latLng":{"latitude":25.3984921,"longitude":55.5171194}},"navigationInstruction":{"maneuver":"DEPART","instructions":"الاتجاه نحو الجنوب"},"localizedValues":{"distance":{"text":"20 م"},"staticDuration":{"text":"1 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":87,"staticDuration":"72s","polyline":{"encodedPolyline":"qs_zC_ezqIm@zBMb@"},"startLocation":{"latLng":{"latitude":25.3984921,"longitude":55.5171194}},"endLocation":{"latLng":{"latitude":25.3987895,"longitude":55.516321000000005}},"navigationInstruction":{"maneuver":"TURN_RIGHT","instructions":"الاتجاه نحو  اليمين"},"localizedValues":{"distance":{"text":"87 م"},"staticDuration":{"text":"1 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":21,"staticDuration":"15s","polyline":{"encodedPolyline":"mu_zC_`zqId@C"},"startLocation":{"latLng":{"latitude":25.3987895,"longitude":55.516321000000005}},"endLocation":{"latLng":{"latitude":25.398599599999997,"longitude":55.516342599999994}},"navigationInstruction":{"maneuver":"TURN_LEFT","instructions":"الاتجاه نحو اليسار"},"localizedValues":{"distance":{"text":"21 م"},"staticDuration":{"text":"1 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":494,"staticDuration":"415s","polyline":{"encodedPolyline":"gt_zCc`zqILHBBBB@DDL[nCGh@OrAMhAMnAEj@Cd@Ef@Ch@IrB?RCf@A`@?t@HXDJBJHH"},"startLocation":{"latLng":{"latitude":25.398599599999997,"longitude":55.516342599999994}},"endLocation":{"latLng":{"latitude":25.398884799999998,"longitude":55.5115889}},"navigationInstruction":{"maneuver":"TURN_RIGHT","instructions":"الاتجاه نحو  اليمين"},"localizedValues":{"distance":{"text":"0.5 كم"},"staticDuration":{"text":"7 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":3558,"staticDuration":"2832s","polyline":{"encodedPolyline":"_v_zCmbyqIAP?TAfC?tGAV?lAAjCBpC?h@?@@nA?T?P@fA@D@f@BnABR@VDr@@Z@VBT?L@@?@?F@F?FB^BTB`@Fv@BR@PLnADd@Db@LpAHp@h@dEHz@ZrCpA`JF`@x@pGb@nDNlAPrAPlANdA|BxPvAfLf@`E~@pGPpAf@dE^xCz@xF@HF\\r@dFr@zEl@~Dt@jFjBdL"},"startLocation":{"latLng":{"latitude":25.398884799999998,"longitude":55.5115889}},"endLocation":{"latLng":{"latitude":25.392732799999997,"longitude":55.476972599999996}},"navigationInstruction":{"maneuver":"TURN_SLIGHT_RIGHT","instructions":"إلى اليمين قليلاً إلى شارع الشيخ زايد/شارع الشيخ مكتوم بن راشد"},"localizedValues":{"distance":{"text":"3.6 كم"},"staticDuration":{"text":"47 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":510,"staticDuration":"417s","polyline":{"encodedPolyline":"qo~yCajrqIIn@ETIRIHEDEDIFEBGBIB{IdB_C`@I@YF_@JOBe@Ng@RQDKBO?QCM?G?K?"},"startLocation":{"latLng":{"latitude":25.392732799999997,"longitude":55.476972599999996}},"endLocation":{"latLng":{"latitude":25.396822699999998,"longitude":55.4752893}},"navigationInstruction":{"maneuver":"TURN_SLIGHT_RIGHT","instructions":"الاتجاه نحو  اليمين قليلاً"},"localizedValues":{"distance":{"text":"0.5 كم"},"staticDuration":{"text":"7 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":111,"staticDuration":"90s","polyline":{"encodedPolyline":"ci_zCq_rqIqDcB"},"startLocation":{"latLng":{"latitude":25.396822699999998,"longitude":55.4752893}},"endLocation":{"latLng":{"latitude":25.3977139,"longitude":55.4757854}},"navigationInstruction":{"maneuver":"NAME_CHANGE","instructions":"تابع السير في شارع الاتحاد/إ11"},"localizedValues":{"distance":{"text":"0.1 كم"},"staticDuration":{"text":"2 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":66,"staticDuration":"65s","polyline":{"encodedPolyline":"un_zCubrqIO[IQCKAI?IAM@MBO"},"startLocation":{"latLng":{"latitude":25.3977139,"longitude":55.4757854}},"endLocation":{"latLng":{"latitude":25.3978468,"longitude":55.4763995}},"navigationInstruction":{"maneuver":"TURN_SLIGHT_RIGHT","instructions":"الاتجاه نحو  اليمين قليلاً"},"localizedValues":{"distance":{"text":"66 م"},"staticDuration":{"text":"1 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":341,"staticDuration":"295s","polyline":{"encodedPolyline":"qo_zCofrqICWAEACACGGGEIEUKUIQGA?CAA?C?C?MBSDA?C?C?AACACCM[A?A??AA?A?AAA??AA??AAA?A?A?AA??A@A?A?A?AACEEKQUMgAi@]Q_@GGAWEYO]MQIKECC"},"startLocation":{"latLng":{"latitude":25.3978468,"longitude":55.4763995}},"endLocation":{"latLng":{"latitude":25.4003335,"longitude":55.4779461}},"navigationInstruction":{"maneuver":"TURN_SLIGHT_LEFT","instructions":"الاتجاه نحو  اليسار قليلاً\nمرور خلال دوّار واحد\nستكون الوجهة إلى يمين الطريق"},"localizedValues":{"distance":{"text":"0.3 كم"},"staticDuration":{"text":"5 دقيقة"}},"travelMode":"WALK"}],"localizedValues":{"distance":{"text":"5.2 كم"},"duration":{"text":"1 ساعة 10 دقيقة"},"staticDuration":{"text":"1 ساعة 10 دقيقة"}}}]
/// distanceMeters : 5208
/// duration : "4217s"
/// staticDuration : "4217s"
/// polyline : {"encodedPolyline":"st_zCmezqI`@Lm@zBMb@d@CLHBBBB@DDL[nCGh@OrAMhAMnAEj@Cd@Ef@Ch@IrB?RCf@A`@?t@HXDJBJHHAP?TAfC?tGAV?lAAjCBpC?h@?@@nA?T?P@fA@D@f@BnABR@VDr@@Z@VBT?L@@?@?F@F?FB^BTB`@Fv@BR@PLnADd@Db@LpAHp@h@dEHz@ZrCpA`JF`@x@pGb@nDNlAPrAPlANdA|BxPvAfLf@`E~@pGPpAf@dE^xCz@xF@HF\\r@dFr@zEl@~Dt@jFjBdLIn@ETIRIHEDEDIFEBGBIB{IdB_C`@I@YF_@JOBe@Ng@RQDKBO?QCM?G?K?qDcBO[IQCKAI?IAM@MBOCWAEACACGGGEIEUKUIQGA?CAA?C?C?MBSDA?C?C?AACACCM[A?A??AA?A?AAA??AA??AAA?A?A?AA??A@A?A?A?AACEEKQUMgAi@]Q_@GGAWEYO]MQIKECC"}
/// description : "شارع الشيخ زايد/شارع الشيخ مكتوم بن راشد"
/// viewport : {"low":{"latitude":25.392732799999997,"longitude":55.4752723},"high":{"latitude":25.4003335,"longitude":55.5171901}}
/// travelAdvisory : {}
/// localizedValues : {"distance":{"text":"5.2 كم"},"duration":{"text":"1 ساعة 10 دقيقة"},"staticDuration":{"text":"1 ساعة 10 دقيقة"}}
/// routeLabels : ["DEFAULT_ROUTE"]

Routes routesFromJson(String str) => Routes.fromJson(json.decode(str));
String routesToJson(Routes data) => json.encode(data.toJson());
class Routes {
  Routes({
      List<Legs>? legs, 
      num? distanceMeters, 
      String? duration, 
      String? staticDuration, 
      Polyline? polyline, 
      String? description, 
      Viewport? viewport, 
      dynamic travelAdvisory, 
      LocalizedValues? localizedValues, 
      List<String>? routeLabels,}){
    _legs = legs;
    _distanceMeters = distanceMeters;
    _duration = duration;
    _staticDuration = staticDuration;
    _polyline = polyline;
    _description = description;
    _viewport = viewport;
    _travelAdvisory = travelAdvisory;
    _localizedValues = localizedValues;
    _routeLabels = routeLabels;
}

  Routes.fromJson(dynamic json) {
    if (json['legs'] != null) {
      _legs = [];
      json['legs'].forEach((v) {
        _legs?.add(Legs.fromJson(v));
      });
    }
    _distanceMeters = json['distanceMeters'];
    _duration = json['duration'];
    _staticDuration = json['staticDuration'];
    _polyline = json['polyline'] != null ? Polyline.fromJson(json['polyline']) : null;
    _description = json['description'];
    _viewport = json['viewport'] != null ? Viewport.fromJson(json['viewport']) : null;
    _travelAdvisory = json['travelAdvisory'];
    _localizedValues = json['localizedValues'] != null ? LocalizedValues.fromJson(json['localizedValues']) : null;
    _routeLabels = json['routeLabels'] != null ? json['routeLabels'].cast<String>() : [];
  }
  List<Legs>? _legs;
  num? _distanceMeters;
  String? _duration;
  String? _staticDuration;
  Polyline? _polyline;
  String? _description;
  Viewport? _viewport;
  dynamic _travelAdvisory;
  LocalizedValues? _localizedValues;
  List<String>? _routeLabels;
Routes copyWith({  List<Legs>? legs,
  num? distanceMeters,
  String? duration,
  String? staticDuration,
  Polyline? polyline,
  String? description,
  Viewport? viewport,
  dynamic travelAdvisory,
  LocalizedValues? localizedValues,
  List<String>? routeLabels,
}) => Routes(  legs: legs ?? _legs,
  distanceMeters: distanceMeters ?? _distanceMeters,
  duration: duration ?? _duration,
  staticDuration: staticDuration ?? _staticDuration,
  polyline: polyline ?? _polyline,
  description: description ?? _description,
  viewport: viewport ?? _viewport,
  travelAdvisory: travelAdvisory ?? _travelAdvisory,
  localizedValues: localizedValues ?? _localizedValues,
  routeLabels: routeLabels ?? _routeLabels,
);
  List<Legs>? get legs => _legs;
  num? get distanceMeters => _distanceMeters;
  String? get duration => _duration;
  String? get staticDuration => _staticDuration;
  Polyline? get polyline => _polyline;
  String? get description => _description;
  Viewport? get viewport => _viewport;
  dynamic get travelAdvisory => _travelAdvisory;
  LocalizedValues? get localizedValues => _localizedValues;
  List<String>? get routeLabels => _routeLabels;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_legs != null) {
      map['legs'] = _legs?.map((v) => v.toJson()).toList();
    }
    map['distanceMeters'] = _distanceMeters;
    map['duration'] = _duration;
    map['staticDuration'] = _staticDuration;
    if (_polyline != null) {
      map['polyline'] = _polyline?.toJson();
    }
    map['description'] = _description;
    if (_viewport != null) {
      map['viewport'] = _viewport?.toJson();
    }
    map['travelAdvisory'] = _travelAdvisory;
    if (_localizedValues != null) {
      map['localizedValues'] = _localizedValues?.toJson();
    }
    map['routeLabels'] = _routeLabels;
    return map;
  }

}

/// distance : {"text":"5.2 كم"}
/// duration : {"text":"1 ساعة 10 دقيقة"}
/// staticDuration : {"text":"1 ساعة 10 دقيقة"}

LocalizedValues localizedValuesFromJson(String str) => LocalizedValues.fromJson(json.decode(str));
String localizedValuesToJson(LocalizedValues data) => json.encode(data.toJson());
class LocalizedValues {
  LocalizedValues({
      Distance? distance, 
      Duration? duration, 
      StaticDuration? staticDuration,}){
    _distance = distance;
    _duration = duration;
    _staticDuration = staticDuration;
}

  LocalizedValues.fromJson(dynamic json) {
    _distance = json['distance'] != null ? Distance.fromJson(json['distance']) : null;
    _duration = json['duration'] != null ? Duration.fromJson(json['duration']) : null;
    _staticDuration = json['staticDuration'] != null ? StaticDuration.fromJson(json['staticDuration']) : null;
  }
  Distance? _distance;
  Duration? _duration;
  StaticDuration? _staticDuration;
LocalizedValues copyWith({  Distance? distance,
  Duration? duration,
  StaticDuration? staticDuration,
}) => LocalizedValues(  distance: distance ?? _distance,
  duration: duration ?? _duration,
  staticDuration: staticDuration ?? _staticDuration,
);
  Distance? get distance => _distance;
  Duration? get duration => _duration;
  StaticDuration? get staticDuration => _staticDuration;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_distance != null) {
      map['distance'] = _distance?.toJson();
    }
    if (_duration != null) {
      map['duration'] = _duration?.toJson();
    }
    if (_staticDuration != null) {
      map['staticDuration'] = _staticDuration?.toJson();
    }
    return map;
  }

}

/// text : "1 ساعة 10 دقيقة"

StaticDuration staticDurationFromJson(String str) => StaticDuration.fromJson(json.decode(str));
String staticDurationToJson(StaticDuration data) => json.encode(data.toJson());
class StaticDuration {
  StaticDuration({
      String? text,}){
    _text = text;
}

  StaticDuration.fromJson(dynamic json) {
    _text = json['text'];
  }
  String? _text;
StaticDuration copyWith({  String? text,
}) => StaticDuration(  text: text ?? _text,
);
  String? get text => _text;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    return map;
  }

}

/// text : "1 ساعة 10 دقيقة"

Duration durationFromJson(String str) => Duration.fromJson(json.decode(str));
String durationToJson(Duration data) => json.encode(data.toJson());
class Duration {
  Duration({
      String? text,}){
    _text = text;
}

  Duration.fromJson(dynamic json) {
    _text = json['text'];
  }
  String? _text;
Duration copyWith({  String? text,
}) => Duration(  text: text ?? _text,
);
  String? get text => _text;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    return map;
  }

}

/// text : "5.2 كم"

Distance distanceFromJson(String str) => Distance.fromJson(json.decode(str));
String distanceToJson(Distance data) => json.encode(data.toJson());
class Distance {
  Distance({
      String? text,}){
    _text = text;
}

  Distance.fromJson(dynamic json) {
    _text = json['text'];
  }
  String? _text;
Distance copyWith({  String? text,
}) => Distance(  text: text ?? _text,
);
  String? get text => _text;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    return map;
  }

}

/// low : {"latitude":25.392732799999997,"longitude":55.4752723}
/// high : {"latitude":25.4003335,"longitude":55.5171901}

Viewport viewportFromJson(String str) => Viewport.fromJson(json.decode(str));
String viewportToJson(Viewport data) => json.encode(data.toJson());
class Viewport {
  Viewport({
      Low? low, 
      High? high,}){
    _low = low;
    _high = high;
}

  Viewport.fromJson(dynamic json) {
    _low = json['low'] != null ? Low.fromJson(json['low']) : null;
    _high = json['high'] != null ? High.fromJson(json['high']) : null;
  }
  Low? _low;
  High? _high;
Viewport copyWith({  Low? low,
  High? high,
}) => Viewport(  low: low ?? _low,
  high: high ?? _high,
);
  Low? get low => _low;
  High? get high => _high;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_low != null) {
      map['low'] = _low?.toJson();
    }
    if (_high != null) {
      map['high'] = _high?.toJson();
    }
    return map;
  }

}

/// latitude : 25.4003335
/// longitude : 55.5171901

High highFromJson(String str) => High.fromJson(json.decode(str));
String highToJson(High data) => json.encode(data.toJson());
class High {
  High({
      num? latitude, 
      num? longitude,}){
    _latitude = latitude;
    _longitude = longitude;
}

  High.fromJson(dynamic json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
  }
  num? _latitude;
  num? _longitude;
High copyWith({  num? latitude,
  num? longitude,
}) => High(  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
);
  num? get latitude => _latitude;
  num? get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    return map;
  }

}

/// latitude : 25.392732799999997
/// longitude : 55.4752723

Low lowFromJson(String str) => Low.fromJson(json.decode(str));
String lowToJson(Low data) => json.encode(data.toJson());
class Low {
  Low({
      num? latitude, 
      num? longitude,}){
    _latitude = latitude;
    _longitude = longitude;
}

  Low.fromJson(dynamic json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
  }
  num? _latitude;
  num? _longitude;
Low copyWith({  num? latitude,
  num? longitude,
}) => Low(  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
);
  num? get latitude => _latitude;
  num? get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    return map;
  }

}

/// encodedPolyline : "st_zCmezqI`@Lm@zBMb@d@CLHBBBB@DDL[nCGh@OrAMhAMnAEj@Cd@Ef@Ch@IrB?RCf@A`@?t@HXDJBJHHAP?TAfC?tGAV?lAAjCBpC?h@?@@nA?T?P@fA@D@f@BnABR@VDr@@Z@VBT?L@@?@?F@F?FB^BTB`@Fv@BR@PLnADd@Db@LpAHp@h@dEHz@ZrCpA`JF`@x@pGb@nDNlAPrAPlANdA|BxPvAfLf@`E~@pGPpAf@dE^xCz@xF@HF\\r@dFr@zEl@~Dt@jFjBdLIn@ETIRIHEDEDIFEBGBIB{IdB_C`@I@YF_@JOBe@Ng@RQDKBO?QCM?G?K?qDcBO[IQCKAI?IAM@MBOCWAEACACGGGEIEUKUIQGA?CAA?C?C?MBSDA?C?C?AACACCM[A?A??AA?A?AAA??AA??AAA?A?A?AA??A@A?A?A?AACEEKQUMgAi@]Q_@GGAWEYO]MQIKECC"

Polyline polylineFromJson(String str) => Polyline.fromJson(json.decode(str));
String polylineToJson(Polyline data) => json.encode(data.toJson());
class Polyline {
  Polyline({
      String? encodedPolyline,}){
    _encodedPolyline = encodedPolyline;
}

  Polyline.fromJson(dynamic json) {
    _encodedPolyline = json['encodedPolyline'];
  }
  String? _encodedPolyline;
Polyline copyWith({  String? encodedPolyline,
}) => Polyline(  encodedPolyline: encodedPolyline ?? _encodedPolyline,
);
  String? get encodedPolyline => _encodedPolyline;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['encodedPolyline'] = _encodedPolyline;
    return map;
  }

}

/// distanceMeters : 5208
/// duration : "4217s"
/// staticDuration : "4217s"
/// polyline : {"encodedPolyline":"st_zCmezqI`@Lm@zBMb@d@CLHBBBB@DDL[nCGh@OrAMhAMnAEj@Cd@Ef@Ch@IrB?RCf@A`@?t@HXDJBJHHAP?TAfC?tGAV?lAAjCBpC?h@?@@nA?T?P@fA@D@f@BnABR@VDr@@Z@VBT?L@@?@?F@F?FB^BTB`@Fv@BR@PLnADd@Db@LpAHp@h@dEHz@ZrCpA`JF`@x@pGb@nDNlAPrAPlANdA|BxPvAfLf@`E~@pGPpAf@dE^xCz@xF@HF\\r@dFr@zEl@~Dt@jFjBdLIn@ETIRIHEDEDIFEBGBIB{IdB_C`@I@YF_@JOBe@Ng@RQDKBO?QCM?G?K?qDcBO[IQCKAI?IAM@MBOCWAEACACGGGEIEUKUIQGA?CAA?C?C?MBSDA?C?C?AACACCM[A?A??AA?A?AAA??AA??AAA?A?A?AA??A@A?A?A?AACEEKQUMgAi@]Q_@GGAWEYO]MQIKECC"}
/// startLocation : {"latLng":{"latitude":25.398659300000002,"longitude":55.5171901}}
/// endLocation : {"latLng":{"latitude":25.4003335,"longitude":55.4779461}}
/// steps : [{"distanceMeters":20,"staticDuration":"16s","polyline":{"encodedPolyline":"st_zCmezqI`@L"},"startLocation":{"latLng":{"latitude":25.398659300000002,"longitude":55.5171901}},"endLocation":{"latLng":{"latitude":25.3984921,"longitude":55.5171194}},"navigationInstruction":{"maneuver":"DEPART","instructions":"الاتجاه نحو الجنوب"},"localizedValues":{"distance":{"text":"20 م"},"staticDuration":{"text":"1 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":87,"staticDuration":"72s","polyline":{"encodedPolyline":"qs_zC_ezqIm@zBMb@"},"startLocation":{"latLng":{"latitude":25.3984921,"longitude":55.5171194}},"endLocation":{"latLng":{"latitude":25.3987895,"longitude":55.516321000000005}},"navigationInstruction":{"maneuver":"TURN_RIGHT","instructions":"الاتجاه نحو  اليمين"},"localizedValues":{"distance":{"text":"87 م"},"staticDuration":{"text":"1 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":21,"staticDuration":"15s","polyline":{"encodedPolyline":"mu_zC_`zqId@C"},"startLocation":{"latLng":{"latitude":25.3987895,"longitude":55.516321000000005}},"endLocation":{"latLng":{"latitude":25.398599599999997,"longitude":55.516342599999994}},"navigationInstruction":{"maneuver":"TURN_LEFT","instructions":"الاتجاه نحو اليسار"},"localizedValues":{"distance":{"text":"21 م"},"staticDuration":{"text":"1 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":494,"staticDuration":"415s","polyline":{"encodedPolyline":"gt_zCc`zqILHBBBB@DDL[nCGh@OrAMhAMnAEj@Cd@Ef@Ch@IrB?RCf@A`@?t@HXDJBJHH"},"startLocation":{"latLng":{"latitude":25.398599599999997,"longitude":55.516342599999994}},"endLocation":{"latLng":{"latitude":25.398884799999998,"longitude":55.5115889}},"navigationInstruction":{"maneuver":"TURN_RIGHT","instructions":"الاتجاه نحو  اليمين"},"localizedValues":{"distance":{"text":"0.5 كم"},"staticDuration":{"text":"7 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":3558,"staticDuration":"2832s","polyline":{"encodedPolyline":"_v_zCmbyqIAP?TAfC?tGAV?lAAjCBpC?h@?@@nA?T?P@fA@D@f@BnABR@VDr@@Z@VBT?L@@?@?F@F?FB^BTB`@Fv@BR@PLnADd@Db@LpAHp@h@dEHz@ZrCpA`JF`@x@pGb@nDNlAPrAPlANdA|BxPvAfLf@`E~@pGPpAf@dE^xCz@xF@HF\\r@dFr@zEl@~Dt@jFjBdL"},"startLocation":{"latLng":{"latitude":25.398884799999998,"longitude":55.5115889}},"endLocation":{"latLng":{"latitude":25.392732799999997,"longitude":55.476972599999996}},"navigationInstruction":{"maneuver":"TURN_SLIGHT_RIGHT","instructions":"إلى اليمين قليلاً إلى شارع الشيخ زايد/شارع الشيخ مكتوم بن راشد"},"localizedValues":{"distance":{"text":"3.6 كم"},"staticDuration":{"text":"47 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":510,"staticDuration":"417s","polyline":{"encodedPolyline":"qo~yCajrqIIn@ETIRIHEDEDIFEBGBIB{IdB_C`@I@YF_@JOBe@Ng@RQDKBO?QCM?G?K?"},"startLocation":{"latLng":{"latitude":25.392732799999997,"longitude":55.476972599999996}},"endLocation":{"latLng":{"latitude":25.396822699999998,"longitude":55.4752893}},"navigationInstruction":{"maneuver":"TURN_SLIGHT_RIGHT","instructions":"الاتجاه نحو  اليمين قليلاً"},"localizedValues":{"distance":{"text":"0.5 كم"},"staticDuration":{"text":"7 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":111,"staticDuration":"90s","polyline":{"encodedPolyline":"ci_zCq_rqIqDcB"},"startLocation":{"latLng":{"latitude":25.396822699999998,"longitude":55.4752893}},"endLocation":{"latLng":{"latitude":25.3977139,"longitude":55.4757854}},"navigationInstruction":{"maneuver":"NAME_CHANGE","instructions":"تابع السير في شارع الاتحاد/إ11"},"localizedValues":{"distance":{"text":"0.1 كم"},"staticDuration":{"text":"2 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":66,"staticDuration":"65s","polyline":{"encodedPolyline":"un_zCubrqIO[IQCKAI?IAM@MBO"},"startLocation":{"latLng":{"latitude":25.3977139,"longitude":55.4757854}},"endLocation":{"latLng":{"latitude":25.3978468,"longitude":55.4763995}},"navigationInstruction":{"maneuver":"TURN_SLIGHT_RIGHT","instructions":"الاتجاه نحو  اليمين قليلاً"},"localizedValues":{"distance":{"text":"66 م"},"staticDuration":{"text":"1 دقيقة"}},"travelMode":"WALK"},{"distanceMeters":341,"staticDuration":"295s","polyline":{"encodedPolyline":"qo_zCofrqICWAEACACGGGEIEUKUIQGA?CAA?C?C?MBSDA?C?C?AACACCM[A?A??AA?A?AAA??AA??AAA?A?A?AA??A@A?A?A?AACEEKQUMgAi@]Q_@GGAWEYO]MQIKECC"},"startLocation":{"latLng":{"latitude":25.3978468,"longitude":55.4763995}},"endLocation":{"latLng":{"latitude":25.4003335,"longitude":55.4779461}},"navigationInstruction":{"maneuver":"TURN_SLIGHT_LEFT","instructions":"الاتجاه نحو  اليسار قليلاً\nمرور خلال دوّار واحد\nستكون الوجهة إلى يمين الطريق"},"localizedValues":{"distance":{"text":"0.3 كم"},"staticDuration":{"text":"5 دقيقة"}},"travelMode":"WALK"}]
/// localizedValues : {"distance":{"text":"5.2 كم"},"duration":{"text":"1 ساعة 10 دقيقة"},"staticDuration":{"text":"1 ساعة 10 دقيقة"}}

Legs legsFromJson(String str) => Legs.fromJson(json.decode(str));
String legsToJson(Legs data) => json.encode(data.toJson());
class Legs {
  Legs({
      num? distanceMeters, 
      String? duration, 
      String? staticDuration, 
      Polyline? polyline, 
      StartLocation? startLocation, 
      EndLocation? endLocation, 
      List<Steps>? steps, 
      LocalizedValues? localizedValues,}){
    _distanceMeters = distanceMeters;
    _duration = duration;
    _staticDuration = staticDuration;
    _polyline = polyline;
    _startLocation = startLocation;
    _endLocation = endLocation;
    _steps = steps;
    _localizedValues = localizedValues;
}

  Legs.fromJson(dynamic json) {
    _distanceMeters = json['distanceMeters'];
    _duration = json['duration'];
    _staticDuration = json['staticDuration'];
    _polyline = json['polyline'] != null ? Polyline.fromJson(json['polyline']) : null;
    _startLocation = json['startLocation'] != null ? StartLocation.fromJson(json['startLocation']) : null;
    _endLocation = json['endLocation'] != null ? EndLocation.fromJson(json['endLocation']) : null;
    if (json['steps'] != null) {
      _steps = [];
      json['steps'].forEach((v) {
        _steps?.add(Steps.fromJson(v));
      });
    }
    _localizedValues = json['localizedValues'] != null ? LocalizedValues.fromJson(json['localizedValues']) : null;
  }
  num? _distanceMeters;
  String? _duration;
  String? _staticDuration;
  Polyline? _polyline;
  StartLocation? _startLocation;
  EndLocation? _endLocation;
  List<Steps>? _steps;
  LocalizedValues? _localizedValues;
Legs copyWith({  num? distanceMeters,
  String? duration,
  String? staticDuration,
  Polyline? polyline,
  StartLocation? startLocation,
  EndLocation? endLocation,
  List<Steps>? steps,
  LocalizedValues? localizedValues,
}) => Legs(  distanceMeters: distanceMeters ?? _distanceMeters,
  duration: duration ?? _duration,
  staticDuration: staticDuration ?? _staticDuration,
  polyline: polyline ?? _polyline,
  startLocation: startLocation ?? _startLocation,
  endLocation: endLocation ?? _endLocation,
  steps: steps ?? _steps,
  localizedValues: localizedValues ?? _localizedValues,
);
  num? get distanceMeters => _distanceMeters;
  String? get duration => _duration;
  String? get staticDuration => _staticDuration;
  Polyline? get polyline => _polyline;
  StartLocation? get startLocation => _startLocation;
  EndLocation? get endLocation => _endLocation;
  List<Steps>? get steps => _steps;
  LocalizedValues? get localizedValues => _localizedValues;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['distanceMeters'] = _distanceMeters;
    map['duration'] = _duration;
    map['staticDuration'] = _staticDuration;
    if (_polyline != null) {
      map['polyline'] = _polyline?.toJson();
    }
    if (_startLocation != null) {
      map['startLocation'] = _startLocation?.toJson();
    }
    if (_endLocation != null) {
      map['endLocation'] = _endLocation?.toJson();
    }
    if (_steps != null) {
      map['steps'] = _steps?.map((v) => v.toJson()).toList();
    }
    if (_localizedValues != null) {
      map['localizedValues'] = _localizedValues?.toJson();
    }
    return map;
  }

}

/// distanceMeters : 20
/// staticDuration : "16s"
/// polyline : {"encodedPolyline":"st_zCmezqI`@L"}
/// startLocation : {"latLng":{"latitude":25.398659300000002,"longitude":55.5171901}}
/// endLocation : {"latLng":{"latitude":25.3984921,"longitude":55.5171194}}
/// navigationInstruction : {"maneuver":"DEPART","instructions":"الاتجاه نحو الجنوب"}
/// localizedValues : {"distance":{"text":"20 م"},"staticDuration":{"text":"1 دقيقة"}}
/// travelMode : "WALK"

Steps stepsFromJson(String str) => Steps.fromJson(json.decode(str));
String stepsToJson(Steps data) => json.encode(data.toJson());
class Steps {
  Steps({
      num? distanceMeters, 
      String? staticDuration, 
      Polyline? polyline, 
      StartLocation? startLocation, 
      EndLocation? endLocation, 
      NavigationInstruction? navigationInstruction, 
      LocalizedValues? localizedValues, 
      String? travelMode,}){
    _distanceMeters = distanceMeters;
    _staticDuration = staticDuration;
    _polyline = polyline;
    _startLocation = startLocation;
    _endLocation = endLocation;
    _navigationInstruction = navigationInstruction;
    _localizedValues = localizedValues;
    _travelMode = travelMode;
}

  Steps.fromJson(dynamic json) {
    _distanceMeters = json['distanceMeters'];
    _staticDuration = json['staticDuration'];
    _polyline = json['polyline'] != null ? Polyline.fromJson(json['polyline']) : null;
    _startLocation = json['startLocation'] != null ? StartLocation.fromJson(json['startLocation']) : null;
    _endLocation = json['endLocation'] != null ? EndLocation.fromJson(json['endLocation']) : null;
    _navigationInstruction = json['navigationInstruction'] != null ? NavigationInstruction.fromJson(json['navigationInstruction']) : null;
    _localizedValues = json['localizedValues'] != null ? LocalizedValues.fromJson(json['localizedValues']) : null;
    _travelMode = json['travelMode'];
  }
  num? _distanceMeters;
  String? _staticDuration;
  Polyline? _polyline;
  StartLocation? _startLocation;
  EndLocation? _endLocation;
  NavigationInstruction? _navigationInstruction;
  LocalizedValues? _localizedValues;
  String? _travelMode;
Steps copyWith({  num? distanceMeters,
  String? staticDuration,
  Polyline? polyline,
  StartLocation? startLocation,
  EndLocation? endLocation,
  NavigationInstruction? navigationInstruction,
  LocalizedValues? localizedValues,
  String? travelMode,
}) => Steps(  distanceMeters: distanceMeters ?? _distanceMeters,
  staticDuration: staticDuration ?? _staticDuration,
  polyline: polyline ?? _polyline,
  startLocation: startLocation ?? _startLocation,
  endLocation: endLocation ?? _endLocation,
  navigationInstruction: navigationInstruction ?? _navigationInstruction,
  localizedValues: localizedValues ?? _localizedValues,
  travelMode: travelMode ?? _travelMode,
);
  num? get distanceMeters => _distanceMeters;
  String? get staticDuration => _staticDuration;
  Polyline? get polyline => _polyline;
  StartLocation? get startLocation => _startLocation;
  EndLocation? get endLocation => _endLocation;
  NavigationInstruction? get navigationInstruction => _navigationInstruction;
  LocalizedValues? get localizedValues => _localizedValues;
  String? get travelMode => _travelMode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['distanceMeters'] = _distanceMeters;
    map['staticDuration'] = _staticDuration;
    if (_polyline != null) {
      map['polyline'] = _polyline?.toJson();
    }
    if (_startLocation != null) {
      map['startLocation'] = _startLocation?.toJson();
    }
    if (_endLocation != null) {
      map['endLocation'] = _endLocation?.toJson();
    }
    if (_navigationInstruction != null) {
      map['navigationInstruction'] = _navigationInstruction?.toJson();
    }
    if (_localizedValues != null) {
      map['localizedValues'] = _localizedValues?.toJson();
    }
    map['travelMode'] = _travelMode;
    return map;
  }

}

/// maneuver : "DEPART"
/// instructions : "الاتجاه نحو الجنوب"

NavigationInstruction navigationInstructionFromJson(String str) => NavigationInstruction.fromJson(json.decode(str));
String navigationInstructionToJson(NavigationInstruction data) => json.encode(data.toJson());
class NavigationInstruction {
  NavigationInstruction({
      String? maneuver, 
      String? instructions,}){
    _maneuver = maneuver;
    _instructions = instructions;
}

  NavigationInstruction.fromJson(dynamic json) {
    _maneuver = json['maneuver'];
    _instructions = json['instructions'];
  }
  String? _maneuver;
  String? _instructions;
NavigationInstruction copyWith({  String? maneuver,
  String? instructions,
}) => NavigationInstruction(  maneuver: maneuver ?? _maneuver,
  instructions: instructions ?? _instructions,
);
  String? get maneuver => _maneuver;
  String? get instructions => _instructions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maneuver'] = _maneuver;
    map['instructions'] = _instructions;
    return map;
  }

}

/// latLng : {"latitude":25.3984921,"longitude":55.5171194}

EndLocation endLocationFromJson(String str) => EndLocation.fromJson(json.decode(str));
String endLocationToJson(EndLocation data) => json.encode(data.toJson());
class EndLocation {
  EndLocation({
      LatLng? latLng,}){
    _latLng = latLng;
}

  EndLocation.fromJson(dynamic json) {
    _latLng = json['latLng'] != null ? LatLng.fromJson(json['latLng']) : null;
  }
  LatLng? _latLng;
EndLocation copyWith({  LatLng? latLng,
}) => EndLocation(  latLng: latLng ?? _latLng,
);
  LatLng? get latLng => _latLng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_latLng != null) {
      map['latLng'] = _latLng?.toJson();
    }
    return map;
  }

}

/// latitude : 25.3984921
/// longitude : 55.5171194

LatLng latLngFromJson(String str) => LatLng.fromJson(json.decode(str));
String latLngToJson(LatLng data) => json.encode(data.toJson());
class LatLng {
  LatLng({
      num? latitude, 
      num? longitude,}){
    _latitude = latitude;
    _longitude = longitude;
}

  LatLng.fromJson(dynamic json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
  }
  num? _latitude;
  num? _longitude;
LatLng copyWith({  num? latitude,
  num? longitude,
}) => LatLng(  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
);
  num? get latitude => _latitude;
  num? get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    return map;
  }

}

/// latLng : {"latitude":25.398659300000002,"longitude":55.5171901}

StartLocation startLocationFromJson(String str) => StartLocation.fromJson(json.decode(str));
String startLocationToJson(StartLocation data) => json.encode(data.toJson());
class StartLocation {
  StartLocation({
      LatLng? latLng,}){
    _latLng = latLng;
}

  StartLocation.fromJson(dynamic json) {
    _latLng = json['latLng'] != null ? LatLng.fromJson(json['latLng']) : null;
  }
  LatLng? _latLng;
StartLocation copyWith({  LatLng? latLng,
}) => StartLocation(  latLng: latLng ?? _latLng,
);
  LatLng? get latLng => _latLng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_latLng != null) {
      map['latLng'] = _latLng?.toJson();
    }
    return map;
  }

}
