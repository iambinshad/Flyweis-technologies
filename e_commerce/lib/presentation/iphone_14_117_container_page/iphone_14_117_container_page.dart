import 'dart:developer';

import 'package:e_commerce/core/api/twillio_configration.dart';
import 'package:e_commerce/presentation/iphone_14_117_container_page/controller/provider.dart';
import 'package:e_commerce/presentation/slide_bar/slide_bar.dart';
import 'package:provider/provider.dart';

import '../iphone_14_117_container_page/widgets/listframe480956_item_widget.dart';
import '../iphone_14_117_container_page/widgets/listvector1_item_widget.dart';
import 'controller/iphone_14_117_container_controller.dart';
import 'models/iphone_14_117_container_model.dart';
import 'models/listframe480956_item_model.dart';
import 'models/listvector1_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14117ContainerPage extends StatefulWidget {
  @override
  State<Iphone14117ContainerPage> createState() =>
      _Iphone14117ContainerPageState();
}

class _Iphone14117ContainerPageState extends State<Iphone14117ContainerPage> {
  Iphone14117ContainerController controller =
      Get.put(Iphone14117ContainerController(Iphone14117ContainerModel().obs));

  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context){
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    
      Provider.of<HomeProvider>(context, listen: false).getAllCategory(context);

    });
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: Iphone14SixtyfourScreen(),
          ),
        ),
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(40),
            leadingWidth: 50,
            leading: IconButton(
              icon: AppbarImage(
                height: getVerticalSize(20),
                width: getHorizontalSize(20),
                svgPath: ImageConstant.imgMenu,
                // margin: getMargin(left: 20, bottom: 6),
              ),
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer(); // Open the drawer
              },
            ),
            title: Padding(
              padding: getPadding(left: 21),
              child: Row(children: [
                AppbarImage(
                    height: getVerticalSize(20),
                    width: getHorizontalSize(38),
                    svgPath: ImageConstant.imgUser),
                Padding(
                    padding: getPadding(left: 5, bottom: 2),
                    child: Text("lbl_hebevu_fresh".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14))
              ]),
            ),
            actions: [
              AppbarImage(
                  height: getVerticalSize(14),
                  width: getHorizontalSize(15),
                  svgPath: ImageConstant.imgSearch,
                  margin: getMargin(left: 21, right: 3)),
              AppbarImage(
                  height: getVerticalSize(14),
                  width: getHorizontalSize(12),
                  svgPath: ImageConstant.imgNotification,
                  margin: getMargin(left: 22, right: 3)),
              AppbarImage(
                  height: getVerticalSize(14),
                  width: getHorizontalSize(16),
                  svgPath: ImageConstant.imgCart,
                  margin: getMargin(left: 22, right: 24),
                  onTap: () {
                    onTapCart();
                  })
            ]),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 10),
            child: Padding(
              padding: getPadding(left: 13, bottom: 5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: getPadding(left: 5),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgLocation,
                                  height: getVerticalSize(19),
                                  width: getHorizontalSize(16),
                                  margin: getMargin(bottom: 2)),
                              Padding(
                                  padding: getPadding(left: 10),
                                  child: Text("msg_noida_sector_145".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium14
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.14)))),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowdown,
                                  height: getVerticalSize(7),
                                  width: getHorizontalSize(12),
                                  margin:
                                      getMargin(left: 20, top: 6, bottom: 8))
                            ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle4307,
                        height: getVerticalSize(145),
                        width: getHorizontalSize(350),
                        radius: BorderRadius.circular(getHorizontalSize(10)),
                        margin: getMargin(left: 6, top: 31)),
                    Padding(
                        padding: getPadding(left: 6, top: 21),
                        child: Text("msg_shop_by_categories".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium14Gray90001)),
                    Padding(
                      padding: getPadding(top: 20, right: 7),
                      child: Consumer<HomeProvider>(
                        builder: (context, value, child) => GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, // 3 items in each row
                            mainAxisSpacing: 7.0, // spacing between rows
                            // crossAxisSpacing: 7.0, // spacing between columns
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          // separatorBuilder: (context, index) {
                          //   return SizedBox(height: getVerticalSize(18));
                          // },
                          itemCount:
                              Provider.of<HomeProvider>(context, listen: false)
                                  .categories
                                  .length,
                          itemBuilder: (context, index) {
                            // Listframe480956ItemModel model = controller
                            //     .iphone14117ContainerModelObj
                            //     .value
                            //     .listframe480956ItemList
                            //     .value[index];
                            // return Listframe480956ItemWidget(
                            //   index,
                            // );
                            return GestureDetector(
                              onTap: () {
                                onTapColumnframe4809.call();
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.gray300,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15,
                                    ),
                                    child: Container(
                                      height: getSize(
                                        103,
                                      ),
                                      width: getSize(
                                        103,
                                      ),
                                      padding: getPadding(
                                        all: 11,
                                      ),
                                      decoration:
                                          AppDecoration.fillGray300.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15,
                                      ),
                                      child: Stack(
                                        children: [
                                          CustomS(
                                            imagePath:
                                                value.categories[index].image,
                                            height: getSize(
                                              81,
                                            ),
                                            width: getSize(
                                              81,
                                            ),
                                            radius: BorderRadius.circular(
                                              getHorizontalSize(
                                                14,
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: getSize(4),
                                  ),
                                  Text(
                                    value.categories[index].name,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium13,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    // SizedBox(height:getSize(1),),
                    // Card(
                    //     clipBehavior: Clip.antiAlias,
                    //     elevation: 0,
                    //     margin: getMargin(left: 6, top: 18),
                    //     color: ColorConstant.gray300,
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadiusStyle.roundedBorder15),
                    //     child: Container(
                    //         height: getSize(103),
                    //         width: getSize(103),
                    //         padding: getPadding(
                    //             left: 11, top: 10, right: 11, bottom: 10),
                    //         decoration: AppDecoration.fillGray300.copyWith(
                    //             borderRadius:
                    //                 BorderRadiusStyle.roundedBorder15),
                    //         child: Stack(children: [
                    //           CustomImageView(
                    //               imagePath: ImageConstant.imgFrame4809562814,
                    //               height: getSize(81),
                    //               width: getSize(81),
                    //               radius: BorderRadius.circular(
                    //                   getHorizontalSize(14)),
                    //               alignment: Alignment.center)
                    //         ]))),
                    // Padding(
                    //     padding: getPadding(left: 14, top: 11),
                    //     child: Text("lbl_gou_products".tr,
                    //         overflow: TextOverflow.ellipsis,
                    //         textAlign: TextAlign.left,
                    //         style: AppStyle.txtPoppinsMedium13)),
                    Padding(
                        padding: getPadding(left: 6, top: 20, right: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("msg_sweets_savories".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14Gray90001),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtPrice();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("lbl_view_all".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtPoppinsMedium1227)))
                            ])),
                    GestureDetector(
                      onTap: () {
                        onTapSweets();
                      },
                      child: Container(
                          height: getVerticalSize(199),
                          child: Obx(() => ListView.separated(
                              padding: getPadding(left: 6, top: 10),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(20));
                              },
                              itemCount: controller.iphone14117ContainerModelObj
                                  .value.listvector1ItemList.value.length,
                              itemBuilder: (context, index) {
                                Listvector1ItemModel model = controller
                                    .iphone14117ContainerModelObj
                                    .value
                                    .listvector1ItemList
                                    .value[index];
                                return Listvector1ItemWidget(model);
                              }))),
                    ),
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle4307,
                        height: getVerticalSize(145),
                        width: getHorizontalSize(350),
                        radius: BorderRadius.circular(getHorizontalSize(10)),
                        margin: getMargin(left: 6, top: 30)),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle4308,
                      height: getVerticalSize(145),
                      width: getHorizontalSize(350),
                      radius: BorderRadius.circular(getHorizontalSize(10)),
                      margin: getMargin(left: 6, top: 30),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  onTapColumnframe4809() {
    Get.toNamed(AppRoutes.iphone14FiftytwoScreen);
  }

  onTapSweets() {
    Get.toNamed(AppRoutes.iphone14FiftythreeScreen);
  }

  onTapColumnframe4810() {
    Get.toNamed(AppRoutes.iphone14FiftytwoScreen);
  }

  onTapColumnframe4811() {
    Get.toNamed(AppRoutes.iphone14FiftytwoScreen);
  }

  onTapTxtPrice() {
    Get.toNamed(
      AppRoutes.iphone14FiftytwoScreen,
    );
  }

  onTapCart() {
    Get.toNamed(
      AppRoutes.iphone14FiftyfourScreen,
    );
  }
}
