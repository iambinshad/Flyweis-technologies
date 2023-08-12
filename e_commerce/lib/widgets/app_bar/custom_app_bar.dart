import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    required this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  });

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFillTeal400:
        return Container(
          height: getVerticalSize(
            1,
          ),
          width: double.maxFinite,
          margin: getMargin(
            top: 70.85,
            bottom: 50.15,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.teal400,
          ),
        );
      case Style.bgFillGreen90019:
        return Container(
          height: getVerticalSize(
            65,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.green90019,
          ),
        );
      case Style.bgFillWhiteA700:
        return Container(
          height: getVerticalSize(
            52,
          ),
          width: getHorizontalSize(
            389,
          ),
          margin: getMargin(
            right: 1,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFillTeal400,
  bgFillGreen90019,
  bgFillWhiteA700,
}
