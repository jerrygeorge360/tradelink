import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:tradelink/route.dart';
import 'package:tradelink/state_manager.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context)=>StateManager(),
      child:MaterialApp(
        initialRoute: '/login',
        routes: getRoutes(),
      ) ,
    )

  );
}








