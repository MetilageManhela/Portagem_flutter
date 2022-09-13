import 'package:flutter/material.dart';
import 'package:portagem_web/testes/checkbox.dart';

import 'equipamentoslista.dart';
import 'menubottom.dart';
import 'reportar_problema.dart';
import 'navbar.dart';

class Cabines extends StatelessWidget {
  const Cabines({ Key? key }) : super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
    bottomNavigationBar: BottomMenu(selected: 1),
    //backgroundColor: Colors.black12,
    drawer: NavBar(),
    appBar:AppBar(
      title: const Text('Cabines'),
    ),
    body: SafeArea(
      child: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                const SizedBox(height: 40,),
                    Expanded(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    ElevatedButton(
                    onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    EquipamentoLista(titulo: "Cabine 1" , pesquisa: "Cabine 1"))
                                   );
                    },
                    child: const Text('CABINE 1'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    minimumSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all(
                                   RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   ),
                                   ),
                                   ),
                                   ),
                    ElevatedButton(
                    onPressed: () {
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                   EquipamentoLista(titulo: "Cabine 2" , pesquisa: "Cabine 2"))
                                   );
                    },
                    child: const Text('CABINE 2'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    minimumSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all(
                                   RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   ),
                                   ),
                                   ),
                                   ),
                    ]
                    ),
                  ),
                  
          
                  Expanded(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    ElevatedButton(
                    onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                   EquipamentoLista(titulo: "Cabine 3" , pesquisa: "Cabine 3"))
                                   );                  },
                    child: const Text('CABINE 3'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    minimumSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all(
                                   RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   ),
                                   ),
                                   ),
                                   ),
                    ElevatedButton(
                    onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                   EquipamentoLista(titulo: "Cabine 4" , pesquisa: "Cabine 4"))
                                   );
                    },
                    child: const Text('CABINE 4'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    minimumSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all(
                                   RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   ),
                                   ),
                                   ),
                                   ),
                    ]
                    ),
                  ),
                  
                 Expanded(
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    ElevatedButton(
                    onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                   EquipamentoLista(titulo: "Cabine 5" , pesquisa: "Cabine 5"))
                   );
                    },
                    child: const Text('CABINE 5'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    minimumSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(5),
                   ),
                   ),
                   ),
                   ),
                    ElevatedButton(
                    onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                   EquipamentoLista(titulo: "Cabine 6" , pesquisa: "Cabine 6"))
                   );
                    },
                    child: const Text('CABINE 6'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    minimumSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(5),
                   ),
                   ),
                   ),
                   ),
                    ]
                    ),
                 ),
                  Expanded(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    ElevatedButton(
                    onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                   EquipamentoLista(titulo: "Cabine 7" , pesquisa: "Cabine 7"))
                                   );
                    },
                    child: const Text('CABINE 7'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    minimumSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all(
                                   RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   ),
                                   ),
                                   ),
                                   ),
                    ElevatedButton(
                    onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                   EquipamentoLista(titulo: "Cabine 8" , pesquisa: "Cabine 8"))
                                   );
                    },
                    child: const Text('CABINE 8'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    minimumSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all(
                                   RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   ),
                                   ),
                                   ),
                                   ),
                    ]
                    ),
                  ),
                 
                  Expanded(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    ElevatedButton(
                    onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                   EquipamentoLista(titulo: "Cabine 9" , pesquisa: "Cabine 9"))
                                   );
                    },
                    child: const Text('CABINE 9'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    minimumSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all(
                                   RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   ),
                                   ),
                                   ),
                                   ),
                    ElevatedButton(
                    onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                   EquipamentoLista(titulo: "Cabine 10" , pesquisa: "Cabine 10"))
                                   );
                    },
                    child: const Text('CABINE 10'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    minimumSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all(
                                   RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   ),
                                   ),
                                   ),
                                   ),
                    ]
                    ),
                  ),
                
                  Expanded(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    ElevatedButton(
                    onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                   EquipamentoLista(titulo: "Cabine 11" , pesquisa: "Cabine 11"))
                                   );
                    },
                    child: const Text('CABINE 11'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    minimumSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all(
                                   RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   ),
                                   ),
                                   ),
                                   ),
                    ElevatedButton(
                    onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                   EquipamentoLista(titulo: "Cabine 12" , pesquisa: "Cabine 12"))
                                   );
                    },
                    child: const Text('CABINE 12'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    minimumSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all(
                                   RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   ),
                                   ),
                                   ),
                                   ),
                    ]
                    ),
                  ),
                  const SizedBox(height: 40,),
                  
                  
          ],
        ),
      ),
    ),
  ));
 }
}
