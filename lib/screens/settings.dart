import 'package:flutter/material.dart';
import 'package:tradelink/hex_converter.dart';



class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
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
            children: [Text('Account Management',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat',fontSize: 15),)],)
            ,trailing: Icon(Icons.arrow_forward_ios_rounded),),

        ),
          Container(
            // color: Colors.orange,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

            child: ListTile(
              tileColor: Colors.white,
              title:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text('Register as vendor',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat',fontSize: 15),)],)
              ,trailing: Icon(Icons.arrow_forward_ios_rounded),),

          ),
          Container(
            // color: Colors.orange,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

            child: ListTile(
              tileColor: Colors.white,
              title:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text('Wish list',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat',fontSize: 15),)],)
              ,trailing: Icon(Icons.arrow_forward_ios_rounded),),

          ),
          Container(
            // color: Colors.orange,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

            child: ListTile(
              tileColor: Colors.white,
              title:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text('Address book',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat',fontSize: 15),)],)
              ,trailing: Icon(Icons.arrow_forward_ios_rounded),),

          ),
          Container(
            // color: Colors.orange,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

            child: ListTile(
              tileColor: Colors.white,
              title:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text('Payment method',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat',fontSize: 15),)],)
              ,trailing: Icon(Icons.arrow_forward_ios_rounded),),

          ),
          Container(
            // color: Colors.orange,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),

            child: ListTile(
              tileColor: Colors.white,
              title:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text('Logout',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Montserrat',fontSize: 15),)],)
              ,trailing: Icon(Icons.logout_outlined),),

          ),
        ]
        ,
      ),

    );
  }
}
