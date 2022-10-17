import 'dart:convert';
import 'dart:developer';
import 'package:flutter_session/flutter_session.dart';
import 'package:http/http.dart' as http;
import 'package:portagem_web/model/notificacao.dart';
import '../constants.dart';



class NotificacaoService {
  
    Future<List<Notificacao>?> getNotificaoes() async {
    var usuario=await FlutterSession().get('usuarioId');
    try {
      var url = Uri.parse(ApiConstants.notificacoes_userUrl+usuario.toString()); 
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Notificacao> _notificacao = notificacaoFromJson(response.body);
       
        return _notificacao;
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
// Muda o status da notificacao para lida apois clicar
Future updateNotificacoes (int id) async{
  final url=Uri.parse('${ApiConstants.updateNotificacoes}/${id}');
  final response=await http.post(url,body: {
  "id":"$id",
  }
 );print (response.statusCode);


}
Future deleteProvincia(int id) async{
  final url=Uri.parse('${ApiConstants.provinciaUrl}/${id}');
  final response=await http.delete(url);
  print (response.statusCode);
  }

}

