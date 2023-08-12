import '../iphone_14_ninety_screen/widgets/gridvector1_item_widget.dart';
import 'controller/iphone_14_ninety_controller.dart';
import 'models/gridvector1_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14NinetyScreen extends GetWidget<Iphone14NinetyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomButton(
                                height: getVerticalSize(43),
                                text: "lbl_wishlist".tr,
                                variant: ButtonVariant.FillWhiteA700,
                                shape: ButtonShape.Square,
                                prefixWidget: Container(
                                    margin: getMargin(right: 15),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowleftBlack900)),
                                onTap: () {
                                  onTapWishlist();
                                }),
                            Expanded(
                                child: Padding(
                                    padding: getPadding(
                                        left: 26, top: 10, right: 25),
                                    child: Obx(() => GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent:
                                                    getVerticalSize(190),
                                                crossAxisCount: 2,
                                                mainAxisSpacing:
                                                    getHorizontalSize(30),
                                                crossAxisSpacing:
                                                    getHorizontalSize(30)),
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller
                                            .iphone14NinetyModelObj
                                            .value
                                            .gridvector1ItemList
                                            .value
                                            .length,
                                        itemBuilder: (context, index) {
                                          Gridvector1ItemModel model =
                                              controller
                                                  .iphone14NinetyModelObj
                                                  .value
                                                  .gridvector1ItemList
                                                  .value[index];
                                          return Gridvector1ItemWidget(model);
                                        }))))
                          ])
                    ]))));
  }

  onTapWishlist() {
    Get.toNamed(
      AppRoutes.iphone14FiftysixScreen,
    );
  }
}
