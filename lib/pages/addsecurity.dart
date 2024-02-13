import 'package:flutter/material.dart';

class addsecurity extends StatefulWidget {
  const addsecurity({super.key});

  @override
  State<addsecurity> createState() => _addsecurityState();
}

class _addsecurityState extends State<addsecurity> {
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
                  TextField(
                    decoration: InputDecoration(
                        labelText: ("NAME"),
                        hintText: "Enter Nmae",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: ("EMP ID"),
                        hintText: "Enter EmpId",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: ("PHONE NUMBER"),
                        hintText: "Enter Phone Number",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: ("EMAIL ID"),
                        hintText: "Enter EmailId",
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


                      },
                      child: Text("ADD"),
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


