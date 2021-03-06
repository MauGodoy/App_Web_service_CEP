// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class ResultCep {
  ResultCep({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ibge,
    required this.gia,
    required this.ddd,
    required this.siafi,
    required this.erro,
  });

  String cep;
  String logradouro;
  String complemento;
  String bairro;
  String localidade;
  String uf;
  String ibge;
  String gia;
  String ddd;
  String siafi;
  bool erro;

  factory ResultCep.fromJson(String str) => ResultCep.fromMap(json.decode(str));

  //get erro => null;

  String toJson() => json.encode(toMap());

  factory ResultCep.fromMap(Map<String, dynamic> json) => ResultCep(
    cep: json["cep"],
    logradouro: json["logradouro"],
    complemento: json["complemento"],
    bairro: json["bairro"],
    localidade: json["localidade"],
    uf: json["uf"],
    ibge: json["ibge"],
    gia: json["gia"],
    ddd: json["ddd"],
    siafi: json["siafi"],
    erro: false,
  );

  Map<String, dynamic> toMap() => {
    "cep": cep,
    "logradouro": logradouro,
    "complemento": complemento,
    "bairro": bairro,
    "localidade": localidade,
    "uf": uf,
    "ibge": ibge,
    "gia": gia,
    "ddd": ddd,
    "siafi": siafi,
  };



}
