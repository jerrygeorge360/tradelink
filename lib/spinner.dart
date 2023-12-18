import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget spin(context){
  return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [

          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.8,
            child: Center(
              child: SpinKitRipple(
                color: Colors.black,
                size: 250.0,
              ),
            ),
          )

    ],
  );
}