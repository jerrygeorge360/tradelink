import 'package:flutter/material.dart';
import 'package:tradelink/hex_converter.dart';
import 'package:tradelink/custom_clipper.dart';



class OTPPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: convert_hex('#1B3687'),

      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            //background

            ClipPath(
              clipper: RegCustomShape(),
              child: Container(
                height: 350,


                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/registerbg.png'),fit: BoxFit.cover
                    )
                ),
              ),
            ),
            //form
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: 
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Otp verification ',style: TextStyle(color: Colors.white,fontFamily: 'Montserrat',fontSize: 25,fontWeight: FontWeight.w600),),SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical:0,horizontal: 4),
                        width: 60,
                        height: 80,
                        // color: Colors.red,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 3
                          ),
                          borderRadius: BorderRadius.circular(40),

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical:0,horizontal: 4),
                        width: 60,
                        height: 80,
                        // color: Colors.red,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              width: 3
                          ),
                          borderRadius: BorderRadius.circular(40),

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical:0,horizontal: 4),
                        width: 60,
                        height: 80,
                        // color: Colors.red,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              width: 3
                          ),
                          borderRadius: BorderRadius.circular(40),

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical:0,horizontal: 4),
                        width: 60,
                        height: 80,
                        // color: Colors.red,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              width: 3
                          ),
                          borderRadius: BorderRadius.circular(40),

                        ),
                      ),
                    ],
                  )
                  ],
                ),
              ),
            )


          ],



        ),

    );
  }
}
