import 'package:flutter/material.dart';
import 'package:tradelink/custom_clipper.dart';
import 'package:tradelink/hex_converter.dart';

class BestOffers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: convert_hex('#D9D9D9'),
      body:

      Column(
        children: [

          SafeArea(
            child: Container(
              width:MediaQuery.of(context).size.width ,
              color:convert_hex('#003C7B'),
              height: 100,
              child: Row(

                children: [
                  Expanded(

                    child: Container(
                      color:convert_hex('#003C7B'),
                      padding: EdgeInsets.all(20),
                      child:
                      ClipPath(
                        // clipper: BestOfferShape(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Best Offers',style: TextStyle(fontFamily: 'Montserrat',color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),),
                            Text('for the week',style: TextStyle(fontFamily: 'Montserrat',color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ClipPath(
                      clipper: BestOfferShape(),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('asset/image1.png'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                Container(

                  color: Colors.white,
                  child: ListTile(
                    style: ListTileStyle.drawer,
                    titleTextStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        color: convert_hex('#000000'),
                      fontWeight: FontWeight.w700
                    ),

                    contentPadding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                    leading: Container(
                      width: 70,
                      // height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/image1.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    title: Text('Classic Hand Bag'),
                    subtitle: Text('100000',style: TextStyle(
                      color:convert_hex('#003C7B'),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),),
                  ),
                ),
                SizedBox(height: 10),



              ],
            ),
          ),


        ],

      )



    );
  }
}
