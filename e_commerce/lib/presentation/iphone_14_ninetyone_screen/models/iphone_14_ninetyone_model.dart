import 'package:get/get.dart';import 'listdiscthree_item_model.dart';import 'listdiscfive_item_model.dart';/// This class defines the variables used in the [iphone_14_ninetyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone14NinetyoneModel {Rx<List<ListdiscthreeItemModel>> listdiscthreeItemList = Rx(List.generate(2,(index) => ListdiscthreeItemModel()));

Rx<List<ListdiscfiveItemModel>> listdiscfiveItemList = Rx(List.generate(2,(index) => ListdiscfiveItemModel()));

 }
