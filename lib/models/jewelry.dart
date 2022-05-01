import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'dart:async';
import '../../models/data.dart';

class Jewelry {
  static Future<List<Data>> getData() async {
    var url = Uri.parse('https://roejewelry.com/flutter_connection/get.php');
    var response = await http.get(url);
    var data = (convert.jsonDecode(response.body) as List);
    var dataObj = data.map((json) => Data.fromJson(json)).toList();

    var map = {for (var x in dataObj) x.id: x.title};
    print(response.body);
    return dataObj;
  }
}
