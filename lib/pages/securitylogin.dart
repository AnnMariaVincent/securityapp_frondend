import 'package:flutter/material.dart';
import 'package:securityapp/pages/afseclogin.dart';

class seclogin extends StatefulWidget {
  const seclogin({super.key});

  @override
  State<seclogin> createState() => _secloginState();
}

class _secloginState extends State<seclogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(.50),
          title: Text("SECURITY LOGIN"),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 700,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [

                      Colors.pinkAccent.withOpacity(.3),
                      Colors.lightBlueAccent.withOpacity(.2),
                      Colors.lightBlueAccent.withOpacity(.2),
                      Colors.purpleAccent.withOpacity(.1),
                      Colors.pinkAccent.withOpacity(.3),

                    ]
                )
            ),
            padding: EdgeInsets.all(75),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: ("USERNAME"),
                        hintText: "Enter User Nmae",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: ("PASSWORD"),
                        hintText: "Enter Password",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white38.withOpacity(.30),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.zero,
                          )
                      ),
                      onPressed: (){

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>afsecuri()));



                      },
                      child: Text("LOGIN"),
                    ),
                  ),

                ]

            ),
          ),
        ),
      ),
    );
  }
}

