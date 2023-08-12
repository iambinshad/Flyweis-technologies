import '../iphone_14_sixtyone_screen/widgets/listvector_item_widget.dart';
import 'controller/iphone_14_sixtyone_controller.dart';
import 'models/listvector_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14SixtyoneScreen extends GetWidget<Iphone14SixtyoneController> {
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
                      CustomButton(
                              margin: getMargin(right: 200),
                          height: getVerticalSize(62),
                          text: "lbl_order_history".tr,
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.Square,
                          prefixWidget: Container(
                              margin: getMargin(right: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftBlack900)),
                          onTap: () {
                            onTapOrderhistory();
                          }),

                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 20, top: 10, right: 20),
                              child: Obx(() => ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(20));
                                  },
                                  itemCount: controller.iphone14SixtyoneModelObj
                                      .value.listvectorItemList.value.length,
                                  itemBuilder: (context, index) {
                                    ListvectorItemModel model = controller
                                        .iphone14SixtyoneModelObj
                                        .value
                                        .listvectorItemList
                                        .value[index];
                                    return ListvectorItemWidget(model,
                                        onTapReview: () {
                                      onTapReview();
                                    }, onTapReturn: () {
                                      onTapReturn();
                                    });
                                  }))))
                    ])),




        ),);
  }

  onTapReview() {
    Get.toNamed(AppRoutes.iphone14EightyfourScreen);
  }

  onTapReturn() {
    Get.toNamed(AppRoutes.iphone14EightyfiveScreen);
  }

  onTapOrderhistory() {
    Get.toNamed(
      AppRoutes.iphone14SixtysixScreen,
    );
  }
}
