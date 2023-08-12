import '../controller/iphone_14_sixtysix_controller.dart';
import '../models/listlocation_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListlocationItemWidget extends StatelessWidget {
  ListlocationItemWidget(
    this.listlocationItemModelObj, {
    this.onTapRowlocation,
  });

  ListlocationItemModel listlocationItemModelObj;

  var controller = Get.find<Iphone14SixtysixController>();

  VoidCallback? onTapRowlocation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowlocation?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 31,
            width: 31,
            variant: IconButtonVariant.FillGreen800,
            padding: IconButtonPadding.PaddingAll7,
            child: CustomImageView(
              svgPath: ImageConstant.imgLocationGreen50,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 15,
              top: 6,
              bottom: 2,
            ),
            child: Obx(
              () => Text(
                listlocationItemModelObj.shippingaddressTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular1405,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgShapeBlack900,
            height: getVerticalSize(
              7,
            ),
            width: getHorizontalSize(
              3,
            ),
            margin: getMargin(
              top: 12,
              bottom: 12,
            ),
          ),
        ],
      ),
    );
  }
}
