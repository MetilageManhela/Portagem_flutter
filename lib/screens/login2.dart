import 'dart:convert';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:http/http.dart' as http;
import 'package:portagem_web/model/usuario.dart';
import '../constants.dart';
import 'inicio.dart';


class Login2 extends StatefulWidget {
  const Login2({Key? key}) : super(key: key);
@override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final _formKey = GlobalKey<FormState>();
   final emailController = TextEditingController();
   final passwordController = TextEditingController();
   @override
  void dispose() {
     emailController.dispose();
     passwordController.dispose();
    super.dispose();
     }
   
   //metodo para autenticacao 
  Future login  (String email, String password) async{
    final url=Uri.parse(ApiConstants.loginUrl);
    final response=await http.post(url,body: {
    "email":email,
    "password":password,
     });
    if(response.statusCode==200) { 
     EasyLoading.dismiss();
     print(response.statusCode); 
    final Usuario usuario =Usuario.fromJson(jsonDecode(response.body)); 

    await FlutterSession().set('usuarioId', usuario.id);
    await FlutterSession().set('usuarioNome', usuario.name);
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Inicio()));
    }else{
       EasyLoading.dismiss();
       EasyLoading.showError('Dados Incorrectos');
    }
  }
//metodo para autenticacao 
bool hide = true;

  @override
  Widget build(BuildContext context) {
 return Scaffold( 
         backgroundColor: Colors.transparent,
         appBar: AppBar(title: const Text('Login '),),
         body: Stack(
           children: [
           Container(
             color: Colors.blue,
             height: MediaQuery.of(context).size.height*0.43,
           ),
          
             Center(
             child: SingleChildScrollView(
               child: Form(
                key: _formKey,
                 child: Card(
                   shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(18),
                 ),
                   elevation: 7,
                   color: Colors.white,
                   child: Container(
                     width: MediaQuery.of(context).size.width*0.85,
                     height: MediaQuery.of(context).size.height*0.60,
                     alignment: Alignment.center,
                     // child: const Text('metilage hilario',
                     //     style: TextStyle(fontSize: 24)),
                     child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                     Container(
                         
                    decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0),
                  ),
                            
                            
                   color: Colors.amber,
                   ),
                     child: Padding(
                     padding: const EdgeInsets.all(30),
                     child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: const <Widget>[
                     Text('LOGIN')
                   ],
                    ),
                    ),
                    ),
                    Container(
                    
                     child: Padding(
                     padding:  const EdgeInsets.all(20),
                     child: Column(
                     children: [
                     TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: "E-mail",),
                        validator: (value) {
                         if (value == null || value.isEmpty) {
                         return 'O campo não pode ser nulo';
                         }
                          return null;
                         },
                        ),
                       const SizedBox(height: 20,),

                      TextFormField(
                      controller: passwordController,
                      obscureText: hide,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon:IconButton(onPressed: (){
                          setState(() {
                            hide = !hide;
                          });
                        },icon:hide?const Icon(Icons.visibility_off):const Icon(Icons.visibility),)
                      ),
                      validator: (value) {
                         if (value == null || value.isEmpty) {
                         return 'O campo não pode ser nulo';
                         }
                          return null;
                         },
                    ),
                       Align(
                         alignment: Alignment.centerRight,
                         child: TextButton(onPressed: (){},child: const Text("Esqueceu?"),
                         ),
                       ),
                       Center(
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 60)
                          ),
                          onPressed: (){
                            if (_formKey.currentState!.validate()) {
                            //  ScaffoldMessenger.of(context).showSnackBar(
                            //  const SnackBar(content: Text('A processar...')),);
                            EasyLoading.show();
                             login(emailController.text, passwordController.text);
                             }
                          }, child: const Text("Entrar")
                          ),
                       ),
                            
                     ],
                     ),
                            
                     ),
                     ),
                   ],
                   
                   ),
                   ),
                 
                 ),
               ),
             ),
           ),]
         ));
  }
}




