import '../iphone_14_eightythree_screen/widgets/listgetfreesafe_item_widget.dart';
import 'controller/iphone_14_eightythree_controller.dart';
import 'models/listgetfreesafe_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14EightythreeScreen
    extends GetWidget<Iphone14EightythreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
            height: getVerticalSize(65),
            title: Padding(
                padding: getPadding(left: 20),
                child: Text("msg_coupons_offers".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMulishRomanBold20),
            ),
            actions: [
              AppbarImage(
                  height: getSize(15),
                  width: getSize(15),
                  svgPath: ImageConstant.imgClose,
                  margin: getMargin(left: 20, top: 20, right: 20, bottom: 30),),
            ],
            styleType: Style.bgFillGreen90019),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(all: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                margin: getMargin(left: 10, right: 10),
                padding: getPadding(left: 20, top: 14, right: 20, bottom: 14),
                decoration: AppDecoration.outlineBlack9007f
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextFormField(
                          width: getHorizontalSize(252),
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: controller.group644Controller,
                          hintText: "msg_enter_coupon_code".tr,
                          margin: getMargin(top: 3),
                          variant: TextFormFieldVariant.None,
                          fontStyle: TextFormFieldFontStyle.PoppinsRegular15,
                          textInputAction: TextInputAction.done),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Text("lbl_apply".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold15))
                    ])),
            Expanded(
              child: Padding(
                padding: getPadding(top: 10),
                child: Obx(
                  () => ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: getVerticalSize(10));
                      },
                      itemCount: controller.iphone14EightythreeModelObj.value
                          .listgetfreesafeItemList.value.length,
                      itemBuilder: (context, index) {
                        ListgetfreesafeItemModel model = controller
                            .iphone14EightythreeModelObj
                            .value
                            .listgetfreesafeItemList
                            .value[index];
                        return ListgetfreesafeItemWidget(model,
                            onTapColumngetfreesa: () {
                          onTapColumngetfreesa();
                        });
                      }),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  onTapColumngetfreesa() {
    Get.toNamed(
      AppRoutes.iphone14FiftyfourScreen,
    );
  }
}
