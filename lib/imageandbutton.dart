import 'package:flutter/material.dart';
import 'package:untitled/Screen.dart';

class ImageAndButton extends StatelessWidget {
  String imagepath;
  String textbutton;
  String data;
  ImageAndButton(
      {required this.imagepath, required this.textbutton, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Image.asset(imagepath),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(imagepath: imagepath, data: data),
                ),
              );
            },
            child: Text(textbutton),
          ),
        )
      ],
    );
  }
}
