import 'package:flutter/material.dart';

class welcomepg extends StatefulWidget {
  const welcomepg({super.key});

  @override
  State<welcomepg> createState() => _welcomepgState();
}

class _welcomepgState extends State<welcomepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent,
    title: Text("Welcome page"),
    ),);
  }
}