

import 'package:flutter/material.dart';
import 'package:portagem_web/screens/navbar.dart';
import '../model/user_model.dart';
import '../services/api_service.dart';
import 'menubottom.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<UserModel>? _userModel = []; 
  @override
  void initState() {
    super.initState();
    _getData();
  }
   //
  void _getData() async {
  _userModel = (await ApiService().getUsers())!;
  Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(selected: 1),
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text('Lista de equipamentos'),
        centerTitle: true,
      ),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _userModel!.length,
              itemBuilder: (context, index) {
                return Card(
                
                  child:ListTile(
                  tileColor: Colors.orangeAccent[100] ,
                  leading: FlutterLogo(),
                    title: Text(_userModel![index].name),
                    trailing: Icon(Icons.more_vert),
                    subtitle: Text(_userModel![index].address.city),
                    dense: true,
                    isThreeLine: true,
                    onTap: () {
                      return null;
                    }, 
                  ),

                );
              },
            ),
    );
  }
}
