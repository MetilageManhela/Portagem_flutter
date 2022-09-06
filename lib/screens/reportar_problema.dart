import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart'; 
import 'package:flutter_session/flutter_session.dart';
import 'package:http/http.dart' as http; 
import 'package:portagem_web/constants.dart';

import 'menubottom.dart';


class ReportarProblema extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _ReportarProblema();
  }
}

class _ReportarProblema extends State<ReportarProblema>{
 final _formKey = GlobalKey<FormState>();
  TextEditingController problemaController = TextEditingController();
  TextEditingController observacaoController = TextEditingController();
  TextEditingController resolucaoController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
       return Scaffold(
        bottomNavigationBar: BottomMenu(selected: 2),
            appBar: AppBar(
              title:const  Text("Reportar Problema"),
            ),
            body:SingleChildScrollView(
              child: Container( 
                 padding: const EdgeInsets.all(25),

                 child: Form(
                  key: _formKey,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                        const SizedBox( height: 20,),
                        TextFormField(
                        controller: problemaController,
                        autocorrect: true,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                        labelText: 'Qual o problema?',
                        helperText: "",
                        labelStyle: const TextStyle(color: Colors.blue),
                       ),
                         validator: (value) {
                         if (value == null || value.isEmpty) {
                         return 'O campo não pode ser nulo';
                         }
                          return null;
                         },
                        ),
                     
                       const SizedBox( height: 80,),
                        TextFormField(
                        controller: observacaoController,
                        autocorrect: true,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                        labelText: 'Sua observacao?',
                        helperText: "",
                        labelStyle: const TextStyle(color: Colors.black),
                       ),
                        validator: (value) {
                         if (value == null || value.isEmpty) {
                         return 'O campo não pode ser nulo';
                         }
                          return null;
                         },
                        ),
                      const SizedBox( height: 80,),
                        TextFormField(
                        controller: resolucaoController,
                        autocorrect: true,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                        labelText: 'Como resolver?',
                        helperText: "",
                        labelStyle: const TextStyle(color: Colors.black),
                       ),
                        validator: (value) {
                         if (value == null || value.isEmpty) {
                         return 'O campo não pode ser nulo';
                         }
                          return null;
                         },
                        ),
                      const SizedBox( height: 20,),
                       ElevatedButton(
                      onPressed: () {
                    if (_formKey.currentState!.validate()) {
                     ScaffoldMessenger.of(context).showSnackBar(
                     const SnackBar(content: Text('A processar...')),
                    );
                    submeter_registo(problemaController.text, observacaoController.text, resolucaoController.text);
                    }
                       
                      },
                      child: const Text('Submeter'),
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                      shadowColor: MaterialStateProperty.all(Colors.red),
                      padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                      minimumSize: MaterialStateProperty.all(const Size(200, 40)),
                          // fixedSize: MaterialStateProperty.all(const Size(200, 40)),
                    //  side: MaterialStateProperty.all(
                    //  const BorderSide(
                    //   color: Colors.black,
                    //   width: 1,
                    //  ),
                    //  ),
                                 
                     shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                     ),
                    ),
                   ),
                    ),
                             
                      
                       
                   ],
                   ),
                 ),
              ),
            )
       );
  }
  
  void clearText() {
    problemaController.clear();
    resolucaoController.clear();
    observacaoController.clear();
  }

  Future submeter_registo(String problema,String observacao,String resolucao) async{
    var usuario=await FlutterSession().get('usuarioId');
    final url=Uri.parse(ApiConstants.reportar_problema);
    final response=await http.post(url,body: {
    "user_id":jsonEncode (usuario),
    "descricao":problema,
    "observacao":observacao,
    "metodo_resolucao":resolucao,
   
    });

    print(response.body);
  if(response.statusCode==200){
    //EasyLoading.dismiss();
    EasyLoading.showSuccess('Submetido com sucesso!');
    clearText();
  }else{
   // EasyLoading.dismiss();
    EasyLoading.showError('Erro ao submeter!');
   // Navigator.pop(context);
  };
 }
}