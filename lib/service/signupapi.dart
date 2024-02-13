import 'dart:convert';

import 'package:http/http.dart' as http;

class SignupApiService {
  Future<dynamic>loginApi(String email,String password) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/api/security/signin");

    var response =await client.post(apiUrl,
        headers: <String,String>{
          "Content-Type" : "application/json ; charset=UTF-8"
        },
        body: jsonEncode({
          "email": email,
          "password": password
        })
    );
    if(response.statusCode==200){
      return json.decode(response.body);
    }
    else{
      throw Exception("failed to send");
    }
  }

  Future<dynamic> sendData(
  String visitorname,
  String purpose,
  String phno,
      ) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://192.168.0.104:3001/api/signup/add");

    var response = await client.post(apiUrl,
        headers: <String,String>{
          "Content-Type" :"application/json; charset=UTF-8"
        },
        body: jsonEncode({
          "visitorname": visitorname,
          "purpose":purpose,
          "phno": phno,
        })
    );
    if(response.statusCode==200){
      return json.decode(response.body);
    }
    else{
      throw Exception("failed to add");
    }
  }
}
