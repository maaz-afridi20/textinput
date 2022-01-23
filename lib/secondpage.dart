import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myvar;
  String texttodisplay = "";
  void showtext() {
    setState(() {
      texttodisplay = myvar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Text Input'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$texttodisplay',
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                style: TextStyle(
                  //will use for the styling of inside the textfield.
                  color: Colors.red,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                ),
                maxLength: 20, // no of letter that we can maximum enter.
                // maxLines: 2, // will show number of lines that we can enter.

                onChanged: (simpletext) {
                  // this is use to retrive data from textfield or any thing
                  myvar = simpletext;
                },

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(25.0)), // will give border
                  // around the textfield
// ther is also label text, and helpertext
// so the main difference is that labeltext will not remove it will just move
// above the text field but it will be present while the hint text will be gone.
// all have same properties but slightly diffrent things.

                  hintText: 'User Name',
                  hintStyle: TextStyle(color: Colors.green),
                ), // hinstyle is use to style that hint text

                // labelText: 'UserName',
                // labelStyle: TextStyle(
                //   color: Colors.yellow,
                // )
                // )

                // helperText: 'Please User Name',
                // helperStyle: TextStyle(backgroundColor: Colors.green),
              ),
            ),
            RaisedButton(
              onPressed: showtext,
              child: Text('Retrieve Data'),
            )
          ],
        ),
      ),
    );
  }
}
