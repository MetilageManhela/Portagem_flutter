import 'dart:convert';
import 'dart:developer';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:http/http.dart' as http;
import 'package:portagem_web/model/turno.dart';
import '../constants.dart';

class TurnoService {
  
  Future<List<Turno>?> getTurnos() async {
     var usuario=await FlutterSession().get('usuarioId');
    try {
      var url = Uri.parse(ApiConstants.turno_userUrl+usuario.toString());
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Turno> _turno = turnoFromJson(response.body);
       
        return _turno;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

// Future salvar(String descricao) async{
 
//     var usuario=await FlutterSession().get('usuarioId');
//     final url=Uri.parse(ApiConstants.solicitacoes_salvarUrl);
//     final response=await http.post(url,body: {
//       "descricao":descricao,
//       "user_id":jsonEncode (usuario),

//     });
//   if(response.statusCode==200){
//     EasyLoading.dismiss();
//     EasyLoading.showSuccess('Submetido com sucesso!');
    
//   }else{
//     EasyLoading.dismiss();
//     EasyLoading.showError('Erro ao submeter!');
   
//   };
// }

}