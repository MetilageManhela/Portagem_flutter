import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:portagem_web/screens/equipamento_categoria.dart';
import 'package:portagem_web/screens/pistas.dart';
import 'package:portagem_web/screens/reportar_problema.dart';
import 'package:portagem_web/screens/salas.dart';

import 'cabines.dart';
import 'menubottom.dart';
import 'navbar.dart';

class Equipamento_Categoria extends StatefulWidget {
  const Equipamento_Categoria({Key? key}) : super(key: key);

  @override
  State<Equipamento_Categoria> createState() => _Equipamento_CategoriaState();
}

class _Equipamento_CategoriaState extends State<Equipamento_Categoria> {
  @override
  Widget build(BuildContext context) {
 
     return Container(
      child: Scaffold( 
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: const Text('Equipamento Activo'),),
          drawer: NavBar(),
            bottomNavigationBar: BottomMenu(selected: 1,),
          body: Stack(
            
            children: [
            Container(
              color: Colors.blue,
              height: MediaQuery.of(context).size.height*0.40,
            ),
             Center(
              child: Card(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
                elevation: 7,
                color: Colors.white,
                child: Container(
                  width: MediaQuery.of(context).size.width*0.85,
                  height: 500,
                  alignment: Alignment.center,
                  // child: const Text('metilage hilario',
                  //     style: TextStyle(fontSize: 24)),
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 
                   ElevatedButton(
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Salas()));
                  },
                  child: const Text('SALAS'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  shadowColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(27)),
                  minimumSize: MaterialStateProperty.all(const Size(250, 35)),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Cabines()));
                  },
                  child: const Text('CABINES'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  shadowColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(27)),
                  minimumSize: MaterialStateProperty.all(const Size(250, 35)),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Pistas()));
                  },
                  child: const Text('PISTAS'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  shadowColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(27)),
                  minimumSize: MaterialStateProperty.all(const Size(250, 35)),
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
                padding: EdgeInsets.symmetric(vertical: 18.0),
            ),
            ElevatedButton(
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportarProblema()));
                  },
                  child: const Text('OUTROS'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  shadowColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(27)),
                  minimumSize: MaterialStateProperty.all(const Size(250, 35)),
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
             
                  
                  
          
                ],),
                 

                ),
              ),
            ),]
          )),
    );
  }
}




