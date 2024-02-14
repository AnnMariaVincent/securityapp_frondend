import 'package:flutter/material.dart';
import 'package:securityapp/service/visitorservice.dart';

class afsecuri extends StatefulWidget {
  const afsecuri({super.key});

  @override
  State<afsecuri> createState() => _afsecuriState();
}

class _afsecuriState extends State<afsecuri> {
  String getName="",getpurpose="",getphno="";
  TextEditingController visitorname=new TextEditingController();
  TextEditingController purpose=new TextEditingController();
  TextEditingController phno=new TextEditingController();


  void sendbutton1()async{
    final response=await VisitorApiService().sendbutton1(visitorname.text, purpose.text, phno.text);
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
                    controller: visitorname,
                    decoration: InputDecoration(
                        labelText: ("VISITOR NAME"),
                        hintText: "Enter Visitor Name",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    controller: purpose,
                    decoration: InputDecoration(
                        labelText: ("PURPOSE"),
                        hintText: "Enter Purpose",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    controller: phno,
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
                        sendbutton1();


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


