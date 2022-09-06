import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:portagem_web/model/provincia.dart';
import '../constants.dart';
import '../screens/home.dart';



class LoginService {

//  Future<http.Response> loginnnnn (String email, String password) async {
//   return http.post(
//       //Uri.parse(ApiConstants.provinciaUrl),
//     Uri.parse('http://192.168.0.172:9000/api/dealerlogin'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'email': email,
//       'password': password,
//     }),
//   );
// }
// Future login (String email, String password) async{
//   final url=Uri.parse('http://192.168.0.172:8000/api/dealerlogin');
//   final response=await http.post(url,body: {
//   "email":email,
//   "password":password,
//   }
// );
//  if (response.statusCode==200){
//      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
//      }else{

//   }
// }


Future deleteProvincia(int id) async{
  final url=Uri.parse('${ApiConstants.provinciaUrl}/${id}');
  final response=await http.delete(url);
  print (response.statusCode);
  
  }

}




