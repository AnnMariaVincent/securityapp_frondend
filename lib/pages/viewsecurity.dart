import 'package:flutter/material.dart';
import 'package:securityapp/model/securitymodel.dart';
import 'package:securityapp/service/postservive.dart';

class viewsec extends StatefulWidget {
  const viewsec({super.key});

  @override
  State<viewsec> createState() => _viewsecState();
}

class _viewsecState extends State<viewsec> {
  Future<List<Security>> ? data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=getSecurity();
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
                          title: Text("Security Name:" +(snapshot.data![index].name)),
                          subtitle: Text("\nempid" +(snapshot.data![index].empid) + "\nAddress" +(snapshot.data![index].address) + "\nPhno" +(snapshot.data![index].phno) + "\nemailid" +(snapshot.data![index].emailid)+ "\nPassword" +(snapshot.data![index].pass)),
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

