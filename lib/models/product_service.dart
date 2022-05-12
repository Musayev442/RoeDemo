import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'dart:async';
import '../../models/data.dart';

class ProductService {
  Future<List<Data>> getProduct() async {
    var url = Uri.parse('https://roejewelry.com/flutter_connection/get.php');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = (convert.jsonDecode(response.body) as List);
      var dataObj = data.map((json) => Data.fromJson(json)).toList();

      return dataObj;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<CategoryData>> getProductDetails() async {
    var url = Uri.parse(
        'https://roejewelry.com/flutter_connection/product-details.php');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = (convert.jsonDecode(response.body) as List);
      var dataObj = data.map((json) => CategoryData.fromJson(json)).toList();

      return dataObj;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
