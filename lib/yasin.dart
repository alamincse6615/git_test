import 'package:flutter/material.dart';

class Yasin extends StatefulWidget {
  const Yasin({Key? key}) : super(key: key);

  @override
  _YasinState createState() => _YasinState();
}

class _YasinState extends State<Yasin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dadicated sir"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              Image.asset("Images/one.jpg"),

              Image.asset("Images/two.jpg"),
            Image.asset("Images/one.jpg"),

            Image.asset("Images/two.jpg"),

          ],
        ),
      ),
    );
  }
}
