import '../controller/iphone_14_fiftyfour_controller.dart';
import '../models/listvector3_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class Listvector3ItemWidget extends StatelessWidget {
  Listvector3ItemWidget(this.listvector3ItemModelObj);

  Listvector3ItemModel listvector3ItemModelObj;

  var controller = Get.find<Iphone14FiftyfourController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        350,
      ),
      padding: getPadding(
        top: 8,
        bottom: 8,
      ),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.green.shade200),
          borderRadius:
          BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector96x78,
            height: getVerticalSize(
              95,
            ),
            width: getHorizontalSize(
              78,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                3,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 5,
              bottom: 3,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Text(
                        "lbl_cabbage".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular147,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgTrashGreen90022x22,
                      height: getSize(
                        22,
                      ),
                      width: getSize(
                        22,
                      ),
                      margin: getMargin(
                        left: 145,
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 30,
                        ),
                        child: Text(
                          "lbl_150_0".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular147,
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          33,
                        ),
                        width: getHorizontalSize(
                          90,
                        ),
                        margin: getMargin(
                          left: 103,
                          top: 20,
                        ),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgMenuGreen900,
                              height: getVerticalSize(
                                33,
                              ),
                              width: getHorizontalSize(
                                90,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 11,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgGroupGreen50,
                                      height: getVerticalSize(
                                        1,
                                      ),
                                      width: getHorizontalSize(
                                        10,
                                      ),
                                      margin: getMargin(
                                        top: 10,
                                        bottom: 11,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 19,
                                      ),
                                      child: Text(
                                        "lbl_1".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtPoppinsRegular16Green50,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgPlus,
                                      height: getSize(
                                        10,
                                      ),
                                      width: getSize(
                                        10,
                                      ),
                                      margin: getMargin(
                                        left: 18,
                                        top: 6,
                                        bottom: 7,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
