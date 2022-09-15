import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';


class Login2 extends StatefulWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
 
     return Container(
      // decoration: const BoxDecoration(
      //     image: DecorationImage(
      //   fit: BoxFit.cover,
      //   image: NetworkImage(
      //     'https://www.kindacode.com/wp-content/uploads/2021/01/blue.jpg',
      //   ),
        
      // )),
      child: Scaffold( 
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: const Text('Login '),),
          
            //  bottomNavigationBar: BottomMenu(selected: 1,),
          body: Stack(
            
            children: [
            Container(
              color: Colors.blue,
              height: MediaQuery.of(context).size.height*0.40,
            ),
           
              Center(
              child: Card(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
                elevation: 7,
                color: Colors.white,
                child: Container(
                  width: MediaQuery.of(context).size.width*0.85,
                  height: MediaQuery.of(context).size.height*0.65,
                  alignment: Alignment.center,
                  // child: const Text('metilage hilario',
                  //     style: TextStyle(fontSize: 24)),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  
                  children: [

            Container(
          child: Row(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You are at center!'),
              
            ],
          ),
        ),
                ],
                ),
                 

                ),
              ),
            ),]
          )),
    );
  }
}




