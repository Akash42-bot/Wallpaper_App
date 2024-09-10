import 'dart:convert';

import 'package:api/handmodel_from_map/model.dart';
import 'package:http/http.dart' as http;
class UserServices{

  String _Url="https://randomuser.me/api/?results=1";

  Future<List<UserModel>> fetchDataUsingFromMap(int numberOfUser)async{
    final  url = "${_Url}?results=${numberOfUser}";
    final response = await http.get(Uri.parse(url));
    final allData = jsonDecode(response.body);
    final List data = allData['result'];
    return data.map((user)=>UserModel.fromMap(user)).toList();
  }
  }



