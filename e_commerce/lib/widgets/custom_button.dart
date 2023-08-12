import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.padding,
      this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonPadding? padding;

  ButtonShape? shape;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      case ButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      case ButtonPadding.PaddingAll2:
        return getPadding(
          all: 2,
        );
      case ButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      case ButtonPadding.PaddingT9:
        return getPadding(
          left: 9,
          top: 9,
          bottom: 9,
        );
      default:
        return getPadding(
          top: 13,
          right: 13,
          bottom: 13,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGreen900:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBlack900:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBlack90033:
        return ColorConstant.green900;
      case ButtonVariant.OutlineGreen900_1:
        return null;
      default:
        return ColorConstant.green900;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGreen900:
        return BorderSide(
          color: ColorConstant.green900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGreen900_1:
        return BorderSide(
          color: ColorConstant.green900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlack900:
        return BorderSide(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillGreen900:
      case ButtonVariant.OutlineBlack90033:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90033:
        return ColorConstant.black90033;
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillGreen900:
      case ButtonVariant.OutlineGreen900:
      case ButtonVariant.OutlineGreen900_1:
      case ButtonVariant.OutlineBlack900:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CustomBorderBL10:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              9.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              9.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              9.00,
            ),
          ),
        );
      case ButtonShape.CustomBorderTL22:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              22.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              22.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              21.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              22.00,
            ),
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              24.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              24.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              25.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              25.00,
            ),
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.MontserratBold1308:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            13.08,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.MontserratBold1332:
        return TextStyle(
          color: ColorConstant.green50,
          fontSize: getFontSize(
            13.32,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.MontserratBold1361:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            13.61,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.MontserratBold1361Green50:
        return TextStyle(
          color: ColorConstant.green50,
          fontSize: getFontSize(
            13.61,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.MontserratBold1286:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12.86,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsMedium1654:
        return TextStyle(
          color: ColorConstant.green50,
          fontSize: getFontSize(
            16.54,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.MulishItalicBlack20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w900,
        );
      case ButtonFontStyle.PoppinsMedium14:
        return TextStyle(
          color: ColorConstant.gray90002,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsMedium148:
        return TextStyle(
          color: ColorConstant.green900,
          fontSize: getFontSize(
            14.8,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsMedium1472:
        return TextStyle(
          color: ColorConstant.green50,
          fontSize: getFontSize(
            14.72,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.MontserratBold1321:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            13.21,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.MontserratBold1332Green900:
        return TextStyle(
          color: ColorConstant.green900,
          fontSize: getFontSize(
            13.32,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.MulishRomanBold1417:
        return TextStyle(
          color: ColorConstant.gray800,
          fontSize: getFontSize(
            14.17,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.FuturaBTBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Futura Md BT',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsRegular13:
        return TextStyle(
          color: ColorConstant.gray50001,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.PoppinsRegular15:
        return TextStyle(
          color: ColorConstant.green900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.PoppinsRegular15Gray50001:
        return TextStyle(
          color: ColorConstant.gray50001,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.MulishRomanExtraBold1516:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15.16,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w800,
        );
      case ButtonFontStyle.PoppinsRegular169:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16.9,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterBold14:
        return TextStyle(
          color: ColorConstant.green50,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            17.32,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonPadding {
  PaddingT13,
  PaddingAll13,
  PaddingAll16,
  PaddingAll2,
  PaddingAll7,
  PaddingT9,
}
enum ButtonShape {
  Square,
  CustomBorderBL25,
  CustomBorderBL10,
  CustomBorderTL22,
}
enum ButtonVariant {
  FillWhiteA700,
  FillGreen900,
  OutlineGreen900,
  OutlineGreen900_1,
  OutlineBlack900,
  OutlineBlack90033,
}
enum ButtonFontStyle {
  PoppinsSemiBold1732,
  MontserratBold1308,
  MontserratBold1332,
  MontserratBold1361,
  MontserratBold1361Green50,
  MontserratBold1286,
  PoppinsMedium1654,
  MulishItalicBlack20,
  PoppinsMedium14,
  PoppinsMedium148,
  PoppinsMedium1472,
  MontserratBold1321,
  MontserratBold1332Green900,
  MulishRomanBold1417,
  FuturaBTBold20,
  PoppinsRegular13,
  PoppinsRegular15,
  PoppinsRegular15Gray50001,
  MulishRomanExtraBold1516,
  PoppinsRegular169,
  InterBold14,
}
