import 'dart:convert';

List<Solicitacao> solicitacaoFromJson(String str) =>
    List<Solicitacao>.from(json.decode(str).map((x) => Solicitacao.fromJson(x)));

String solicitacaoToJson(List<Solicitacao> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));




class Solicitacao {
  int id;
  String ?data;
  String descricao;
  String ?estado;
  int ?user_id; 
  
  Solicitacao({
    required this.id,
     this.data,
    required this.descricao,
    required this.estado,
     this.user_id,
    
   
  });
 
       factory Solicitacao.fromJson(Map<String, dynamic> json) => Solicitacao(
        id: json["id"],
        data: json["data"],
        descricao: json["descricao"],
        estado: json["estado"],
        user_id: json["user_id"],
       
        
      );

Map<String, dynamic> toJson() => {
        "id": id,
        "data": data,
        "descricao": descricao,
        "estado": estado,
        "user_id": user_id,
     
        
      };
}
