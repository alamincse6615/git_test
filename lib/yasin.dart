import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Yasin extends StatefulWidget {
  const Yasin({Key? key}) : super(key: key);

  @override
  _YasinState createState() => _YasinState();
}

class _YasinState extends State<Yasin> {
  final TextValue = TextEditingController();


  @override
  void dispose() {
    TextValue.dispose();
  }

  String result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dadicated sir"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(50),),
                    child:
                    Image.asset("Images/one.jpg",),

        ),
                ),
              title: Text("Home"),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              Image.asset("Images/one.jpg"),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Younter your number",
                  border: OutlineInputBorder(),
                ),
                controller: TextValue,
              ),
            ),
            SizedBox(height: 20,),
            Text("$result"),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    var Value = int.parse(TextValue.text);
                    switch (Value) {
                      case 80:
                        result = ("A+");
                        break;
                      case 70:
                        result = ("A");
                        break;
                      case 60:
                        result = ("A-");
                        break;
                      case 50:
                        result = ("B");
                        break;
                    }
                  });
                },
                child: Text("Show GPA")),
            // ListView(
            //   children: [
            //     ListTile(
            //       leading:
            //       ClipRRect(
            //         borderRadius: BorderRadius.all(Radius.circular(50)),
            //         child:
            //         Image.asset(
            //           "Images/two.jpg",
            //         ),
            //       ),
            //       title: Text("Dhaka"),
            //     )
            //   ],
            // )

          ],
        ),
      ),
    );
  }
}
