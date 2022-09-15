import 'package:flutter_session/flutter_session.dart';

class Usuario {
  int? id;
  String? name;
  String? email;
  String? password;

  

  Usuario({this.id, this.name, this.email, this.password});

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }

  Future <String> getNome() async {
    return await FlutterSession().get('usuario');
  }
   
}