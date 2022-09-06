import 'package:flutter/material.dart';

import 'menubottom.dart';
import 'reportar_problema.dart';
import 'navbar.dart';

class Equipamento_Categoria extends StatelessWidget {
  const Equipamento_Categoria({ Key? key }) : super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      bottomNavigationBar: BottomMenu(selected: 1),
      backgroundColor: Colors.grey[350],
    drawer: NavBar(),
    appBar:AppBar(
      title: Text('Equipamentoss'),
    ),
    body: SafeArea(
      child: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportarProblema()));
                  },
                  child: const Text('SALASs'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  shadowColor: MaterialStateProperty.all(Colors.red),
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
 
            
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
            ),
                   ElevatedButton(
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportarProblema()));
                  },
                  child: const Text('CABINES'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  shadowColor: MaterialStateProperty.all(Colors.red),
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
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
            ),
               ElevatedButton(
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportarProblema()));
                  },
                  child: const Text('PISTAS'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  shadowColor: MaterialStateProperty.all(Colors.red),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
            ),
            ElevatedButton(
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportarProblema()));
                  },
                  child: const Text('OUTROS'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  shadowColor: MaterialStateProperty.all(Colors.red),
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
