import 'package:flutter/material.dart';
import 'package:securityapp/model/visitormodel.dart';
import 'package:securityapp/service/securityservice.dart';

class viewvisitors extends StatefulWidget {
  const viewvisitors({super.key});

  @override
  State<viewvisitors> createState() => _viewvisitorsState();
}

class _viewvisitorsState extends State<viewvisitors> {
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
                          title: Text("Visitor Name:" +(snapshot.data![index].visitorname)),
                          subtitle: Text("\nPurpose of visit:" +(snapshot.data![index].purpose) + "\nPhone No:" +(snapshot.data![index].phno) ),
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




