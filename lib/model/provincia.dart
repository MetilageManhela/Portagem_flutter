
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

List<Provincia> provinciaFromJson(String str) =>
    List<Provincia>.from(json.decode(str).map((x) => Provincia.fromJson(x)));

String provinciaToJson(List<Provincia> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));




class Provincia {
  int id;
  String descricao;
  int eliminado;
  String ?created_at;
  String ?updated_at; 
  
  Provincia({
    required this.id,
    required this.descricao,
    required this.eliminado,
     this.created_at,
    this.updated_at,
   
  });
 
 

  factory Provincia.fromJson(Map<String, dynamic> json) => Provincia(
        id: json["id"],
        descricao: json["descricao"],
        eliminado: json["eliminado"],
        created_at: json["created_at"],
        updated_at: json["updated_at"],
        
      );

Map<String, dynamic> toJson() => {
        "id": id,
        "descricao": descricao,
        "eliminado": eliminado,
        "created_at": created_at,
        "updated_at": updated_at,
        
      };
}

