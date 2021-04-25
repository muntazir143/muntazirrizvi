import 'package:flutter/material.dart';
import 'dart:html' as html;

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage("images/dp.jpg"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Muntazir Rizvi",
                textScaleFactor: 3,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    icon: SizedBox(
                      height: 20.0,
                      width: 20.0,
                      child: Image.asset("images/github.png"),
                    ),
                    label: Text("Github"),
                    onPressed: () {
                      html.window.open("https://github.com/muntazir143", "muntazir143");
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
