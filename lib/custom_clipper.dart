import 'package:flutter/material.dart';

class Customshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
 path.lineTo(0, 40);
 path.lineTo(width-80, height);
 path.lineTo(width, height);
 path.lineTo(width, 0);


    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}



class RegCustomShape extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    double height=size.height;
    double width=size.width;

    var path = Path();

    path.lineTo(0, height/1.75);
    path.quadraticBezierTo(width/2, height, width, height-10);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }

}



class BestOfferShape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height =size.height;

    var path =Path();

    path.lineTo(50, height);
    path.lineTo(width, height);
    path.lineTo(width, 0);
    path.close();
    return path;


  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}