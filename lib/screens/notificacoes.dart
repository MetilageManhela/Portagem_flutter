import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:portagem_web/model/notificacao.dart';

import '../services/notificacoes_service.dart';
import 'notificacoes_detalhes.dart';

class Notificacoes extends StatefulWidget {
  const Notificacoes({Key? key}) : super(key: key);

  @override
  State<Notificacoes> createState() => _NotificacoesState();
}

class _NotificacoesState extends State<Notificacoes> {
  late List<Notificacao>? _notificacao = [];  
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
  _notificacao = (await NotificacaoService().getNotificaoes())!;
  Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Minhas Notificações"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: 
              _notificacao == null || _notificacao!.isEmpty
                    ? const Center(
                    child: CircularProgressIndicator(),
                    )
                : ListView.builder(
                  itemCount: _notificacao?.length,
                  itemBuilder: (context, index) {
                  var objectoLista = _notificacao![index];
               return Card(
                color: index % 2 == 0 ? Colors.green[300] : Colors.cyan[200],
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  title: Text(objectoLista.tema), 
                  leading: const CircleAvatar(
                    child:  Icon(Icons.notification_important),
                  ),
                  onTap: () {
                   NotificacaoService().updateNotificacoes(7);
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detalhe_Notificacoes(notificacao: objectoLista,)));
                   
                  }
                  ),
              );
            },
            // separatorBuilder: (context, index) {
            //   return const Divider(
            //     color: Color.fromARGB(255, 54, 244, 149),
              
            //     indent: 20,
            //     endIndent: 20,
            //   );
            // },
            // itemCount: lista.length,
          ),
            )
          ],
          
        ),
      ),
    );
  }
}
