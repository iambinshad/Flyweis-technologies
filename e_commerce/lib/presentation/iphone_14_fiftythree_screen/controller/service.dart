import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:e_commerce/core/api/endpoints.dart';
import 'package:e_commerce/presentation/iphone_14_fiftythree_screen/controller/provider.dart';
import 'package:e_commerce/presentation/iphone_14_fiftythree_screen/models/product_model.dart';
import 'package:provider/provider.dart';

class ProductService {
  Future fetchProductDetails(context) async {
    Dio dio = Dio();
    String path = ApiConfigration().baseUrl +
        ApiConfigration().productdetailsByID +
        "6495940dce367d71c08a5651";
    try {
      final response = await dio.get(path);

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(jsonEncode(response.data['product']));

        var singleProductDetails = ProductModel.fromJson(jsonResponse);
        return singleProductDetails;
      } else {
        print('Failed to fetch product details');
      }
    } catch (error) {
      print('Error fetching product details: $error');
    }
  }
}
