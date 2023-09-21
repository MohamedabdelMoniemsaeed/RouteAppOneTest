import 'package:flutter/material.dart';
import 'package:untitled/imageandbutton.dart';
import 'Data.dart';

void main() {
  runApp(Start());
}

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Route App One"),
        ),
        body: ListView(
          children: [
            ImageAndButton(
                imagepath: "images/Android.jpeg",
                textbutton: "Android Course",
                data: Data.android),
            ImageAndButton(
                imagepath: "images/IOS.jpeg",
                textbutton: "IOS Course",
                data: Data.ios),
            ImageAndButton(
                imagepath: "images/fullStack.jpeg",
                textbutton: "Full Stack",
                data: Data.full),
          ],
        ),
      ),
    );
  }
}
