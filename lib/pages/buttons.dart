import 'package:flutter/material.dart';
import 'package:securityapp/pages/adminlogin.dart';
import 'package:securityapp/pages/securitylogin.dart';

class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(.50),

        ),
        body: SingleChildScrollView(
        child: Container(
        width: double.infinity,
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

        padding: EdgeInsets.all(50),
        child: Column(
        children: [
        SizedBox(height: 30, width: 250,),
    SizedBox(
    child: ElevatedButton(
    style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
    )
    ),
    onPressed: ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>adminlogin()));


    },
      child: Text("ADMIN LOGIN"),
    ),
    ),


    SizedBox(height: 30,
    width: 250,),
    SizedBox(
    child: ElevatedButton(
    style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
    )
    ),
    onPressed: ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>seclogin()));



    }, child: Text("SECURITY LOGIN"),
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
