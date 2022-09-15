import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:portagem_web/services/solicitacoes_service.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'menubottom.dart';

class Solicitacao extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _Solicitacao();
  }
}

class _Solicitacao extends State<Solicitacao>{
   final user_id_Controller = TextEditingController();
   final solicitacao_Controller = TextEditingController();
   @override
  void dispose() {
   
    user_id_Controller.dispose();
    solicitacao_Controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
       return Scaffold(
        bottomNavigationBar: BottomMenu(selected: 3,),
            appBar: AppBar(
              title: const Text("Solicitacao"),
            ),
            body:Container( 
               padding: EdgeInsets.all(25),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
          const SizedBox( height: 100,),
                   
                    TextField(
                    controller: solicitacao_Controller,
                    autocorrect: true,
                    decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Descreva Solicitacao',
                    helperText: " ",
                  ),
                 ),
       
	            ElevatedButton(
                  onPressed: () {
                       Alert(
                        context: context,
                        type: AlertType.warning,
                        //title: "",
                        desc: "Deseja submeter a solicitacao??",
                        buttons: [
                          DialogButton(
                            child: const Text(
                              "Sim",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                              onPressed: () {
                              Navigator.pop(context);
                    
                 
                              EasyLoading.show(status: 'loading...');
                              
                              
                              SolicitacaoService().salvar(solicitacao_Controller.text );
                             },
                            color: Colors.green[400],
                          ),
                          DialogButton(
                          
                            child: const Text(
                              "Nao",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                          
                              
                            },
                            color: Colors.red[400],
                          )
                        ],
                      ).show();
              
                  
                  
                  },
                  child: const Text('Submeter'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  shadowColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  minimumSize: MaterialStateProperty.all(const Size(350, 40)),
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
            )
       );
  }
}