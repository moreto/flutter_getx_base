// To parse this JSON data, do
//
//     final infoModel = infoModelFromJson(jsonString);

import 'dart:convert';

InfoModel infoModelFromJson(String str) => InfoModel.fromJson(json.decode(str));

String infoModelToJson(InfoModel data) => json.encode(data.toJson());

class InfoModel {
  InfoModel({
    required this.name,
    required this.description,
    required this.version,
    required this.host,
    required this.email,
    required this.dataBaseStatus,
    required this.yourIp,
    this.database,
  });

  String name;
  String description;
  String version;
  String host;
  String email;
  String dataBaseStatus;
  String yourIp;
  Database? database;

  factory InfoModel.fromJson(Map<String, dynamic> json) => InfoModel(
        name: json["name"],
        description: json["description"],
        version: json["version"],
        host: json["host"],
        email: json["email"],
        dataBaseStatus: json["dataBaseStatus"],
        yourIp: json["yourIp"],
        database: json["database"] == null ? null : Database.fromJson(json["database"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "version": version,
        "host": host,
        "email": email,
        "dataBaseStatus": dataBaseStatus,
        "yourIp": yourIp,
        "database": database == null ? null : database!.toJson(),
      };
}

class Database {
  Database({this.currentDatabase});

  String? currentDatabase;

  factory Database.fromJson(Map<String, dynamic> json) => Database(
        currentDatabase: json["current_database"],
      );

  Map<String, dynamic> toJson() => {
        "current_database": currentDatabase,
      };
}
