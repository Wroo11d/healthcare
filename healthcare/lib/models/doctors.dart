// To parse this JSON data, do
//
//     final doctor = doctorFromJson(jsonString);

import 'dart:convert';

Doctor doctorFromJson(String str) => Doctor.fromJson(json.decode(str));

String doctorToJson(Doctor data) => json.encode(data.toJson());

class Doctor {
  Doctor({
    this.id,
    this.type,
    this.doctors,
  });

  String? id;
  String? type;
  List<DoctorElement>? doctors;

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
    id: json["id"],
    type: json["type"],
    doctors: List<DoctorElement>.from(json["PublicDoctors"].map((x) => DoctorElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "PublicDoctors": List<dynamic>.from(doctors!.map((x) => x.toJson())),
  };
}

class DoctorElement {
  DoctorElement({
    this.id,
    this.image,
    this.name,
    this.description,
    this.openTime,
    this.closeTime,
    this.days,
    this.location,
  });

  String? id;
  String? image;
  String? name;
  String? description;
  String? openTime;
  String? closeTime;
  String? days;
  String? location;

  factory DoctorElement.fromJson(Map<String, dynamic> json) => DoctorElement(
    id: json["id"],
    image: json["image"],
    name: json["name"],
    description: json["description"],
    openTime: json["open_time"],
    closeTime: json["close_time"],
    days: json["days"],
    location: json["location"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "name": name,
    "description": description,
    "open_time": openTime,
    "close_time": closeTime,
    "days": days,
    "location": location,
  };
}



// To parse this JSON data, do
//
//     final doctorsPrivatly = doctorsPrivatlyFromJson(jsonString);


DoctorsPrivatly doctorsPrivatlyFromJson(String str) => DoctorsPrivatly.fromJson(json.decode(str));

String doctorsPrivatlyToJson(DoctorsPrivatly data) => json.encode(data.toJson());

class DoctorsPrivatly {
  DoctorsPrivatly({
    this.id,
    this.image,
    this.type,
    this.privateDoctors,
  });

  String? id;
  String? image;
  String? type;
  List<PrivateDoctor>? privateDoctors;

  factory DoctorsPrivatly.fromJson(Map<String, dynamic> json) => DoctorsPrivatly(
    id: json["id"],
    image: json["image"],
    type: json["type"],
    privateDoctors: List<PrivateDoctor>.from(json["PrivateDoctors"].map((x) => PrivateDoctor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "type": type,
    "PrivateDoctors": List<dynamic>.from(privateDoctors!.map((x) => x.toJson())),
  };
}

class PrivateDoctor {
  PrivateDoctor({
    this.id,
    this.image,
    this.name,
    this.description,
    this.openTime,
    this.closeTime,
    this.days,
    this.location,
  });

  String? id;
  String? image;
  String? name;
  String? description;
  String? openTime;
  String? closeTime;
  String? days;
  String? location;

  factory PrivateDoctor.fromJson(Map<String, dynamic> json) => PrivateDoctor(
    id: json["id"],
    image: json["image"],
    name: json["name"],
    description: json["description"],
    openTime: json["open_time"],
    closeTime: json["close_time"],
    days: json["days"],
    location: json["location"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "name": name,
    "description": description,
    "open_time": openTime,
    "close_time": closeTime,
    "days": days,
    "location": location,
  };
}
