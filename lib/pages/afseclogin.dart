import 'package:flutter/material.dart';

class afsecuri extends StatefulWidget {
  const afsecuri({super.key});

  @override
  State<afsecuri> createState() => _afsecuriState();
}

class _afsecuriState extends State<afsecuri> {
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
                        labelText: ("VISITOR NAME"),
                        hintText: "Enter Visitor Name",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: ("PURPOSE"),
                        hintText: "Enter Purpose",
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
                      child: Text("SUBMIT"),
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


