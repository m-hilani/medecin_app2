import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:medecin_app/models/medicine.dart';
import 'package:http/http.dart' as http;

class Requests {
  static Future getMedicines(String category) async {
    List<Medicine> medicines = [];
    http.Response response = await http
        .get(Uri.parse('http://10.0.2.2:8000/api/listproduct$category'));
    if (response.statusCode == 200) {
      print(response.body);
    }
    print(response.statusCode);
    /*
      var file = jsonDecode(response.body);
      for (int i = 0; i < file.length; i++) {
        medicines.add(Medicine.fromJson(file[i]));
      }
      return medicines;
    }
    return 'error';*/
  }

  static Future getCategories() async {
    http.Response response =
        await http.get(Uri.parse('http://10.0.2.2:8000/api/listproduct'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    }
    return 'error';
  }
}
