// import 'package:flutter/material.dart';

// class Lista extends StatefulWidget {
//   Lista({Key? key, required this.title}) : super(key: key);

//   final String title;
 
//  @override
//   _ListaState createState() => _ListaState();
// }

// class _ListaState extends State<Lista> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
      
//       appBar: AppBar(
//       elevation: 0.1,
//       backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
//       title: Text(widget.title),
//       actions: <Widget>[
//         IconButton(
//           icon: const Icon(Icons.list),
//           onPressed: () {},
//         )
//       ],
//     ),
//      bottomNavigationBar: Container(
//       height: 55.0,
//       child: BottomAppBar(
//         color: const Color.fromRGBO(58, 66, 86, 1.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             IconButton(
//               icon: const Icon(Icons.home, color: Colors.white),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: const Icon(Icons.blur_on, color: Colors.white),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: const Icon(Icons.hotel, color: Colors.white),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: const Icon(Icons.account_box, color: Colors.white),
//               onPressed: () {
                
//               },
//             )
//           ],
//         ),
//       ),
//     ),
//     body: Container(
//       child: ListView.builder(
    
//         shrinkWrap: true,
//         itemCount: 10,
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//       elevation: 8.0,
//       margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//       child: Container(
//         decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
//         child: ListTile(
//         contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
//         leading: Container(
//           padding: const EdgeInsets.only(right: 12.0),
//           decoration: BoxDecoration(
//               border: Border(
//                   right: new BorderSide(width: 1.0, color: Colors.white24))),
//           child: const Icon(Icons.autorenew, color: Colors.white),
//         ),
//         title: const Text(
//           "Introduction to Driving",
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

//         subtitle: Row(
//           children: <Widget>[
//             const Icon(Icons.linear_scale, color: Colors.yellowAccent),
//             const Text(" Intermediate", style: TextStyle(color: Colors.white))
//           ],
//         ),
//         trailing:
//             const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0)),
//       ),
//     );;
//         },
//       ),
//     ),
//     );
//   }
// }



// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



// Novo 

import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  Lista({Key? key, required this.title}) : super(key: key);

  final String title;
 
 @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
      
      appBar: AppBar(
      elevation: 0.1,
      // backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.list),
          onPressed: () {},
        )
      ],
    ),
     bottomNavigationBar: Container(
      height: 55.0,
      child: BottomAppBar(
        color: const Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.blur_on, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.hotel, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.account_box, color: Colors.white),
              onPressed: () {
                
              },
            )
          ],
        ),
      ),
    ),
    body: Container(
      child: ListView.builder(
    
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Card(
      elevation: 0.4,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: const BoxDecoration(),
        child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
        leading: Container(
          padding: const EdgeInsets.only(right: 12.0),
          decoration: const BoxDecoration(
              border: Border(
                  right: BorderSide(width: 0.0, color: Colors.white24))),
          child: const Icon(Icons.autorenew, color: Colors.black),
        ),
        title: const Text(
          "Introduction to Driving",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

        subtitle: Row(
          children: const <Widget>[
            Icon(Icons.linear_scale, color: Colors.yellowAccent),
            Text(" Intermediate", style: TextStyle(color: Colors.black))
          ],
        ),
        trailing:
            const Icon(Icons.keyboard_arrow_right, color: Colors.black, size: 30.0)),
      ),
    );
        },
      ),
    ),
    );
  }
}
