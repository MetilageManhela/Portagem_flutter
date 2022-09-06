import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:portagem_web/constants.dart';
import 'package:portagem_web/services/provincia_service.dart';

class ProvinciaForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _ProvinciaForm();
  }
}

class _ProvinciaForm extends State<ProvinciaForm>{

   final descricaoController = TextEditingController();
   final eliminadoController = TextEditingController();
   @override
  void dispose() {
   
    descricaoController.dispose();
     eliminadoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
       return Scaffold(
            appBar: AppBar(
              title: Text("Gravar "),
            ),
            body:Container( 
               padding: EdgeInsets.all(25),
               child: SingleChildScrollView(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   SizedBox(height: 10),
                      TextField(
                       controller: descricaoController,
                      decoration: InputDecoration(
                    labelText: 'Descricao',
                      helperText: "",
                      labelStyle: TextStyle(color: Colors.red),
                      
                    ),
                             
                         ),
                         SizedBox(height: 10),
                     TextField(
                       controller: eliminadoController,
                      autocorrect: true,
                      decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      labelText: 'Eliminado',
                      helperText: " ",
                      //labelStyle: TextStyle(color: Colors.green),
                      
                    ),
                         ),
                      
                    	ElevatedButton(
                  onPressed: () async {
              var descricao=descricaoController.text; 
              var eliminado=eliminadoController.text; 
             
                ProvinciaService().create(descricao);
              //ProvinciaService().update(1,"Update de dados");
              //ProvinciaService().deleteProvincia(1);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar (content: Text("Dados actualizados")));
              },
                  child: const Text('Submeter'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  shadowColor: MaterialStateProperty.all(Color.fromARGB(255, 104, 104, 104)),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  minimumSize: MaterialStateProperty.all(const Size(350, 40)),
                 
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
            )
       );
  }
}

