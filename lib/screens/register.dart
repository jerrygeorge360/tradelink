import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tradelink/custom_clipper.dart';
import 'package:tradelink/hex_converter.dart';
import 'package:tradelink/state_manager.dart';

class RegisterPage extends StatefulWidget {

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              child: Consumer<StateManager>(builder: (context,provider,child){
                return Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Register' ,style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 32
                      ),),

                      //name
                      SizedBox(height: 30,),


                      TextFormField(
                        onChanged: (value){
                          provider.getRegisterName(value);
                          // print(value);
                          print(provider.RegName);

                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return provider.RegMessage;
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
                            provider.getRegisterEmail(value);
                            // print(value);
                            print(provider.RegEmail);

                          },
                        validator: (value){
                          if(value!.isEmpty){
                            return provider.RegMessage;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'Email',
                            labelText: 'email',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: convert_hex('#D9D9D9')
                        ),
                      ),
                      SizedBox(height: 25,),

                      TextFormField(
                        onChanged: (value){
                          provider.getRegisterPassword(value);
                          // print(value);
                          print(provider.RegPassword);

                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return provider.RegMessage;
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
                      DropdownButton(items: [], onChanged: (new_value){})
                      ,

                      SizedBox(height: 25,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: convert_hex('#003C7BA6') // Background color
                        ),
                        child: Text('Sign Up'),
                        onPressed: () {
                          if(_formkey.currentState!.validate()) {
                            provider.sendRegister();
                            _formkey.currentState?.reset();
                          }
                        },
                      ),

                      SizedBox(height: 25,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [ Text('Already have an account?'
                          ,style: TextStyle(fontSize: 12,fontFamily: 'Montserrat',color: convert_hex('#6D6D6D')),),
                          Text('Login',style: TextStyle(fontSize: 12,fontFamily: 'Montserrat',color: convert_hex('#304095')))],)



                    ],
                  ),
                );
              })

            )


          ],



        ),
      ),
    );
  }
}
