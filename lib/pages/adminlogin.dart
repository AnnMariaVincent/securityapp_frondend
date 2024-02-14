import 'package:flutter/material.dart';
import 'package:securityapp/pages/afadminlog.dart';

class adminlogin extends StatefulWidget {
  const adminlogin({super.key});

  @override
  State<adminlogin> createState() => _adminloginState();
}

class _adminloginState extends State<adminlogin> {
  String result="",getName="",getPass="";
  TextEditingController name=new TextEditingController();
  TextEditingController pass=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(.50),
          title: Text("ADMIN LOGIN"),
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
      controller: name,
    decoration: InputDecoration(
    labelText: ("USERNAME"),
    hintText: "Enter User Nmae",
    border: OutlineInputBorder()
    ),
    ),
    SizedBox(height: 30,),
    TextField(
      controller: pass,
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
              onPressed: () {
                getName = name.text;
                getPass = pass.text;
                if (getName == "admin" && getPass == "12345") {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => afadmin()));
                }
                else {
                  setState(() {
                    result = "wrong username or password";
                  });
                }
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
