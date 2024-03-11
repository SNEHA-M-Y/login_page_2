import 'package:flutter/material.dart';
import 'package:login_page_2/errorpg.dart';
import 'package:login_page_2/welcomepg.dart';

class homepg extends StatefulWidget {
  const homepg({super.key});

  @override
  State<homepg> createState() => _homepgState();
}

class _homepgState extends State<homepg> {
  final firstnamecontroller=TextEditingController();
  final lastnamecontroller=TextEditingController();
  final phonenocontroller=TextEditingController();
  final agecontroller=TextEditingController();
  final emailidcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold (appBar: AppBar(backgroundColor: Colors.blueAccent,
    title:Row(
      children: [Icon(Icons.person_3_outlined,color: Colors.white,),
        Text("Login Page",style: TextStyle(color: Colors.white),),
      ],
    )
    ),
      body:Container(width: double.infinity,height: double.infinity,
                      decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.lightBlue,Colors.purple])),
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              children: [
                TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius:
                 BorderRadius.circular(40),),
                 labelText:"First Name",labelStyle: TextStyle(color: Colors.black),
                 hintText: "Write Your First Name Here ",
                 hintStyle: TextStyle(color: Colors.black12)
                  ),
                  controller: firstnamecontroller,
                  ),
                  SizedBox(height: 30,),
                  TextField(decoration:
                   InputDecoration(border:
                    OutlineInputBorder(borderRadius:
                     BorderRadius.circular(40),),
                     labelText: "Last Name",labelStyle: TextStyle(color: Colors.black),
                     hintText: "Write Your Last Name Here",
                     hintStyle: TextStyle(color: Colors.black12)
                     ),
                     controller: lastnamecontroller,
                     
                     ),
                     SizedBox(height: 30,),
                     TextField(decoration:
                      InputDecoration(border:
                       OutlineInputBorder(borderRadius: 
                       BorderRadius.circular(40)),
                       labelText: "Phone number",
                       labelStyle: TextStyle(color: Colors.black),
                       hintText: "Type Your Phone Number Here",
                       hintStyle: TextStyle(color: Colors.black12)
                       ),
                       controller: phonenocontroller,
                       ),
                       SizedBox(height: 30,),
                       TextField(decoration:
                        InputDecoration(border:
                         OutlineInputBorder(borderRadius:
                          BorderRadius.circular(40)),
                          labelText: "Age",
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: "Type Your Age Here",
                          hintStyle: TextStyle(color: Colors.black12)
                          ),
                          controller: agecontroller,
                          ),
                       SizedBox(height: 30,),
                       TextField(decoration: InputDecoration(border:
                        OutlineInputBorder(borderRadius:
                         BorderRadius.circular(40)),
                         labelText: "Email ID",
                         labelStyle: TextStyle(color: Colors.black),
                         hintText: "Write Your Email ID Here",
                         hintStyle: TextStyle(color: Colors.black12)
                         ),
                         controller: emailidcontroller,
                         ),
        
                         
                         Padding(
                           padding: const EdgeInsets.fromLTRB(20,20,50,0),
                           child: Row(
                             children: [
                               ElevatedButton(onPressed: (){
                                if (firstnamecontroller.text=="SNEHA"
                                && lastnamecontroller.text=="M Y"
                                && phonenocontroller.text=="9061359682"
                                && agecontroller.text=="25"
                                && emailidcontroller.text=="snehayuvraj99@gmail.com"
                                ) {
                                  Navigator.push(context, MaterialPageRoute(builder:(context) => welcomepg(), ));
                                  
                                }
                                else
                                {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => errorpg(),));
                                }
        
                               }, child:
                                Text("Login",style: TextStyle(color: Colors.white),),style:
                                 ElevatedButton.styleFrom(backgroundColor:
                                  Colors.blue,fixedSize: Size(150, 50)),),
        
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                                    child: ElevatedButton(onPressed: (){firstnamecontroller.clear();
                                                                        lastnamecontroller.clear();
                                                                        phonenocontroller.clear();
                                                                        agecontroller.clear();
                                                                        emailidcontroller.clear();
                                    }, child: Text("Cancel",style:
                                     TextStyle(color: Colors.white),),
                                    style:  ElevatedButton.styleFrom(backgroundColor:Colors.blue,fixedSize:Size(150, 50)  )
                                     ),
                                  )
                             ],
                           ),
                         ),
                         
              ],
            ),
          ),
        ),
      )
    
      

    );
  }
}