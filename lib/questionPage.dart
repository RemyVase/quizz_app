import 'package:flutter/material.dart';

class QuestionPage extends StatelessWidget {

  String title;

  QuestionPage(String title){
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('title'),
      ),
      body: new Center(
        child: new Text('Je suis une nouvelle page',
          textScaleFactor: 2.0,
          textAlign: TextAlign.center,
          style: new TextStyle(
              color: Colors.teal,
              fontStyle: FontStyle.italic
          ),
        ),
      ),
    );
  }
}