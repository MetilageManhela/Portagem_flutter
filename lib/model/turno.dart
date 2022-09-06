
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

List<Turno> turnoFromJson(String str) =>
    List<Turno>.from(json.decode(str).map((x) => Turno.fromJson(x)));

String turnoToJson(List<Turno> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));




class Turno {
  int id;
  String data_inicio;
  String hora_entrada_saida;
  int user_id;
  int portagem_id; 
  
  Turno({
    required this.id,
    required this.data_inicio,
    required this.hora_entrada_saida,
    required this.user_id,
    required this.portagem_id,
   
  });
 
 

  factory Turno.fromJson(Map<String, dynamic> json) => Turno(
        id: json["id"],
        data_inicio: json["data_inicio"],
        hora_entrada_saida: json["hora_entrada_saida"],
        user_id: json["user_id"],
        portagem_id: json["portagem_id"],
        
      );

Map<String, dynamic> toJson() => {
        "id": id,
        "data_inicio": data_inicio,
        "hora_entrada_saida": hora_entrada_saida,
        "user_id": user_id,
        "portagem_id": portagem_id,
        
      };
}

