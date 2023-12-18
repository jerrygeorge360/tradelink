import 'package:flutter/material.dart';

import '/hex_converter.dart';

class AccountManagement extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: convert_hex('#D9D9D9'),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Column(

        children: [
          Column(
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage('asset/image1.png'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              // Text('change',style: TextStyle(fontSize: 10,fontFamily: 'Montserrat',fontWeight: FontWeight.w400,color: Colors.blue),)
            ],
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Container(
                // color: Colors.orange,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

                child:
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      filled: true,
                      fillColor: convert_hex('#F5F5F5'),
                      hintText: 'Phone number',
                      labelText: 'Phone number',
                      hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                      labelStyle: const TextStyle(fontFamily: 'Montserrat'),
                      border: OutlineInputBorder()

                  ),
                ),

              ),
            ]
            ,
          ),
          Column(
            children: [
              Container(
                // color: Colors.orange,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

                child:
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      filled: true,
                      fillColor:  convert_hex('#F5F5F5'),
                      hintText: 'Location',
                      labelText: 'Location',
                      hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                      labelStyle: const TextStyle(fontFamily: 'Montserrat'),
                      border: OutlineInputBorder()

                  ),
                ),

              ),
            ]
            ,
          ),
          Column(
            children: [
              Container(
                // color: Colors.orange,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

                child:
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      filled: true,
                      fillColor:  convert_hex('#F5F5F5'),
                      hintText: 'Email address',
                      labelText: 'Email address',
                      hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                      labelStyle: const TextStyle(fontFamily: 'Montserrat'),
                      border: OutlineInputBorder()

                  ),
                ),

              ),
            ]
            ,
          ),
          Column(
            children: [
              Container(
                // color: Colors.orange,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

                child:
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      filled: true,
                      fillColor:  convert_hex('#F5F5F5'),
                      hintText: 'password',
                      labelText: 'password',
                      hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                      labelStyle: const TextStyle(fontFamily: 'Montserrat'),
                      border: OutlineInputBorder()

                  ),
                ),

              ),
            ]
            ,
          ),
          ElevatedButton(onPressed: (){}, child: const Text('change',style: TextStyle(fontFamily: 'Montserrat'),), style: ElevatedButton.styleFrom(
              backgroundColor: convert_hex('#003C7BA6') // Background color
          ),)


        ],
      ),
    );
  }
}
