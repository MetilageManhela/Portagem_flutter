
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

List<Notificacao> notificacaoFromJson(String str) =>
    List<Notificacao>.from(json.decode(str).map((x) => Notificacao.fromJson(x)));

String notificacaoToJson(List<Notificacao> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class Notificacao {
  int id;
  String tema;
  String descricao;
  String ?data;
  String ?estado; 
  int ?user_id; 
  
  Notificacao({
    required this.id,
    required this.tema,
    required this.descricao,
    required this.data,
     this.estado,
    this.user_id,
   
  });
 
 

  factory Notificacao.fromJson(Map<String, dynamic> json) => Notificacao(
        id: json["id"],
        tema: json["tema"],
        descricao: json["descricao"],
        data: json["data"],
        estado: json["estado"],
        user_id: json["user_id"],
        
      );

Map<String, dynamic> toJson() => {
        "id": id,
        "tema": tema,
        "descricao": descricao,
        "data": data,
        "estado": estado,
        "user_id": user_id,
       
        
      };
}

