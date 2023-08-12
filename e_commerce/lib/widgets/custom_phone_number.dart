import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/core/utils/validation_functions.dart';
import 'package:e_commerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    required this.country,
    required this.onTap,
    required this.controller,
  });

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: getPadding(
                left: 10,
                top: 16,
                bottom: 16,
              ),
              child: Text(
                "+${country.phoneCode}",
                style: AppStyle.txtMulishRomanSemiBold1707,
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              26,
            ),
            width: getHorizontalSize(
              1,
            ),
            margin: getMargin(
              left: 10,
              top: 14,
              bottom: 14,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.black900,
            ),
          ),
          Expanded(
            child: CustomTextFormField(
              width: getHorizontalSize(
                263,
              ),
              focusNode: FocusNode(),
              autofocus: true,
              controller: controller,
              hintText: "msg_enter_mobile_number".tr,
              margin: getMargin(
                left: 9,
                right: 6,
              ),
              variant: TextFormFieldVariant.None,
              fontStyle: TextFormFieldFontStyle.MulishRomanMedium1707,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "Please enter valid phone number";
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
