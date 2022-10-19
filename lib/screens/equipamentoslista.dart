import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:portagem_web/screens/navbar.dart';
import 'package:portagem_web/services/equipamento_service.dart';
import '../model/equipamento.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../constants.dart';
import 'package:http/http.dart' as http;
import 'menubottom.dart';

class EquipamentoLista extends StatefulWidget {
  String titulo,pesquisa;
  EquipamentoLista({Key? key,required this.titulo,required this.pesquisa}) : super(key: key);

@override
_EquipamentoListaState createState() => _EquipamentoListaState();
}
class _EquipamentoListaState extends State<EquipamentoLista> {
//vem da base de dados
late List<Equipamento>? _equipamento = [];  
//Equipamentos Selecionados na lista por checkList
late List<Selecionados>? selectedEquipamentos = []; 

//Equipamentos filtrados por Sala, Cabine etc, que vem da lista "_equipamento"
List<Equipamento>? _equipamentoo(){
   return _equipamento!
       .where((element) =>
           element.cabine ==widget.pesquisa)
       .toList();
 }

  @override
  void initState() {
    super.initState();
    _getData();
  }
  
  void _getData() async {
  _equipamento = (await EquipamentoService().getEquipamentos())!;
  Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
   }
  
     @override
     Widget build(BuildContext context) {
      return Scaffold(
       bottomNavigationBar: BottomMenu(selected: 1),
       drawer: NavBar(),
       appBar: AppBar(
       title: Text(widget.titulo),
       centerTitle: true,
       ),
       body: SafeArea(
       child: Column(
         children: [
           Expanded(
             child: _equipamentoo() == null || _equipamentoo()!.isEmpty
               ? const Center(
               child: CircularProgressIndicator(),
               )
               : ListView.builder(
                shrinkWrap: true,
                  itemCount: _equipamentoo()!.length,
                   itemBuilder: (context, index) {
                     return Container(
                      
                       child: Itens(
                       _equipamentoo()![index].id,
                       _equipamentoo()![index].descricao,
                       _equipamentoo()![index].tipo,
                       _equipamentoo()![index].cabine,
                       _equipamentoo()![index].portagem_id,
                       _equipamentoo()![index].selected,
                       index,
                       ),);
                       },
                       ),),
                      if (selectedEquipamentos!.length > 0) Padding(
                      padding: const EdgeInsets.symmetric(
                       
                      horizontal: 25,
                      vertical: 0,
                      ),
                      child: SizedBox(
                       width: 200,
                       //RaisedButton
                       
                       child: ElevatedButton(
                       //color: Colors.blue,
                       child: Text(
                       "Submeter (${selectedEquipamentos!.length})",
                       style: const TextStyle(
                       color: Colors.white,
                       fontSize: 16,
                       ),
                       ),
                       onPressed: () async{
                       Alert(
                       context: context,
                       type: AlertType.warning,
                       //title: "",
                       desc: "Deseja submeter (${selectedEquipamentos!.length}) equipamentos a lista??",
                       buttons: [
                        DialogButton(
                        child: const Text(
                         "Sim",
                         style: TextStyle(color: Colors.white, fontSize: 20),
                       ),
                         onPressed: () {
                           Navigator.pop(context);
                         submeter_checkList();
                         EasyLoading.show(status: 'loading...');
                         //Navigator.pop(context);
                         
                       },
                       color: Colors.blue[400],
                        ),
                        DialogButton(
                        child: const Text(
                        "Nao",
                         style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                       onPressed: () {
                       Navigator.pop(context);
                       },
                       color: Colors.red[400],
                     )
                   ],
                 ).show();
               // EasyLoading.show(status: 'loading...');
               //submeter_checkList();
                // set up the AlertDialog
  
               },
             ),
           ),
         ) else Container(),

          ],
           ),
      ),
    );
    
  }
  
   Widget Itens(int id, String descricao, String tipo,  String cabine, int portagem_id, bool selected,int index) {
    return Card(
      // color: Color.fromARGB(255, 230, 231, 235),
      elevation: 0.1,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      child: Container(
        decoration: const BoxDecoration(),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
          leading: Container(
            padding: const EdgeInsets.only(right: 12.0),
            decoration: const BoxDecoration(
              border: Border(
                  right: BorderSide(width: 1.0, color: Color.fromARGB(60, 15, 15, 15)))
            ),
             child: const Icon(Icons.computer_outlined, color: Colors.black,
             size: 25,
             ),
          ),
          title: Text(
            tipo,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
          children:  <Widget>[
            const Icon(Icons.linear_scale, color: Colors.red),
            Text(cabine, style: const TextStyle(color: Colors.black)),
          ],
        ),
          // subtitle: Text(cabine),
          trailing: selected
              ? const Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                  size: 25,
                )
              : const Icon(
                  Icons.check_circle_outline,
                  color: Colors.grey,
                  size: 25,
                ),
          onTap: () {
            setState(() {
              _equipamentoo()![index].selected = !_equipamentoo()![index].selected;
              if (_equipamentoo()![index].selected == true) {
                selectedEquipamentos?.add(Selecionados(id, tipo, descricao,cabine,portagem_id, true));
              } else if (_equipamentoo()![index].selected == false) {
                selectedEquipamentos
                    ?.removeWhere((element) => element.id == _equipamentoo()![index].id);
                    }
            });
            // print(selectedEquipamentos!.length);
          },
          
        ),
      ),
    );
    //return Divider();
    }

