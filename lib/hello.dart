import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  String msg="";
  Hello(String message){
    msg = message;
  }

  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title:Text("Hello world")
     ),
      body: Center(child: Text(widget.msg)),
    );
  }
}
