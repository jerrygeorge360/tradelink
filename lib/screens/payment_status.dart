import 'package:flutter/material.dart';

class PaymentStatus extends StatelessWidget {
  const PaymentStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:
      SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage('asset/cart.png'),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 20,),
            Text('Your order has been received',style: TextStyle(fontFamily:'Montserrat',fontWeight: FontWeight.w500),)
          ],

        ),
      ),
    );



  }
}
