import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus!,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.PoppinsRegular15:
        return TextStyle(
          color: ColorConstant.black9007f,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.MontserratRegular1522:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            15.22,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.PoppinsMedium1654:
        return TextStyle(
          color: ColorConstant.green900,
          fontSize: getFontSize(
            16.54,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.MulishRomanMedium1707:
        return TextStyle(
          color: ColorConstant.gray90066,
          fontSize: getFontSize(
            17.07,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.MulishRomanBold15:
        return TextStyle(
          color: ColorConstant.gray50001,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w700,
        );
      case TextFormFieldFontStyle.PoppinsRegular14:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray50001,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            9.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.UnderLineGreen900:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.green900,
          ),
        );
      case TextFormFieldVariant.FillGreen50:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillAmber30066:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.UnderLineGray600:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray600,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black900,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillGreen50:
        return ColorConstant.green50;
      case TextFormFieldVariant.FillAmber30066:
        return ColorConstant.amber30066;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.UnderLineGreen900:
        return false;
      case TextFormFieldVariant.FillGreen50:
        return true;
      case TextFormFieldVariant.FillAmber30066:
        return true;
      case TextFormFieldVariant.UnderLineGray600:
        return false;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT114:
        return getPadding(
          left: 15,
          top: 114,
          right: 15,
          bottom: 114,
        );
      case TextFormFieldPadding.PaddingT15:
        return getPadding(
          top: 15,
          right: 12,
          bottom: 15,
        );
      default:
        return getPadding(
          all: 17,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder9,
}
enum TextFormFieldPadding {
  PaddingAll17,
  PaddingT114,
  PaddingT15,
}
enum TextFormFieldVariant {
  None,
  OutlineBlack900,
  UnderLineGreen900,
  FillGreen50,
  FillAmber30066,
  UnderLineGray600,
}
enum TextFormFieldFontStyle {
  PoppinsRegular13,
  PoppinsRegular15,
  MontserratRegular1522,
  PoppinsMedium1654,
  MulishRomanMedium1707,
  MulishRomanBold15,
  PoppinsRegular14,
}
