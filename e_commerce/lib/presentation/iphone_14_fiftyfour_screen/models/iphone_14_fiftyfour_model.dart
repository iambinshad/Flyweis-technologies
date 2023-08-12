import 'package:get/get.dart';import 'listvector3_item_model.dart';import 'listsubtotal_item_model.dart';/// This class defines the variables used in the [iphone_14_fiftyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone14FiftyfourModel {Rx<List<Listvector3ItemModel>> listvector3ItemList = Rx(List.generate(3,(index) => Listvector3ItemModel()));

Rx<List<ListsubtotalItemModel>> listsubtotalItemList = Rx(List.generate(2,(index) => ListsubtotalItemModel()));

 }
