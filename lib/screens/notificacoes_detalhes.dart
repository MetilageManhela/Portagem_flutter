import 'package:flutter/material.dart';
import 'package:portagem_web/model/notificacao.dart';



class Detalhe_Notificacoes extends StatelessWidget {
  Detalhe_Notificacoes({Key? key, required this.notificacao}) : super(key: key);
  Notificacao notificacao;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            BGFullScreen(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 213.0),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            
                            Text(
                              notificacao.tema,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: 25.0,
                              ),
                            ),
                           
                          ],
                        ),
                       
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                   Container(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
                    height: 190.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //tag
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                
                             
                              ],
                            ),
      
                            //duration
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  //tag icon
                                  const Icon(
                                    Icons.schedule,
                                    color: Colors.blue,
                                    size: 40,
                                  ),
      
                                  const SizedBox(width: 8.0),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        notificacao.data.toString(),
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.2),
                                          fontSize: 14.0,
                                          // fontWeight: bold,
                                        ),
                                      ),
                                      const SizedBox(height: 3.0),
                                      Row(
                                        children: const <Widget>[
                                        
                                          SizedBox(width: 3.0),
                                         
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
      
                        // description
                        const SizedBox(height: 24.0),
      
                        Text(
                          notificacao.descricao,
                          style: const TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36.0),
          ),
        ),
        child: const Text(
          'Marcar como nao lida',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class BGFullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       height:MediaQuery.of(context).size.height*0.45,
          width:MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.fill,
         image: ExactAssetImage('assets/imagens/portagem.jpeg'),
         ))
    );
  }
}
