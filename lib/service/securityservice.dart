import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:securityapp/model/visitormodel.dart';
class visiorApiService {
  Future<dynamic> sendbutton1(String visitorname, purpose,phno) async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://localhost:3001/api/visitor/add");
    var response = await client.post(apiUrl,
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String, String>{
          "visitorname": visitorname,
          "purpose":purpose,
          "phno": phno,
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

Future<List<Visitor>> getVisitor() async{
  var client=http.Client();
  var apiUrl=Uri.parse("http://localhost:3001/api/visitor/view");
  var response=await client.get(apiUrl);
  if(response.statusCode==200)
  {
    return visitorFromJson(response.body);
  }
  else
  {
    return [];
  }
}


