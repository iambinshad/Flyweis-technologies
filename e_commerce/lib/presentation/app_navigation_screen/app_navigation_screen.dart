import 'controller/app_navigation_controller.dart';import 'package:e_commerce/core/app_export.dart';import 'package:flutter/material.dart';class AppNavigationScreen extends GetWidget<AppNavigationController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: getHorizontalSize(375), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_app_navigation".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20), child: Text("msg_check_your_app_s".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular16))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.black900))])), Expanded(child: SingleChildScrollView(child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapSplashscreen();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_splash_screen".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14NinetyOne();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_ninetyone".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14EightyThree();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_eightythree".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14SixtyTwo();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_sixtytwo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14SixtyThree();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_sixtythree".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14FiftyFive();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_fiftyfive".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14FiftySix();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_fiftysix".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14FiftySeven();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_fiftyseven".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14FiftyEight();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_fiftyeight".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14FiftyNine();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_fiftynine".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14Sixty();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_sixty".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14SixtyOne();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_sixtyone".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14EightyFour();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_eightyfour".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14EightyFive();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_eightyfive".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapDashboard1();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_dashboard_1".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14115();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_iphone_14_115".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14116();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_iphone_14_116".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapSignupOne();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_sign_up_one".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapSignupform();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_signup_form".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapSignupOTP();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_sign_up_otp".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapLoading();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_loading".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14117Container();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_117".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14FiftyTwo();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_fiftytwo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14FiftyThree();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_fiftythree".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14FiftyFour();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_fiftyfour".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14SixtyFive();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_sixtyfive".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14SixtySix();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_sixtysix".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14SixtyEight();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_sixtyeight".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14SixtyNine();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_sixtynine".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14EightySix();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_eightysix".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14EightySeven();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_eightyseven".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14FortyTwo();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_fortytwo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14EightyEight();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_eightyeight".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14EightyNine();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_eightynine".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14Ninety();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_ninety".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14SixtySeven();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_sixtyseven".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14114();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_iphone_14_114".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapFrame48095626();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_frame_48095626".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapFrame48095574();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_frame_48095574".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapFrame48095625();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_frame_48095625".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))]))), GestureDetector(onTap: () {onTapIPhone14SixtyFour();}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_iphone_14_sixtyfour".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray400))])))]))))])))); } 
onTapSplashscreen() { Get.toNamed(AppRoutes.splashScreen, ); } 
onTapIPhone14NinetyOne() { Get.toNamed(AppRoutes.iphone14NinetyoneScreen, ); } 
onTapIPhone14EightyThree() { Get.toNamed(AppRoutes.iphone14EightythreeScreen, ); } 
onTapIPhone14SixtyTwo() { Get.toNamed(AppRoutes.iphone14SixtytwoScreen, ); } 
onTapIPhone14SixtyThree() { Get.toNamed(AppRoutes.iphone14SixtythreeScreen, ); } 
onTapIPhone14FiftyFive() { Get.toNamed(AppRoutes.iphone14FiftyfiveScreen, ); } 
onTapIPhone14FiftySix() { Get.toNamed(AppRoutes.iphone14FiftysixScreen, ); } 
onTapIPhone14FiftySeven() { Get.toNamed(AppRoutes.iphone14FiftysevenScreen, ); } 
onTapIPhone14FiftyEight() { Get.toNamed(AppRoutes.iphone14FiftyeightScreen, ); } 
onTapIPhone14FiftyNine() { Get.toNamed(AppRoutes.iphone14FiftynineScreen, ); } 
onTapIPhone14Sixty() { Get.toNamed(AppRoutes.iphone14SixtyScreen, ); } 
onTapIPhone14SixtyOne() { Get.toNamed(AppRoutes.iphone14SixtyoneScreen, ); } 
onTapIPhone14EightyFour() { Get.toNamed(AppRoutes.iphone14EightyfourScreen, ); } 
onTapIPhone14EightyFive() { Get.toNamed(AppRoutes.iphone14EightyfiveScreen, ); } 
onTapDashboard1() { Get.toNamed(AppRoutes.dashboard1Screen, ); } 
onTapIPhone14115() { Get.toNamed(AppRoutes.iphone14115Screen, ); } 
onTapIPhone14116() { Get.toNamed(AppRoutes.iphone14116Screen, ); } 
onTapSignupOne() { Get.toNamed(AppRoutes.signUpOneScreen, ); } 
onTapSignupform() { Get.toNamed(AppRoutes.signupFormScreen, ); } 
onTapSignupOTP() { Get.toNamed(AppRoutes.signUpOtpScreen, ); } 
onTapLoading() { Get.toNamed(AppRoutes.loadingScreen, ); } 
onTapIPhone14117Container() { Get.toNamed(AppRoutes.iphone14117Container1Screen, ); } 
onTapIPhone14FiftyTwo() { Get.toNamed(AppRoutes.iphone14FiftytwoScreen, ); } 
onTapIPhone14FiftyThree() { Get.toNamed(AppRoutes.iphone14FiftythreeScreen, ); } 
onTapIPhone14FiftyFour() { Get.toNamed(AppRoutes.iphone14FiftyfourScreen, ); } 
onTapIPhone14SixtyFive() { Get.toNamed(AppRoutes.iphone14SixtyfiveScreen, ); } 
onTapIPhone14SixtySix() { Get.toNamed(AppRoutes.iphone14SixtysixScreen, ); } 
onTapIPhone14SixtyEight() { Get.toNamed(AppRoutes.iphone14SixtyeightScreen, ); } 
onTapIPhone14SixtyNine() { Get.toNamed(AppRoutes.iphone14SixtynineScreen, ); } 
onTapIPhone14EightySix() { Get.toNamed(AppRoutes.iphone14EightysixScreen, ); } 
onTapIPhone14EightySeven() { Get.toNamed(AppRoutes.iphone14EightysevenScreen, ); } 
onTapIPhone14FortyTwo() { Get.toNamed(AppRoutes.iphone14FortytwoScreen, ); } 
onTapIPhone14EightyEight() { Get.toNamed(AppRoutes.iphone14EightyeightScreen, ); } 
onTapIPhone14EightyNine() { Get.toNamed(AppRoutes.iphone14EightynineScreen, ); } 
onTapIPhone14Ninety() { Get.toNamed(AppRoutes.iphone14NinetyScreen, ); } 
onTapIPhone14SixtySeven() { Get.toNamed(AppRoutes.iphone14SixtysevenScreen, ); } 
onTapIPhone14114() { Get.toNamed(AppRoutes.iphone14114Screen, ); } 
onTapFrame48095626() { Get.toNamed(AppRoutes.frame48095626Screen, ); } 
onTapFrame48095574() { Get.toNamed(AppRoutes.frame48095574Screen, ); } 
onTapFrame48095625() { Get.toNamed(AppRoutes.frame48095625Screen, ); } 
onTapIPhone14SixtyFour() { Get.toNamed(AppRoutes.iphone14SixtyfourScreen, ); } 
 }