import 'package:flutter/material.dart';
import 'package:securityapp/pages/addsecurity.dart';
import 'package:securityapp/pages/viewsecurity.dart';
import 'package:securityapp/pages/viewvisistor.dart';

class afadmin extends StatefulWidget {
  const afadmin({super.key});

  @override
  State<afadmin> createState() => _afadminState();
}

class _afadminState extends State<afadmin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(.50),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>addsecurity()));



                      },
                      child: Text("ADD SECURITY"),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>viewsec()));



                      },
                      child: Text("VIEW SECURITY"),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>afsec()));



                      },
                      child: Text("VIEW VISITORS"),
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


