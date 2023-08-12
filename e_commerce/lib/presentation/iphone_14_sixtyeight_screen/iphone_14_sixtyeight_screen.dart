import '../iphone_14_sixtyeight_screen/widgets/listvector4_item_widget.dart';
import 'controller/iphone_14_sixtyeight_controller.dart';
import 'models/listvector4_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14SixtyeightScreen extends GetWidget<Iphone14SixtyeightController> {
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
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            CustomButton(
                                margin: getMargin(right: 215),
                                height: getVerticalSize(52),
                                text: "lbl_notification".tr,
                                variant: ButtonVariant.FillWhiteA700,
                                shape: ButtonShape.Square,
                                prefixWidget: Container(
                                    margin: getMargin(right: 15),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowleftBlack900)),
                                onTap: () {
                                  onTapNotification();
                                }),
                            Padding(
                                padding:
                                    getPadding(left: 27, top: 3, right: 20),
                                child: Obx(() => ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                          padding: getPadding(
                                              top: 16.5, bottom: 16.5),
                                          child: SizedBox(
                                              width: getHorizontalSize(341),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: ColorConstant
                                                      .blueGray100)));
                                    },
                                    itemCount: controller
                                        .iphone14SixtyeightModelObj
                                        .value
                                        .listvector4ItemList
                                        .value
                                        .length,
                                    itemBuilder: (context, index) {
                                      Listvector4ItemModel model = controller
                                          .iphone14SixtyeightModelObj
                                          .value
                                          .listvector4ItemList
                                          .value[index];
                                      return Listvector4ItemWidget(model);
                                    }))),
                            Padding(
                                padding: getPadding(top: 14),
                                child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: ColorConstant.blueGray100,
                                    indent: getHorizontalSize(27),
                                    endIndent: getHorizontalSize(20)))
                          ])))
                    ]))));
  }

  onTapNotification() {
    Get.toNamed(
      AppRoutes.iphone14SixtysixScreen,
    );
  }
}
