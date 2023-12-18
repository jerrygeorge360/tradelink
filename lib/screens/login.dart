import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tradelink/hex_converter.dart';
import 'package:tradelink/custom_clipper.dart';
import 'package:tradelink/state_manager.dart';
class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: convert_hex('#F5F5F5'),

      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            //background

            ClipPath(
              clipper: RegCustomShape(),
              child: Container(
                height: 250,


                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/registerbg.png'),fit: BoxFit.cover
                    )
                ),
              ),
            ),
            //form
            Container(
              color: Colors.transparent,
              padding: EdgeInsets.all(30),
              child:Consumer<StateManager>(builder: (context,provider,child){
                return Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Login' ,style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 32
                      ),),

                      //name
                      SizedBox(height: 30,),
                      TextFormField(
                        onChanged: (value){
                          provider.getLoginName(value);
                        },
                        validator: (value){
                        if(value!.isEmpty){
                        return provider.LogMessage;
                        }
                        return null;
                        },

                        decoration: InputDecoration(
                            filled: true,
                            fillColor: convert_hex('#D9D9D9'),
                            hintText: 'Username',
                            labelText: 'username',
                            border: OutlineInputBorder()
                        ),
                      ),
                      SizedBox(height: 25,),


                      TextFormField(

                        onChanged: (value){
                          provider.getLoginPassword(value);
                        },


                        validator: (value){
                          if(value!.isEmpty){
                            return provider.LogMessage;
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'password',
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor:convert_hex('#D9D9D9'),
                        ),


                      ),
                      SizedBox(height: 25,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: convert_hex('#003C7BA6') // Background color
                        ),
                        child: Text('Login'),
                        onPressed: (){
                          if(_formkey.currentState!.validate()){
                            provider.sendLogin();
                            _formkey.currentState?.reset();


                          }
                        },
                      ),
                      SizedBox(height: 25,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [ Text('Don\'t have an account?'
                          ,style: TextStyle(fontSize: 12,fontFamily: 'Montserrat',color: convert_hex('#6D6D6D')),),
                          Text('Sign up',style: TextStyle(fontSize: 12,fontFamily: 'Montserrat',color: convert_hex('#304095')))],)



                    ],
                  ),
                );
              },)



            )


          ],



        ),
      ),
    );
  }
}
