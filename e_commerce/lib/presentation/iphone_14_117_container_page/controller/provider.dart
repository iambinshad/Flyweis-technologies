
import 'package:e_commerce/presentation/iphone_14_117_container_page/controller/service.dart';
import 'package:e_commerce/presentation/iphone_14_117_container_page/models/all_category_model.dart';
import 'package:flutter/foundation.dart';

class HomeProvider with ChangeNotifier {
  List<AllCategoryModel> categories = [];

  Future<void> getAllCategory(context) async {
   await HomeServiceClass().getAllCategoryService(context).then((value) {
      notifyListeners();
    });
  }

  Future<void> addProductToCart() async {
     HomeServiceClass().addProductToCart();
  }
  Future<void> applyCoupon(coupon,context) async {
     HomeServiceClass().applyCouponService(coupon,context);
  }
}
