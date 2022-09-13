import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:portagem_web/model/equipamento.dart';
import 'package:portagem_web/services/equipamento_service.dart';
import 'contactmodel.dart';


class Equipamento_Check extends StatefulWidget {
  @override
  _Equipamento_Check createState() => _Equipamento_Check();
}

class _Equipamento_Check extends State<Equipamento_Check> {

  late List<Equipamento>? _equipamento = []; 
  late List<ContactModel>? _userModel = []; 

   void _getData() async {
  _equipamento = (await EquipamentoService().getEquipamentos())!;
  Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  List<ContactModel> contacts = [
    ContactModel("Computador 1", "0778979454", false),
    ContactModel("Computador 2", "0766223795", false),
    ContactModel("Computador 3", "0749112016", false),
    ContactModel("Computador 4", "0775286570", false),
    ContactModel("Computador 1", "0744795640", false),
    ContactModel("Computador ", "0707404370",  false),
    ContactModel("Computador 3", "0772680138", false),
    ContactModel("Computador 3", "0772680138", false),
    ContactModel("Computador 3", "0772680138", false),
    ContactModel("Computador 3", "0772680138", false),
    ContactModel("Computador 3", "0772680138", false),
  ];

  List<ContactModel>? selectedContacts = [];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Equipamentos Activos"),
        centerTitle: true,
        //backgroundColor: Colors.green[700],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: contacts.length,
                    itemBuilder: (BuildContext context, int index)  {
                      // return item
                      return ContactItem(
                        contacts[index].name,
                        contacts[index].phoneNumber,
                        contacts[index].isSelected,
                        index,
                      );
                    }
                    )
              ),
              selectedContacts!.length > 0 ? Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      "Submeter (${selectedContacts!.length})",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      //print("Delete List Lenght: ${selectedContacts!.length}");
                      submeter();
                    },
                  ),
                ),
              ): Container(),
            ],
          ),
        ),
      ),
    );
  }

  Widget ContactItem(String name, String phoneNumber, bool isSelected, int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green[700],
        child: Icon(
          Icons.computer_outlined,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(phoneNumber),
      trailing: isSelected
          ? Icon(
              Icons.check_circle,
              color: Colors.green[700],
            )
          : Icon(
              Icons.check_circle_outline,
              color: Colors.grey,
            ),
      onTap: () {
        setState(() {
          contacts[index].isSelected = !contacts[index].isSelected;
          if (contacts[index].isSelected == true) {
            selectedContacts?.add(ContactModel(name, phoneNumber, true));
          } else if (contacts[index].isSelected == false) {
            selectedContacts
                ?.removeWhere((element) => element.name ==  contacts[index].name);
          }
        });
      },
      
    );
  }
}
Future submeter () async{
  List<String> comments = ["1st", "2nd", "3rd"];
   Map<String, dynamic> args = {"comments": comments};
   var body = json.encode(args);
   final url=Uri.parse('http://192.168.0.172:8000/api/user-api');
  final response=await http.post(url,body: body
  
);print(response.body);
 if (response.statusCode==200){
     // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
     }else{

  }
}