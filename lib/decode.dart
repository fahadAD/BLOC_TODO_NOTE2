// To parse this JSON data, do
//
//     final fahadjson = fahadjsonFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';

Fahadjson fahadjsonFromJson(String str) => Fahadjson.fromJson(json.decode(str));

String fahadjsonToJson(Fahadjson data) => json.encode(data.toJson());

class Fahadjson extends Equatable{
  Fahadjson({
    this.id,
    this.name,
    this.description,
    this.datetime,
  });
  int?id;
  String? name;
  String? description;
  String? datetime;

  factory Fahadjson.fromJson(Map<String, dynamic> json) => Fahadjson(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    datetime: json["datetime"],

  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "datetime": datetime,

  };

  @override

  List<Object?> get props =>  [
                                      name,
                                      description,
                                      datetime,
                                       id,
                               ];

}
