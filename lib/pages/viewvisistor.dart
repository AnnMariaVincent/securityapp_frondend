import 'package:flutter/material.dart';
import 'package:securityapp/model/securitymodel.dart';
import 'package:securityapp/model/visitormodel.dart';
import 'package:securityapp/service/postservive.dart';
import 'package:securityapp/service/visitorservice.dart';

class afsec extends StatefulWidget {
  const afsec({super.key});

  @override
  State<afsec> createState() => _afsecState();
}

class _afsecState extends State<afsec> {
  Future<List<Visitor>> ? data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=getVisitor();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(.50),


        ),
        body: FutureBuilder(future: data, builder: (context,snapshot){
          if(snapshot.hasData && snapshot.data!.isNotEmpty)
          {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (value,index){
                  return Card(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Visitor  Name:" +(snapshot.data![index].visitorname)),
                          subtitle: Text("\nPurpose" +(snapshot.data![index].purpose) + "\nAPhone Number" +(snapshot.data![index].phno) + "\nPhno" +(snapshot.data![index].phno)),
                        ),


                      ],
                    ),

                  );
                }
            );
          }
          else{
            return Text("LOADING");
          }
        }),


      ),
    );
  }
}

