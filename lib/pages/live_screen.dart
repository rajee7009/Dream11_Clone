import 'package:flutter/material.dart';
class LiveScreen extends StatefulWidget {
  LiveScreen({Key key}) : super(key: key);

  _LiveScreenState createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
     child:  Text("Live Screen")
    );
  }
}