import 'package:get/get.dart';import 'listdiscthree1_item_model.dart';import 'listdiscfive1_item_model.dart';/// This class defines the variables used in the [iphone_14_eightyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone14EightysevenModel {Rx<List<Listdiscthree1ItemModel>> listdiscthree1ItemList = Rx(List.generate(2,(index) => Listdiscthree1ItemModel()));

Rx<List<Listdiscfive1ItemModel>> listdiscfive1ItemList = Rx(List.generate(2,(index) => Listdiscfive1ItemModel()));

 }
