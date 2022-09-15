// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:flutter_session/flutter_session.dart';
// import 'package:http/http.dart' as http;
// import 'package:portagem_web/constants.dart';
// import 'package:portagem_web/model/usuario.dart';
// import 'package:portagem_web/screens/inicio.dart';




// class LoginService {
//  //metodo para autenticacao 
//   Future login  (String email, String password) async{
//     final url=Uri.parse(ApiConstants.loginUrl);
//     final response=await http.post(url,body: {
//     "email":email,
//     "password":password,
//      });
//     if(response.statusCode==200) { 
//      EasyLoading.dismiss();
//      print(response.statusCode); 
//     final Usuario usuario =Usuario.fromJson(jsonDecode(response.body)); 

//     await FlutterSession().set('usuarioId', usuario.id);
//     await FlutterSession().set('usuarioNome', usuario.name);
//      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Inicio()));
//     }else{
//        EasyLoading.dismiss();
//        EasyLoading.showError('Dados Incorrectos');
//     }
//   }

// }




