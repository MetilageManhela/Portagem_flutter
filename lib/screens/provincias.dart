import 'package:flutter/material.dart';
import 'package:portagem_web/screens/navbar.dart';
import 'package:portagem_web/services/provincia_service.dart';
import '../model/provincia.dart';



class Homee extends StatefulWidget {
  const Homee({Key? key}) : super(key: key);

  @override
  _HomeeState createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  late List<Provincia>? _userModel = []; 
  @override
  void initState() {
    super.initState();
    _getData();
  }
   //
  void _getData() async {
  _userModel = (await ProvinciaService().getUsers())!;
  Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text('Lista de equipamentos'),
        backgroundColor: Colors.cyanAccent,
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
                  
                   leading: FlutterLogo(),
                    title: Text(_userModel![index].descricao),
                    trailing:
        IconButton(
          icon: const Icon(Icons.delete),
          tooltip: 'I',
          onPressed: () {
             ProvinciaService().deleteProvincia(_userModel![index].id);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar (content: Text("Dados actualizados")));
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Homee()));
            
          },
        ),
                    subtitle: Text(_userModel![index].descricao),
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
