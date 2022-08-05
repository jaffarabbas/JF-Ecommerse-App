import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:jz_ecommerce_app/Model/ModelClasses.dart';

import '../Model/testModel.dart';

class PopulateJson {
  static Future<List<Product>> PopulateJsonData() async{
    String jsonPath = '../assets/json/products.json';
    String responce = await rootBundle.loadString(jsonPath);
    //populate json data from json file to product model class
    List<Product> data = Product.fromJsonList(await json.decode(responce));
    return data;
  }

}