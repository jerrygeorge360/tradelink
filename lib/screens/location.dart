import 'package:flutter/material.dart';

import '../hex_converter.dart';


class LocationPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:
      SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,

                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage('asset/location.png'),
                        fit: BoxFit.contain
                    )
                ),
              ),
              SizedBox(height: 20,),
              Container(height:40,width: MediaQuery.of(context).size.width-20,color: Colors.transparent,child: TextField(
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.white



                ),



                decoration: InputDecoration(

                  fillColor:convert_hex('#D7D7D7'),
                  filled: true,
                  contentPadding: EdgeInsets.all(2),
                  hintText: 'Type your location here',
                  hintStyle: TextStyle(fontSize: 15,color: Colors.white,fontFamily:'Montserrat'),
                  prefixIcon: Icon(Icons.search),
                  prefixStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 0, color: Colors.white),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),


              )),
              SizedBox(height: 250,),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      primary: convert_hex('#003C7BA6') // Background color
                  ),
                  child: Text('Proceed',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat'),)),
            ],

          ),
        ),
      ),
    );
  }
}
