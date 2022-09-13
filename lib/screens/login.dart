import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../constants.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
  }
class _LoginPageState extends State<LoginPage> {
   final _formKey = GlobalKey<FormState>();
   final emailController = TextEditingController();
   final passwordController = TextEditingController();
   @override
  void dispose() {
     emailController.dispose();
     passwordController.dispose();
    super.dispose();
     }
   

//metodo para autenticacao 
bool hide = true;
@override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor: Colors.blue,
      body:SingleChildScrollView(
        child: Stack(
          
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50,left: 40),
              child: Text("Bem \nVindo",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 60,fontWeight: FontWeight.w400),),
              )
 ,            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
              width: double.infinity,
              height: 450,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Entrar",style: TextStyle(fontSize: 45,fontWeight: FontWeight.w400),),
                    const SizedBox(height: 10,),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: "E-mail",),
                        validator: (value) {
                         if (value == null || value.isEmpty) {
                         return 'O campo não pode ser nulo';
                         }
                          return null;
                         },
                    ),
                    const SizedBox(height: 15,),
                    TextFormField(
                      controller: passwordController,
                      obscureText: hide,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon:IconButton(onPressed: (){
                          setState(() {
                            hide = !hide;
                          });
                        },icon:hide?const Icon(Icons.visibility_off):Icon(Icons.visibility),)
                      ),
                      validator: (value) {
                         if (value == null || value.isEmpty) {
                         return 'O campo não pode ser nulo';
                         }
                          return null;
                         },
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(onPressed: (){},child: Text("Esqueceu?"),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 60)
                          ),
                          onPressed: (){
                            // EasyLoading.show(status: 'loading...');

                            // login(emailController.text, passwordController.text);
                             
                            
                          }, child: const Text("Entrar")
                          ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Text("Don't have an account"),
                    //     TextButton(onPressed: (){
                        
                    //     }, child: Text("Sign Up? "))
                    //   ],
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    
  }
}