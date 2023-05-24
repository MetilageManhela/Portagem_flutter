import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:portagem_web/screens/reportar_problema.dart';
import 'package:portagem_web/screens/solicitacao.dart';
import 'equipamento_categoria.dart';
import 'login2.dart';
import 'meu_turno.dart';
import 'notificacoes.dart';


class NavBar extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
     return FutureBuilder(
       future: FlutterSession().get('usuarioNome'),
         builder: (context, projectSnap) {
          projectSnap.data;
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.72,
            child: Drawer(
              // backgroundColor: Colors.amber,
            child: ListView(
            padding: EdgeInsets.zero,
            children: [
            UserAccountsDrawerHeader(
             accountName: Text(projectSnap.data.toString(),style: const TextStyle(fontSize: 20),), 
             accountEmail: const Text('',style: TextStyle(fontSize: 18),
            ),
              //currentAccountPicture: CircleAvatar(
               // child: ClipOval(
                  // child: Image.network(
                  //   'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png'
                  //   ,
                  //   fit: BoxFit.cover,
                  //   width: 90,
                  //   height: 90,
                  // ),
               // ),
              //),
                decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Monitorar Equipamentos'),
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const Equipamento_Categoria()));
              },
            ),
             ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Reportar Problema'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportarProblema()));
              }
            ),
              ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Solicitações'),
              onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Solicitacao()));
              }
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Minha Informação'),
              onTap: () =>  null,
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Meu Turno'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MeuTurno()));
              }
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Minhas Notificações'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Notificacoes())),
              // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Login2())),
            ),
                   
            const Divider(),
            
            ListTile(
              title: const Text('Sair'),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                SystemNavigator.pop();
              }
            ),
                  ],
                ),
               ),
          );
    }
  );
  }
}