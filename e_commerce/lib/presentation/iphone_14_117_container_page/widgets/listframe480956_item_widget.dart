import 'package:e_commerce/presentation/iphone_14_117_container_page/controller/provider.dart';
import 'package:provider/provider.dart';

import '../controller/iphone_14_117_container_controller.dart';
import '../models/listframe480956_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listframe480956ItemWidget extends StatelessWidget {
  Listframe480956ItemWidget(
    this.index );

  Listframe480956ItemModel? listframe480956ItemModelObj;

  var controller = Get.find<Iphone14117ContainerController>();

  VoidCallback? onTapColumnframe4809;

  VoidCallback? onTapColumnframe4810;

  VoidCallback? onTapColumnframe4811;
  int? index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            onTapColumnframe4809?.call();
          },
          child: Consumer<HomeProvider>(
          builder: (context, value, child) => 
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: ColorConstant.gray300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Container(
                    height: getSize(
                      103,
                    ),
                    width: getSize(
                      103,
                    ),
                    padding: getPadding(
                      all: 11,
                    ),
                    decoration: AppDecoration.fillGray300.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Stack(
                      children: [
                        CustomS(
                          imagePath: value.categories[index!].image,
                          height: getSize(
                            81,
                          ),
                          width: getSize(
                            81,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              14,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child:Text(
                      value.categories[index!].name,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium13,
                    ),
                ),
              ],
            ),
          ),
        ),
       GestureDetector(
          onTap: () {
            onTapColumnframe4809?.call();
          },
          child: Consumer<HomeProvider>(
          builder: (context, value, child) => 
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: ColorConstant.gray300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Container(
                    height: getSize(
                      103,
                    ),
                    width: getSize(
                      103,
                    ),
                    padding: getPadding(
                      all: 11,
                    ),
                    decoration: AppDecoration.fillGray300.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Stack(
                      children: [
                        CustomS(
                          imagePath: value.categories[index!].image,
                          height: getSize(
                            81,
                          ),
                          width: getSize(
                            81,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              14,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child:Text(
                      value.categories[index!].name,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium13,
                    ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            onTapColumnframe4809?.call();
          },
          child: Consumer<HomeProvider>(
          builder: (context, value, child) => 
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: ColorConstant.gray300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Container(
                    height: getSize(
                      103,
                    ),
                    width: getSize(
                      103,
                    ),
                    padding: getPadding(
                      all: 11,
                    ),
                    decoration: AppDecoration.fillGray300.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Stack(
                      children: [
                        CustomS(
                          imagePath: value.categories[index!].image,
                          height: getSize(
                            81,
                          ),
                          width: getSize(
                            81,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              14,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child:Text(
                      value.categories[index!].name,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium13,
                    ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
