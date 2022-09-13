import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:portagem_web/model/equipamento.dart';
import 'package:portagem_web/model/provincia.dart';
import '../constants.dart';



class EquipamentoService {

  Future<List<Equipamento>?> getEquipamentos() async {
    try {
      var url = Uri.parse(ApiConstants.equipamentosUrl);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Equipamento> _equipamento = equipamentoFromJson(response.body);
       
        return _equipamento;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
 

Future<http.Response> create(String descricao) async {
  return http.post(
      Uri.parse(ApiConstants.provinciaUrl),
    //Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'descricao': descricao,
      //'eliminadoo': eliminado.toString(),
    }),
  );
}

Future update(int id, String descricao) async{
  final url=Uri.parse('${ApiConstants.provinciaUrl}/${id}');
  final response=await http.put(url,body: {
  "id":"$id",
  "descricao":descricao,
  
 }
 );print (response.statusCode);
}
Future deleteProvincia(int id) async{
  final url=Uri.parse('${ApiConstants.provinciaUrl}/${id}');
  final response=await http.delete(url);
  print (response.statusCode);
  }

}




