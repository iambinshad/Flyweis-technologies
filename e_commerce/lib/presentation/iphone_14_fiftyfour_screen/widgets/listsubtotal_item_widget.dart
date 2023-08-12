import '../controller/iphone_14_fiftyfour_controller.dart';
import '../models/listsubtotal_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListsubtotalItemWidget extends StatelessWidget {
  ListsubtotalItemWidget(this.listsubtotalItemModelObj);

  ListsubtotalItemModel listsubtotalItemModelObj;

  var controller = Get.find<Iphone14FiftyfourController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text(
            listsubtotalItemModelObj.subtotalTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular15,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 9,
            bottom: 12,
          ),
          child: SizedBox(
            width: getHorizontalSize(
              193,
            ),
            child: Divider(
              height: getVerticalSize(
                1,
              ),
              thickness: getVerticalSize(
                1,
              ),
              color: ColorConstant.green900,
              indent: getHorizontalSize(
                19,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 25,
          ),
          child: Obx(
            () => Text(
              listsubtotalItemModelObj.priceTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium15Black900,
            ),
          ),
        ),
      ],
    );
  }
}
