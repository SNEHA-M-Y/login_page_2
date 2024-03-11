import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page_2/homepg.dart';

class splsh_scrn extends StatefulWidget {
  const splsh_scrn({super.key});

  @override
  State<splsh_scrn> createState() => _splsh_scrnState();
}

class _splsh_scrnState extends State<splsh_scrn> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds:10 ),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>homepg()));

    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays:SystemUiOverlay.values );
    
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Image.asset("images/splashscrn2.gif",
      
      )),
      

    );
  }
}