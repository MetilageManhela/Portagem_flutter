import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:portagem_web/screens/cabines.dart';
import 'package:portagem_web/screens/equipamento_categoria.dart';
import 'package:portagem_web/screens/navbar.dart';
import 'package:portagem_web/services/equipamento_service.dart';
import 'package:portagem_web/services/provincia_service.dart';
import '../model/equipamento.dart';
import '../model/provincia.dart';
import '../model/turno.dart';
import '../services/turno_service.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../constants.dart';

import 'package:http/http.dart' as http;

import 'menubottom.dart';




class MeuTurno extends StatefulWidget {
  
  MeuTurno({Key? key}) : super(key: key);


  @override
  _MeuTurnoState createState() => _MeuTurnoState();
}

class _MeuTurnoState extends State<MeuTurno> {
  
  //vem da base de dados
  late List<Turno>? _turno = [];  
  @override
  void initState() {
    super.initState();
    _getData();
  }
  
  void _getData() async {
  _turno = (await TurnoService().getTurnos())!;
  Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomMenu(selected: 1),
      drawer: NavBar(),
      appBar: AppBar(
        title: Text ("Meu Turno"),
        //backgroundColor: Colors.green,
        centerTitle: true,
        // backgroundColor: Colors.black,
     
      ),
      body: SafeArea(
        child: Container(
           child: Column(
               children: [
                Expanded(
                  child: _turno == null || _turno!.isEmpty
                    ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                 itemCount: _turno!.length,
                 itemBuilder: (context, index) {
                                                  
                  return Container(
                  decoration: const BoxDecoration(
                  border: Border(
                  bottom: BorderSide(
                  color: Colors.black12,
                  width: 2,
                  )
                  )
                ),
                child: Itens(
              _turno![index].id,
              _turno![index].data_inicio,
              _turno![index].hora_entrada_saida,
              _turno![index].portagem_id,
              _turno![index].user_id,
              
               index,
               ),
             );
            },
          ),
        ),
      

               ],
           )
        ),
      ),
    );
    
  }
  
Widget Itens(int id, String data_inicio, String hora_entrada_saida,  int portagem_id, int user_id,int index) {
  return ListTile(
  title: Text(
         hora_entrada_saida,
         style: const TextStyle(
         fontWeight: FontWeight.w500,
         ),),
         subtitle: Text(data_inicio),
        );
        }
        }
