import 'dart:convert';

List<Portagem> portagemFromJson(String str) =>
    List<Portagem>.from(json.decode(str).map((x) => Portagem.fromJson(x)));

String portagemModelToJson(List<Portagem> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));




class Portagem {
  int id;
  String nome;
  String localizacao;


  Portagem({
    required this.id,
    required this.nome,
    required this.localizacao,

   
  });


 

  factory Portagem.fromJson(Map<String, dynamic> json) => Portagem(
        id: json["id"],
        nome: json["nome"],
        localizacao: json["localizacao"],
        
        
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "localizacao": localizacao,
      
        
      };
}


// class Portagem {
//   int? id;
//   String? nome;
//   String? localizacao;

//   Portagem({this.id, this.nome, this.localizacao});

//   Portagem.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     nome = json['nome'];
//     localizacao = json['localizacao'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['nome'] = this.nome;
//     data['localizacao'] = this.localizacao;
//     return data;
//   }
// }

