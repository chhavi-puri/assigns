import 'package:flutter/material.dart';
import 'package:friday4/model/score.dart';
import 'package:friday4/routes/routes.dart';
import 'package:friday4/view/home.dart';
import 'package:friday4/view/newScreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  
 ChangeNotifierProvider(create: (context) =>Score(),
        
        child: MyApp(),
      ),
  );
Routes routes=Routes();
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: routes.homeScreen,
     routes: {
       routes.homeScreen:(context)=> HomeScreen(),
       routes.newScreen:(context)=> NewScreen(),
     },
       
      
    );
  }
}

