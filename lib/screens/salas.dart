import 'package:flutter/material.dart';
import 'package:portagem_web/screens/cabines.dart';
import 'package:portagem_web/screens/equipamentoslista.dart';
import 'package:portagem_web/screens/pistas.dart';
import 'package:portagem_web/screens/salas.dart';
import 'package:portagem_web/testes/checkbox.dart';
import 'reportar_problema.dart';
import 'navbar.dart';
import 'menubottom.dart';
class Salas extends StatelessWidget {
  const Salas({ Key? key }) : super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
  home: Scaffold(
    bottomNavigationBar: BottomMenu(selected: 1),
    drawer: NavBar(),
    appBar:AppBar(
    title: const Text('Salas'),
    ),
    body: SafeArea(
      child: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                   EquipamentoLista(titulo: "Sala de Monitoramento" , pesquisa: "Sala de monitoramento")));
                  },
                  child: const Text('SALA DE MONITORAMENTO'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  //shadowColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(30)),
                  minimumSize: MaterialStateProperty.all(const Size(300, 40)),
                  shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  ),
                  ),
                  ),
                  ),
                  const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  ElevatedButton(
                  onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  EquipamentoLista(titulo: "Sala de Servidor" , pesquisa: "Sala de Servidor"))
                  );
                  },
                  child: const Text('SALA DE SERVIDOR'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  //shadowColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(30)),
                  minimumSize: MaterialStateProperty.all(const Size(300, 40)),
                // fixedSize: MaterialStateProperty.all(const Size(200, 40)),
                //  side: MaterialStateProperty.all(
                //  const BorderSide(
                //   color: Colors.black,
                //   width: 1,
                //  ),
                //  ),
    
                  shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  ),
                  ),
                  ),
                  ),
                  const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  ElevatedButton(
                  onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  EquipamentoLista(titulo: "Outros" , pesquisa: "Outros"))
                  );
                  },
                  child: const Text('OUTROS'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  //shadowColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(30)),
                  minimumSize: MaterialStateProperty.all(const Size(300, 40)),
                      // fixedSize: MaterialStateProperty.all(const Size(200, 40)),
                //  side: MaterialStateProperty.all(
                //  const BorderSide(
                //   color: Colors.black,
                //   width: 1,
                //  ),
                //  ),
     
                  shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                 ),
               ),
               ),
              ),
           ],
        ),
      ),
    ),
  ));
 }
}