Future submeter_checkList() async{
  List<int> _ids = [];  
  for(var i=0;i<selectedEquipamentos!.length;i++){
        print(selectedEquipamentos![i].id);
        _ids.add(selectedEquipamentos![i].id);

    }
    var usuario=await FlutterSession().get('usuarioId');
    final url=Uri.parse(ApiConstants.checkListUrl);

    final response=await http.post(url,body: {
    "portageiro_id":jsonEncode (usuario),
    "user_id":jsonEncode (usuario),
    "equipamentos_id": jsonEncode (_ids),
    });
    print(response.body);
  if(response.statusCode==200){
    EasyLoading.dismiss();
    EasyLoading.showSuccess('Submetido com sucesso!');

    // Navigator.pop(context);
  }else{
    EasyLoading.dismiss();
    EasyLoading.showError('Erro ao submeter!');
    Navigator.pop(context);
  };
}
  
}



// --------------------------
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:flutter_session/flutter_session.dart';
// import 'package:portagem_web/screens/navbar.dart';
// import 'package:portagem_web/services/equipamento_service.dart';
// import '../model/equipamento.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';
// import '../constants.dart';
// import 'package:http/http.dart' as http;
// import 'menubottom.dart';

// class EquipamentoLista extends StatefulWidget {
//   String titulo,pesquisa;
//   EquipamentoLista({Key? key,required this.titulo,required this.pesquisa}) : super(key: key);

// @override
// _EquipamentoListaState createState() => _EquipamentoListaState();
// }
// class _EquipamentoListaState extends State<EquipamentoLista> {
// //vem da base de dados
// late List<Equipamento>? _equipamento = [];  
// //Equipamentos Selecionados na lista por checkList
// late List<Selecionados>? selectedEquipamentos = []; 

// //Equipamentos filtrados por Sala, Cabine etc, que vem da lista "_equipamento"
// List<Equipamento>? _equipamentoo(){
//    return _equipamento!
//        .where((element) =>
//            element.cabine ==widget.pesquisa)
//        .toList();
//  }

//   @override
//   void initState() {
//     super.initState();
//     _getData();
//   }
  
//   void _getData() async {
//   _equipamento = (await EquipamentoService().getEquipamentos())!;
//   Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
//    }
  
//      @override
//      Widget build(BuildContext context) {
//       return Scaffold(
//        bottomNavigationBar: BottomMenu(selected: 1),
//        drawer: NavBar(),
//        appBar: AppBar(
//        title: Text(widget.titulo),
//        centerTitle: true,
//        ),
//        body: SafeArea(
//        child: Container(
//        margin: const EdgeInsets.all(10.0),
//         height: double.infinity,
//         width: double.infinity,
//           decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(7),
//           topRight: Radius.circular(7),
//           bottomLeft: Radius.circular(7),
//           bottomRight: Radius.circular(7)
//           ),
//           boxShadow: [
//           BoxShadow(
//           color: Colors.grey.withOpacity(0.5),
//           spreadRadius: 5,
//           blurRadius: 7,
//           offset: const Offset(0, 3), // changes position of shadow
//           ),
//           ],
//           ),
//             child: Column(
//               children: [
//                 Expanded(
//                   child: _equipamentoo() == null || _equipamentoo()!.isEmpty
//                     ? const Center(
//                     child: CircularProgressIndicator(),
//                     )
//                     : ListView.builder(
//                        itemCount: _equipamentoo()!.length,
//                         itemBuilder: (context, index) {
//                           return Container(
//                             decoration: const BoxDecoration(
//                             border: Border(
//                             bottom: BorderSide(
//                             width: 3,
//                             color: Colors.black12,
//                             )
//                            )
//                                              ),
//                             child: Itens(
//                             _equipamentoo()![index].id,
//                             _equipamentoo()![index].descricao,
//                             _equipamentoo()![index].tipo,
//                             _equipamentoo()![index].cabine,
//                             _equipamentoo()![index].portagem_id,
//                             _equipamentoo()![index].selected,
//                             index,
//                             ),);
//                             },
//                             ),),
//                            if (selectedEquipamentos!.length > 0) Padding(
//                            padding: const EdgeInsets.symmetric(
//                            horizontal: 25,
//                            vertical: 0,
//                            ),
//                            child: SizedBox(
//                             width: 200,
//                             //RaisedButton
                            
