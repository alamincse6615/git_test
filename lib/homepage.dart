import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  late String msg;

  HomePage(String msg, {Key? key}) : super(key: key){
    this.msg = msg;
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("testting page"),
      ),
      body: Text(widget.msg),
    );
  }
}
