import 'dart:convert';

List<Equipamento> equipamentoFromJson(String str) =>
    List<Equipamento>.from(json.decode(str).map((x) => Equipamento.fromJson(x)));

String equipamentoModelToJson(List<Equipamento> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));




class Equipamento {
  int id;
  String tipo;
  String ?estado;
  String  descricao;
  String cabine;
  int portagem_id;
  bool  selected;

  var length;
  
 Equipamento({
    required this.id,
     required this.tipo,
     this.estado,
     required this.descricao,
     required this.cabine,
     required this.portagem_id,
     required this.selected
   
  });


factory Equipamento.fromJson(Map<String, dynamic> json) => Equipamento(
        id: json["id"],
        tipo: json["tipo"],
        estado: json["estado"],
        descricao: json["descricao"],
        cabine: json["cabine"],
        portagem_id: json["portagem_id"],
        selected: json["selected"]=false
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "estado": estado,
        "descricao": descricao,
        "cabine": cabine,
        "portagem_id": portagem_id,
        "selected": selected,
        
      };


}
class Selecionados {
  int id;
  String tipo;
  String  descricao;
  String cabine;
  int portagem_id;
  bool  selected;

Selecionados(this.id, this.tipo, this.descricao,this.cabine, this.portagem_id,this.selected);
  

}