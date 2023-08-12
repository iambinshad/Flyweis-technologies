
import 'package:flutter/foundation.dart';
import '../models/product_model.dart';
import 'service.dart';

class ProductProvider with ChangeNotifier{
    // Future<ProductModel?>? productDetails ;
      ProductModel? productDetails;
      
  Future<void>fetchProductDetails(context)async{
   productDetails = await ProductService().fetchProductDetails(context);
  }
}