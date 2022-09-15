import 'dart:convert';
import 'dart:developer';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:http/http.dart' as http;
import '../constants.dart';
import '../model/solicitacao.dart';



class SolicitacaoService {
 //lista solicitacao
  Future<List<Solicitacao>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.solicitacoesUrl);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Solicitacao> _solicitacao = solicitacaoFromJson(response.body);
       
        return _solicitacao;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
//salva solicitacao
Future salvar(String descricao) async{
 
    var usuario=await FlutterSession().get('usuarioId');
    final url=Uri.parse(ApiConstants.solicitacoes_salvarUrl);
    final response=await http.post(url,body: {
      "descricao":descricao,
      "user_id":jsonEncode (usuario),

    });
  if(response.statusCode==200){
    EasyLoading.dismiss();
    EasyLoading.showSuccess('Submetido com sucesso!');
    
  }else{
    EasyLoading.dismiss();
    EasyLoading.showError('Erro ao submeter!');
   
  };
}

}