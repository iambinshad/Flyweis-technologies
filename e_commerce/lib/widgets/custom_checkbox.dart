import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  CustomCheckbox(
      {this.fontStyle,
      this.alignment,
      this.isRightCheck = false,
      this.iconSize,
      this.value,
      this.onChange,
      this.text,
      this.width,
      this.margin});

  CheckboxFontStyle? fontStyle;

  Alignment? alignment;

  bool? isRightCheck;

  double? iconSize;

  bool? value;

  Function(bool)? onChange;

  String? text;

  double? width;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildCheckboxWidget(),
          )
        : _buildCheckboxWidget();
  }

  _buildCheckboxWidget() {
    return InkWell(
      onTap: () {
        value = !(value!);
        onChange!(value!);
      },
      child: Container(
        width: width,
        margin: margin ?? EdgeInsets.zero,
        child: isRightCheck! ? getRightSideCheckbox() : getLeftSideCheckbox(),
      ),
    );
  }

  Widget getRightSideCheckbox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 8,
          ),
          child: getTextWidget(),
        ),
        getCheckboxWidget(),
      ],
    );
  }

  Widget getLeftSideCheckbox() {
    return Row(
      children: [
        getCheckboxWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 8,
          ),
          child: getTextWidget(),
        ),
      ],
    );
  }

  Widget getTextWidget() {
    return Text(
      text ?? "",
      textAlign: TextAlign.center,
      style: _setFontStyle(),
    );
  }

  Widget getCheckboxWidget() {
    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Checkbox(
        value: value ?? false,
        onChanged: (value) {
          onChange!(value!);
        },
        checkColor: ColorConstant.green900,
        activeColor: ColorConstant.green900,
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(
            color: ColorConstant.green900,
          ),
        ),
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case CheckboxFontStyle.PoppinsRegular1308:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            13.08,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case CheckboxFontStyle.MontserratRegular1308:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            13.08,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
      case CheckboxFontStyle.MontserratRegular1303:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            13.03,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
      case CheckboxFontStyle.MontserratBold1654:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16.54,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        );
      case CheckboxFontStyle.MulishRomanMedium1196:
        return TextStyle(
          color: ColorConstant.gray90002,
          fontSize: getFontSize(
            11.96,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w500,
        );
      case CheckboxFontStyle.PoppinsRegular147:
        return TextStyle(
          color: ColorConstant.gray90001,
          fontSize: getFontSize(
            14.7,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            13.32,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum CheckboxFontStyle {
  MontserratRegular1332,
  PoppinsRegular1308,
  MontserratRegular1308,
  MontserratRegular1303,
  MontserratBold1654,
  MulishRomanMedium1196,
  PoppinsRegular147
}
