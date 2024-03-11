import 'package:flutter/material.dart';

class errorpg extends StatefulWidget {
  const errorpg({super.key});

  @override
  State<errorpg> createState() => _errorpgState();
}

class _errorpgState extends State<errorpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("ERROR FOUND!!!",style: TextStyle(color: Colors.white,fontSize: 30),)),backgroundColor: Colors.purple,);
  }
}