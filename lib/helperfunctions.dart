
import 'package:flutter/material.dart';

List<Widget> generate_widgets(int number){
  List<Widget> TheWidgets=[];
  for(int i =0; i <number;i++){
    Widget widget=Text('');

    TheWidgets.add(widget);
  }
  return TheWidgets;
}

List<Widget> generateWidgets(int number) {
  List<Widget> widgets = [];
  for (int i = 0; i < number; i++) {
    Widget widget = Text('Widget $i');
    widgets.add(widget);
  }
  return widgets;
}


// List<Widget> generate_widgets(number,theClass){
//   List<Widget> TheWidgets=[];
//   for(int i =0; i <number;i++){
//     TheWidgets.add();
//   }
//   return TheWidgets;
// }