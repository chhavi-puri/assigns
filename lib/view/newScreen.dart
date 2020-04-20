import 'package:flutter/material.dart';
import 'package:friday4/component/appBar.dart';
import 'package:friday4/component/textStyle.dart';
import 'package:friday4/routes/routes.dart';
import 'package:friday4/utils/colors.dart';

class NewScreen extends StatefulWidget {
  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      appBar:  AppBar(
        backgroundColor: red,
        title: text,
      ),
      body: Center(
        child: RaisedButton(
          color: red,
          onPressed: (){Navigator.pushNamed(context, Routes().homeScreen);},
          child: Text('Replay', style: textStyle)),
      ),
    );
  }
}