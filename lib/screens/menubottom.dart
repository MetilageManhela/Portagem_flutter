import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:portagem_web/reaproveitaveis/constantes.dart';
import 'package:portagem_web/screens/equipamento_categoria.dart';
import 'package:portagem_web/screens/perfil.dart';
import 'equipamentoslista.dart';
import 'inicio.dart';
import 'notificacoes.dart';

class BottomMenu extends StatefulWidget {
  int selected;
  BottomMenu({Key? key,required this.selected}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _BottomMenu();
  }
}

class _BottomMenu extends State<BottomMenu> {
 @override
  Widget build(BuildContext context) {
    return Container(
        
        color: const Color.fromRGBO(58, 66, 86, 1.0),
         child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: GNav(
         // backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.yellow,
          //tabBackgroundColor: Colors.grey.shade800,
          gap: 8,
          selectedIndex:widget.selected,
          onTabChange: (index){
              switch(index) { 
                case 0: {
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>
                   const Inicio()));
                } 
                break; 
                case 1: {
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>
                   const Equipamento_Categoria()));
                } 
                break; 
                case 2: {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  //  const Equipamento_Categoria()));
                } 
                break; 
                case 3: {
                //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                //  Lista(title: 'Seccao',)));

                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Notificacoes()));
                } 
                break; 
                // case 4: {
                //  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>
                //  Perfil()));
                //  } 
                // break; 
                
                // case 5: {
                //   SystemNavigator.pop();
                // } 
                // break; 
              
                default: {} 
                break; 
            } 
          },
          padding: const EdgeInsets.symmetric(horizontal: 25),
            tabs: const [
              GButton(
              icon: Icons.home,
              ),
              GButton(
              icon: Icons.computer_outlined,
              // text: 'Favorito',
             
              ),
               GButton(
              icon: Icons.wrap_text_outlined,
              // text: 'Ophap',
             
              ),
              GButton(
              icon: Icons.notifications_none_rounded,
              // text: 'Ophap',
              ),
              //  GButton(
              // icon: Icons.person,
              // // text: 'Ophap',
          
              // ),
              //  GButton(
              // icon: Icons.exit_to_app_outlined,
              // // text: 'Ophap',
              // ),
          ]),
          ),
      );
    }
}