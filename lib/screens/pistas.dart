import 'package:flutter/material.dart';
import 'package:portagem_web/testes/checkbox.dart';

import 'equipamentoslista.dart';
import 'menubottom.dart';
import 'reportar_problema.dart';
import 'navbar.dart';

class Pistas extends StatelessWidget {
  const Pistas({ Key? key }) : super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      bottomNavigationBar: BottomMenu(selected: 1,),
    // backgroundColor: Colors.amber[100],
    drawer: NavBar(),
    appBar:AppBar(
      title: const Text('Pistas'),
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EquipamentoLista(titulo: "Pista 1" , pesquisa: "Pista 1")));
                    
                    },
                    child: const Text('PISTA 1'),
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
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EquipamentoLista(titulo: "Pista 2" , pesquisa: "Pista 2")));
                    },
                    child: const Text('PISTA 2'),
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EquipamentoLista(titulo: "Pista 3" , pesquisa: "Pista 3")));
                    },
                    child: const Text('PISTA 3'),
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
                    EquipamentoLista(titulo: "Pista 4" , pesquisa: "Pista 4")));
                    },
                    child: const Text('PISTA 4'),
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
                    EquipamentoLista(titulo: "Pista 5" , pesquisa: "Pista 5")));
                    },
                    child: const Text('PISTA 5'),
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
                    EquipamentoLista(titulo: "Pista 6" , pesquisa: "Pista 6")));
                    },
                    child: const Text('PISTA 6'),
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
                    EquipamentoLista(titulo: "Pista 7" , pesquisa: "Pista 7")));
                    },
                    child: const Text('PISTA 7'),
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
                    EquipamentoLista(titulo: "Pista 8" , pesquisa: "Pista 8")));
                    },
                    child: const Text('PISTA 8'),
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
                    EquipamentoLista(titulo: "Pista 9" , pesquisa: "Pista 9")));
                    },
                    child: const Text('PISTA 9'),
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
                    EquipamentoLista(titulo: "Pista 10" , pesquisa: "Pista 10")));
                    },
                    child: const Text('PISTA 10'),
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
                    EquipamentoLista(titulo: "Pista 11" , pesquisa: "Pista 11")));
                    },
                    child: const Text('PISTA 11'),
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
                    EquipamentoLista(titulo: "Pista 12" , pesquisa: "Pista 12")));
                    },
                    child: const Text('PISTA 12'),
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
