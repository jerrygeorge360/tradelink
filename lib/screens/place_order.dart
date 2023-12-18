import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tradelink/hex_converter.dart';
import 'package:tradelink/custom_clipper.dart';
import 'package:tradelink/state_manager.dart';



class PlaceOrder extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: convert_hex('#F5F5F5'),


        body:
        SingleChildScrollView(
          child:Consumer<StateManager>(builder: (context,provider,child){
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                //background

                Container(
                  height: 250,


                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(provider.placeOrder['url']),fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(provider.placeOrder['name'],style: TextStyle(fontFamily: 'Inter',fontSize: 17,fontWeight: FontWeight.w400),),
                      Text(provider.placeOrder['price'].toString(),style: TextStyle(fontFamily: 'Montserrat',color: convert_hex('#003C7B'),fontWeight: FontWeight.w600,fontSize: 27)),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for(int i=0;i<provider.placeOrder['specs']['specs_length'];i++)
                          Container(
                            width: 40,
                            height: 20,
                            padding: EdgeInsets.all(3),

                            decoration: BoxDecoration(


                                color: convert_hex('#D9D9D9'),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Text(provider.placeOrder['specs']['specs'][i],style: TextStyle(fontFamily: 'Montserrat',fontSize: 10,fontWeight: FontWeight.w400,),),
                          ),


                          // Container(
                          //   width: 40,
                          //   height: 20,
                          //   padding: EdgeInsets.all(3),
                          //
                          //   decoration: BoxDecoration(
                          //
                          //
                          //       color: convert_hex('#D9D9D9'),
                          //       borderRadius: BorderRadius.circular(12)
                          //   ),
                          //   child: Text('Specs',style: TextStyle(fontFamily: 'Montserrat',fontSize: 10,fontWeight: FontWeight.w400,),),
                          // ),
                        ],),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.star_rate ,color: convert_hex('#003C7B'),),
                          Icon(Icons.star_rate ,color: convert_hex('#003C7B'),),
                          Icon(Icons.star_rate ,color: convert_hex('#003C7B'),),
                          Icon(Icons.star_rate ,color: convert_hex('#003C7B'),),
                          Icon(Icons.star_rate ,color: convert_hex('#003C7B'),),


                        ],
                      )
                      ,
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: convert_hex('#D9D9D9'),),
                          Text(provider.placeOrder['location'],style: TextStyle(fontFamily: 'Montserrat',color:convert_hex('#D9D9D9'),fontWeight: FontWeight.w600 )),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                          padding: EdgeInsets.all(4),
                          child: Text(provider.placeOrder['description']
                              ,style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w300))),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: double.infinity,

                        child: Wrap(
                          runSpacing: 40,
                          alignment: WrapAlignment.spaceEvenly,
                          runAlignment: WrapAlignment.spaceEvenly,
                          children: [
                            for(int i=0;i<provider.placeOrder['other_url']['length'];i++)
                              Container(
                              width: 145,
                              height: 146,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(provider.placeOrder['other_url']['url'][i]),
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),


                            // Container(
                            //   width: 145,
                            //   height: 146,
                            //   decoration: BoxDecoration(
                            //       image: DecorationImage(
                            //           image: AssetImage('asset/image1.png'),
                            //           fit: BoxFit.cover
                            //       ),
                            //       borderRadius: BorderRadius.circular(50)
                            //   ),
                            // ),
                            // Container(
                            //   width: 145,
                            //   height: 146,
                            //   decoration: BoxDecoration(
                            //       image: DecorationImage(
                            //           image: AssetImage('asset/image1.png'),
                            //           fit: BoxFit.cover
                            //       ),
                            //       borderRadius: BorderRadius.circular(50)
                            //   ),
                            // ),
                            // Container(
                            //   width: 145,
                            //   height: 146,
                            //   decoration: BoxDecoration(
                            //       image: DecorationImage(
                            //           image: AssetImage('asset/image1.png'),
                            //           fit: BoxFit.cover
                            //       ),
                            //       borderRadius: BorderRadius.circular(50)
                            //   ),
                            // ),

                          ],
                        ),
                      ),

                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context, '/register');
                          },
                              style: ElevatedButton.styleFrom(
                                  primary: convert_hex('#003C7BA6') // Background color
                              ),
                              child: Text('Buy Now',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat'),)),
                        ],
                      )

                    ],
                  ),
                )





              ],



            );
          },)


        ),
      );
  }
}
