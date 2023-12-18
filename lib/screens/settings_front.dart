import 'package:flutter/material.dart';

import '../hex_converter.dart';


class SettingsFront extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: convert_hex('#F5F5F5'),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body:

      Column(
        children: [
          Container(
            // color: Colors.orange,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

            child: ListTile(
              tileColor: Colors.white,
              title:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text('General',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat',fontSize: 15),)],)
              ,trailing: Icon(Icons.arrow_forward_ios_rounded),),

          ),
          Container(
            // color: Colors.orange,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

            child: ListTile(
              tileColor: Colors.white,
              title:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text('Privacy & Security',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat',fontSize: 15),)],)
              ,trailing: Icon(Icons.arrow_forward_ios_rounded),),

          ),
          Container(
            // color: Colors.orange,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

            child: ListTile(
              tileColor: Colors.white,
              title:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text('Help & Support',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat',fontSize: 15),)],)
              ,trailing: Icon(Icons.arrow_forward_ios_rounded),),

          ),
          Container(
            // color: Colors.orange,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

            child: ListTile(
              tileColor: Colors.white,
              title:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text('App Version',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat',fontSize: 15),)],)
              ,trailing: Icon(Icons.arrow_forward_ios_rounded),),

          ),
          Container(
            // color: Colors.orange,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

            child: ListTile(
              tileColor: Colors.white,
              title:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text('Feedback and Rating',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat',fontSize: 15),)],)
              ,trailing: Icon(Icons.arrow_forward_ios_rounded),),

          ),

        ]
        ,
      ),

    );
  }
}
