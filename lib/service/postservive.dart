import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:securityapp/model/securitymodel.dart';
class PostApiService {
  Future<dynamic> sendbutton(String name, empid, addres, phno, email,
      pass) async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://localhost:3001/api/security/add");
    var response = await client.post(apiUrl,
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String, String>{
          "name": name,
          "empid": empid,
          "address": addres,
          "phno": phno,
          "emailid": email,
          "pass": pass,


        }
        )
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    else {
      throw Exception("Failure");
    }
  }
}

Future<List<Security>> getSecurity() async{
  var client=http.Client();
  var apiUrl=Uri.parse("http://localhost:3001/api/security/view");
  var response=await client.get(apiUrl);
  if(response.statusCode==200)
  {
    List<Security> securityList = securityFromJson(response.body);
    return securityList;
  }
  else
  {
    return [];
  }
}

