import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  String imagepath;
  String data;
  Home({required this.imagepath, required this.data});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/Bg.jpg",
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(imagepath),
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                child: SingleChildScrollView(
                    child: Text(
                  data,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
