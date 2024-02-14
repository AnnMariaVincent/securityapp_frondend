import 'package:flutter/material.dart';
import 'package:securityapp/pages/afseclogin.dart';
import 'package:securityapp/service/signupapi.dart';
import 'package:shared_preferences/shared_preferences.dart';

class seclogin extends StatefulWidget {
  const seclogin({super.key});

  @override
  State<seclogin> createState() => _secloginState();
}

class _secloginState extends State<seclogin> {
  String getemail="",getPass="";
  TextEditingController email=new TextEditingController();
  TextEditingController pass=new TextEditingController();
  void SendValue() async{
    print("email :"+email.text);
    print("password : "+pass.text);

    final response =await SignupApiService().loginApi(email.text, pass.text);
    if(response["status"]=="Success"){
      String email=response["email"]["_id"].toString();
      print("successfuly login :"+email);
      SharedPreferences.setMockInitialValues({});
      SharedPreferences preferences=await SharedPreferences.getInstance();
      preferences.setString("email", email);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>afsecuri()));
    }
    else if(response["status"]=="invalid email id"){
      print("invalid email id");
    }
    else
    {
      print("invalid password");
    }

  }
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
                    controller: email,
                    decoration: InputDecoration(
                        labelText: ("EMAIL ID"),
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