//                             child: ElevatedButton(
//                             //color: Colors.blue,
//                             child: Text(
//                             "Submeter (${selectedEquipamentos!.length})",
//                             style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                             ),
//                             ),
//                             onPressed: () async{
//                             Alert(
//                             context: context,
//                             type: AlertType.warning,
//                             //title: "",
//                             desc: "Deseja submeter (${selectedEquipamentos!.length}) equipamentos a lista??",
//                             buttons: [
//                              DialogButton(
//                              child: const Text(
//                               "Sim",
//                               style: TextStyle(color: Colors.white, fontSize: 20),
//                             ),
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               submeter_checkList();
//                               EasyLoading.show(status: 'loading...');
//                               //Navigator.pop(context);
                              
//                             },
//                             color: Colors.blue[400],
//                              ),
//                              DialogButton(
//                              child: const Text(
//                              "Nao",
//                               style: TextStyle(color: Colors.white, fontSize: 20),
//                              ),
//                             onPressed: () {
//                             Navigator.pop(context);
//                             },
//                             color: Colors.red[400],
//                           )
//                         ],
//                       ).show();
//                     // EasyLoading.show(status: 'loading...');
//                     //submeter_checkList();
//                      // set up the AlertDialog
  
//                     },
//                   ),
//                 ),
//               ) else Container(),

//                ],
//            )
//         ),
//       ),
//     );
    
//   }
  
//    Widget Itens(int id, String descricao, String tipo,  String cabine, int portagem_id, bool selected,int index) {
//     return ListTile(
//       visualDensity: const VisualDensity(vertical: -2),
//       // tileColor: Colors.amber[100],
//       leading: const CircleAvatar(
//         backgroundColor: Colors.blue,
//         child: Icon(
//           Icons.computer_outlined,
//           color: Colors.white,
//           size: 20,
//         ),
//       ),
//       title: Text(
//         tipo,
//         style: const TextStyle(
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//       subtitle: Text(cabine),
//       trailing: selected
//           ? const Icon(
//               Icons.check_circle,
//               color: Colors.blue,
//             )
//           : const Icon(
//               Icons.check_circle_outline,
//               color: Colors.grey,
//             ),
//       onTap: () {
//         setState(() {
//           _equipamentoo()![index].selected = !_equipamentoo()![index].selected;
//           if (_equipamentoo()![index].selected == true) {
//             selectedEquipamentos?.add(Selecionados(id, tipo, descricao,cabine,portagem_id, true));
//           } else if (_equipamentoo()![index].selected == false) {
//             selectedEquipamentos
//                 ?.removeWhere((element) => element.id == _equipamentoo()![index].id);
//                 }
//         });
//         // print(selectedEquipamentos!.length);
//       },
      
//     );
//     //return Divider();
//     }

// Future submeter_checkList() async{
//   List<int> _ids = [];  
//   for(var i=0;i<selectedEquipamentos!.length;i++){
//         print(selectedEquipamentos![i].id);
//         _ids.add(selectedEquipamentos![i].id);

//     }
//     var usuario=await FlutterSession().get('usuarioId');
//     final url=Uri.parse(ApiConstants.checkListUrl);

//     final response=await http.post(url,body: {
//     "portageiro_id":jsonEncode (usuario),
//     "user_id":jsonEncode (usuario),
//     "equipamentos_id": jsonEncode (_ids),
//     });
//     print(response.body);
//   if(response.statusCode==200){
//     EasyLoading.dismiss();
//     EasyLoading.showSuccess('Submetido com sucesso!');

//     // Navigator.pop(context);
//   }else{
//     EasyLoading.dismiss();
//     EasyLoading.showError('Erro ao submeter!');
//     Navigator.pop(context);
//   };
// }
  
// }