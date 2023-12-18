import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tradelink/state_manager.dart';
import 'package:tradelink/custom_clipper.dart';
import 'package:tradelink/spinner.dart';
import 'package:tradelink/hex_converter.dart';

class  Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
          child:   Consumer<StateManager>(builder: (context,provider,child){

            if(provider.home_category.isEmpty){
              provider.getCategory();
              provider.getProduct();
            }
            if(provider.home_category.isEmpty){
              return spin(context);
            }
            else{
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [

                  //for the Textfield
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        width: 240,
                        height: 40,
                        alignment: Alignment.center,
                        child: TextField(



                          textAlign: TextAlign.center,
                          // textAlignVertical: TextAlignVertical.center,
                          style: TextStyle(
                            letterSpacing: 2.0,



                          ),



                          decoration: InputDecoration(

                            fillColor: convert_hex('#FFFFFF'),
                            filled: true,
                            contentPadding: EdgeInsets.all(2),
                            hintText: 'search here',
                            hintStyle: TextStyle(fontSize: 15,color: convert_hex('#DFDFDF'),fontFamily:'Montserrat'),
                            prefixIcon: Icon(Icons.search),
                            prefixStyle: TextStyle(color: convert_hex('#D7D7D7')),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 0, color: Colors.white),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),



                        ),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(0,0,9,0),
                        width: 20,
                        height: 40,
                        child: Center(
                          child: Icon(Icons.notification_important_outlined
                            ,size: 22,
                          ),
                        ),
                      ),



                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [convert_hex('#0D1963'),convert_hex('#304095')]
                        )
                    ),
                    height: 200,
                    margin: EdgeInsets.symmetric(vertical: 10.00,horizontal: 0.0),
                    padding: EdgeInsets.all(4),

                    child: Row(
                      children: [

                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 200,
                            child: Card(
                                elevation: 0,
                                color: Colors.transparent,


                                child: ListTile(
                                  contentPadding: EdgeInsets.all(1.0),





                                  title: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.access_time),
                                      SizedBox(height: 8,),
                                      Text('Sell faster Buy safer',style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.white,
                                          fontSize: 20
                                      ),),
                                      SizedBox(height: 5,),

                                      Text('shop with confidence in our app,where we guarantee 100% trust and safety for all your purchases',style:
                                      TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0,
                                        fontFamily: 'Montserrat',
                                        wordSpacing: 2,
                                        letterSpacing: 2,
                                      ),),
                                    ],
                                  ),



                                  // leading: Icon(Icons.account_circle,size: 30,), // Icon on the left

                                )

                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,

                          child:
                          ClipPath(
                            clipper: Customshape(),
                            child: Container(
                              height: 250,
                              decoration: BoxDecoration(image: DecorationImage(
                                  image: AssetImage('asset/image1.png'),fit: BoxFit.cover
                              )
                              ),


                            ),
                          ),
                        )
                      ],

                    ),


                  ),
                  //for the categories
                  Container(
                    height: 100,

                    padding: EdgeInsets.all(15),
                    color:  convert_hex('#F5F5F5'),
                    // color: Colors.orange,
                    child:ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        //categories
                        for (int i = 0; i < provider.home_category.length; i++)
                          Column(
                            children: [


                              Container(
                                width: 60,
                                height:60,
                                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white
                                ),
                                // height: 20,


                                child: Center(



                                  child: Container(
                                      width: 20,
                                      height: 30,
                                      padding: EdgeInsets.all(4),
                                      alignment: Alignment.center,
                                      decoration:BoxDecoration(
                                        // color: Colors.red,
                                        image:   DecorationImage(
                                          image: AssetImage(provider.home_category[i].getUrl),
                                          fit: BoxFit.contain,
                                        ),
                                      )

                                  ),
                                ),
                              ),


                              Text(provider.home_category[i].getName,style: TextStyle(
                                fontSize: 8,
                                fontFamily: 'Inter',
                              ),),



                            ],




                          ),






                      ],
                    ),

                  ),
                  SizedBox(height: 20,),
                  //for the boots
//what i wanna take
                  for (int i = 0; i < provider.home_category.length; i++)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(provider.home_category[i].getName,style:
                              TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600
                              )
                              ),
                            ),
                            Align(alignment: Alignment.centerRight, child: Icon(Icons.read_more_outlined,size: 25,),),
                          ],
                        ),
                        Container(
                            height: 160,
                            padding: EdgeInsets.all(20),
                            // color:  convert_hex('#F5F5F5'),
                            color: Colors.transparent,
                            child:




                            ListView(
                              scrollDirection: Axis.horizontal,

                              children: [
                                //boots

                                for (int j= 0; j < provider.home_category[i].getProductsLength; j++)
                                  Container(
                                    width: 120,
                                    height:180,
                                    padding: EdgeInsets.all(5),
                                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white
                                    ),
                                    // height: 20,
                                    child: Center(
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                            onTap: () async{
                                              print('hello');
                                              String productID=provider.home_category[i].getProducts[j]['id'].toString();
                                              dynamic productData=await provider.getPlaceOrder(productID);
                                              Navigator.pushNamed(context, '/placeorder');



                                            },

                                            child: Container(
                                              width:100 ,
                                              height: 85,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  image: DecorationImage(
                                                      image: AssetImage(provider.home_category[i].getProducts[j]['url'].toString()),
                                                      fit: BoxFit.contain
                                                  )
                                              ),
                                            ),
                                          ),Text(provider.home_category[i].getProducts[j]['name'].toString(),style:
                                          TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Montserrat'
                                          )
                                            ,),
                                          Text(provider.home_category[i].getProducts[j]['price'].toString(),style: TextStyle(
                                              fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Montserrat'
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ),



                              ],
                            )





                        ),
                      ],
                    ),




                ],
              ) ;
            }
          })



      ),
    );
  }
}
