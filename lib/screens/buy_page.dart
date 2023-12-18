import 'package:flutter/material.dart';
import 'package:tradelink/hex_converter.dart';
import 'package:tradelink/custom_clipper.dart';



class BuyPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: convert_hex('#F5F5F5'),


      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            //background

            ClipPath(
              clipper: RegCustomShape(),
              child: Container(
                height: 250,


                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/phone.png'),fit: BoxFit.cover
                    )
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('iPhone 11',style: TextStyle(fontFamily: 'Inter',fontSize: 17,fontWeight: FontWeight.w400),),
                  Text('Price',style: TextStyle(fontFamily: 'Montserrat',color: convert_hex('#003C7B'),fontWeight: FontWeight.w600,fontSize: 27)),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 40,
                        height: 20,
                        padding: EdgeInsets.all(3),

                        decoration: BoxDecoration(


                            color: convert_hex('#D9D9D9'),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Text('Specs',style: TextStyle(fontFamily: 'Montserrat',fontSize: 10,fontWeight: FontWeight.w400,),),
                      ),
                      Container(
                        width: 40,
                        height: 20,
                        padding: EdgeInsets.all(3),

                        decoration: BoxDecoration(


                            color: convert_hex('#D9D9D9'),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Text('Specs',style: TextStyle(fontFamily: 'Montserrat',fontSize: 10,fontWeight: FontWeight.w400,),),
                      ),


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
                      Text('Location',style: TextStyle(fontFamily: 'Montserrat',color:convert_hex('#D9D9D9'),fontWeight: FontWeight.w600 )),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                      padding: EdgeInsets.all(4),
                      child: Text('The phone is a sleek and modern device with a vibrant touchscreen display on the front. It boasts impressive features and a powerfulprocessor, offering a seamless user experience. However, uponcloser inspection, you notice a small crack at the back of the phone. '
                          ,style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w300))),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: double.infinity,

                    child: Wrap(
                      runSpacing: 40,
                      alignment: WrapAlignment.spaceEvenly,
                      runAlignment: WrapAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 145,
                          height: 146,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/image1.png'),
                                  fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        Container(
                          width: 145,
                          height: 146,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/image1.png'),
                                  fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        Container(
                          width: 145,
                          height: 146,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/image1.png'),
                                  fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        Container(
                          width: 145,
                          height: 146,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/image1.png'),
                                  fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                primary: convert_hex('#003C7BA6') // Background color
                            ),
                            child: Text('Buy Now',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat'),)),
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                primary: convert_hex('#003C7BA6') // Background color
                            ),
                            child: Text('Add to cart',style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Montserrat'),)),
                      ],
                    ),
                  )

                ],
              ),
            )





          ],



        ),
      ),
    );
  }
}
