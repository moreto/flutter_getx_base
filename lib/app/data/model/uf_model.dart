// To parse this JSON data, do
//
//     final ufModel = ufModelFromJson(jsonString);

import 'dart:convert';

UfModel ufModelFromJson(String str) => UfModel.fromJson(json.decode(str));

String ufModelToJson(UfModel data) => json.encode(data.toJson());

class UfModel {
  int id;
  String sigla;
  String nome;
  UfModel? regiao;

  UfModel({
    required this.id,
    required this.sigla,
    required this.nome,
    this.regiao,
  });

  factory UfModel.fromJson(Map<String, dynamic> json) => UfModel(
        id: json["id"],
        sigla: json["sigla"],
        nome: json["nome"],
        regiao: json["regiao"] == null ? null : UfModel.fromJson(json["regiao"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sigla": sigla,
        "nome": nome,
        "regiao": regiao?.toJson(),
      };
}
