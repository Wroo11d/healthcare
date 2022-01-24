// To parse this JSON data, do
//
//     final hosptials = hosptialsFromJson(jsonString);

import 'dart:convert';

Hosptials hosptialsFromJson(String str) => Hosptials.fromJson(json.decode(str));

String hosptialsToJson(Hosptials data) => json.encode(data.toJson());

class Hosptials {
  Hosptials({
    this.id,
    this.image,
    this.type,
    this.publicHospitals,
  });

  String? id;
  String? image;
  String? type;
  List<PublicHospital>? publicHospitals;

  factory Hosptials.fromJson(Map<String, dynamic> json) => Hosptials(
    id: json["id"],
    image: json["image"],
    type: json["type"],
    publicHospitals: List<PublicHospital>.from(json["PublicHospitals"].map((x) => PublicHospital.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "type": type,
    "PublicHospitals": List<dynamic>.from(publicHospitals!.map((x) => x.toJson())),
  };
}

class PublicHospital {
  PublicHospital({
    this.id,
    this.image,
    this.name,
    this.location,
    this.time,
    this.days,
    this.beds,
    this.description,
  });

  String? id;
  String? image;
  String? name;
  String? location;
  String? time;
  String? days;
  int? beds;
  String? description;

  factory PublicHospital.fromJson(Map<String, dynamic> json) => PublicHospital(
    id: json["id"],
    image: json["image"],
    name: json["name"],
    location: json["location"],
    time: json["time"],
    days: json["days"],
    beds: json["beds"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "name": name,
    "location": location,
    "time": time,
    "days": days,
    "beds": beds,
    "description": description,
  };
}



// To parse this JSON data, do
//
//     final hosptialsPrivatly = hosptialsPrivatlyFromJson(jsonString);



HosptialsPrivatly hosptialsPrivatlyFromJson(String str) => HosptialsPrivatly.fromJson(json.decode(str));

String hosptialsPrivatlyToJson(HosptialsPrivatly data) => json.encode(data.toJson());

class HosptialsPrivatly {
  HosptialsPrivatly({
    this.id,
    this.image,
    this.type,
    this.privateHospitals,
  });

  String? id;
  String? image;
  String? type;
  List<PrivateHospital>? privateHospitals;

  factory HosptialsPrivatly.fromJson(Map<String, dynamic> json) => HosptialsPrivatly(
    id: json["id"],
    image: json["image"],
    type: json["type"],
    privateHospitals: List<PrivateHospital>.from(json["PrivateHospitals"].map((x) => PrivateHospital.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "type": type,
    "PrivateHospitals": List<dynamic>.from(privateHospitals!.map((x) => x.toJson())),
  };
}

class PrivateHospital {
  PrivateHospital({
    this.id,
    this.image,
    this.name,
    this.location,
    this.time,
    this.days,
    this.beds,
    this.description,
  });

  String? id;
  String? image;
  String? name;
  String? location;
  String? time;
  String? days;
  int? beds;
  String? description;

  factory PrivateHospital.fromJson(Map<String, dynamic> json) => PrivateHospital(
    id: json["id"],
    image: json["image"],
    name: json["name"],
    location: json["location"],
    time: json["time"],
    days: json["days"],
    beds: json["beds"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "name": name,
    "location": location,
    "time": time,
    "days": days,
    "beds": beds,
    "description": description,
  };
}
