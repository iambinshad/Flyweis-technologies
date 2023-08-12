import 'controller/frame_48095625_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class Frame48095625Screen extends GetWidget<Frame48095625Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup1122,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: getHorizontalSize(
              414,
            ),
            padding: getPadding(
              left: 26,
              top: 29,
              right: 26,
              bottom: 29,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_logout".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular18,
                ),
                Padding(
                  padding: getPadding(
                    top: 25,
                  ),
                  child: Text(
                    "msg_are_you_sure_you".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular18,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    "lbl_logout2".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular18,
                  ),
                ),
                CustomButton(
                  height: getVerticalSize(
                    52,
                  ),
                  text: "lbl_yes".tr,
                  margin: getMargin(
                    left: 1,
                    top: 31,
                    bottom: 5,
                  ),
                  padding: ButtonPadding.PaddingAll16,
                  fontStyle: ButtonFontStyle.InterBold14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
