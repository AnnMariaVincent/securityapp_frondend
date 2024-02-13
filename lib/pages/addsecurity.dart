import 'package:flutter/material.dart';
import 'package:securityapp/service/postmodel.dart';
import 'package:securityapp/service/postservive.dart';

class addsecurity extends StatefulWidget {
  const addsecurity({super.key});

  @override
  State<addsecurity> createState() => _addsecurityState();
}

class _addsecurityState extends State<addsecurity> {
  String result="",getName="",getempid="",getaddres="",getphno="",getemail="",getpass="";
  TextEditingController name=new TextEditingController();
  TextEditingController empid=new TextEditingController();
  TextEditingController addres=new TextEditingController();
  TextEditingController phno=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController pass=new TextEditingController();

  void sendbutton()async{
    final response=await PostApiService().sendbutton(name.text, empid.text, addres.text, phno.text, email.text, pass.text);
    if (response['status'] == 'sucess') {
      print("sucessfully add");
    }
    else {
      print("error");
    }
  }

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
                    controller: name,
                    decoration: InputDecoration(
                        labelText: ("NAME"),
                        hintText: "Enter Nmae",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: empid,
                    decoration: InputDecoration(
                        labelText: ("EMP ID"),
                        hintText: "Enter EmpId",
                        border: OutlineInputBorder()
                    ),
                  ),

                  SizedBox(height: 10,),
                  TextField(
                    controller: addres,
                    decoration: InputDecoration(
                        labelText: ("ADDRESS"),
                        hintText: "Enter Address",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: phno,
                    decoration: InputDecoration(
                        labelText: ("PHONE NUMBER"),
                        hintText: "Enter Phone Number",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                        labelText: ("EMAIL ID"),
                        hintText: "Enter EmailId",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: pass,
                    decoration: InputDecoration(
                        labelText: ("PASSWORD"),
                        hintText: "Enter Password",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10,),
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
                        sendbutton();


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


