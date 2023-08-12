import 'controller/iphone_14_117_container1_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/presentation/iphone_14_117_container_page/iphone_14_117_container_page.dart';
import 'package:e_commerce/presentation/iphone_14_118_page/iphone_14_118_page.dart';
import 'package:e_commerce/presentation/iphone_14_119_page/iphone_14_119_page.dart';
import 'package:e_commerce/presentation/iphone_14_120_page/iphone_14_120_page.dart';
import 'package:e_commerce/presentation/iphone_14_121_page/iphone_14_121_page.dart';
import 'package:e_commerce/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class Iphone14117Container1Screen
    extends GetWidget<Iphone14117Container1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.iphone14117ContainerPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.iphone14117ContainerPage;
      case BottomBarEnum.tf:
        return AppRoutes.iphone14118Page;
      case BottomBarEnum.Schedule:
        return AppRoutes.iphone14119Page;
      case BottomBarEnum.Plans:
        return AppRoutes.iphone14120Page;
      case BottomBarEnum.Support:
        return AppRoutes.iphone14121Page;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone14117ContainerPage:
        return Iphone14117ContainerPage();
      case AppRoutes.iphone14118Page:
        return Iphone14118Page();
      case AppRoutes.iphone14119Page:
        return Iphone14119Page();
      case AppRoutes.iphone14120Page:
        return Iphone14120Page();
      case AppRoutes.iphone14121Page:
        return Iphone14121Page();
      default:
        return DefaultWidget();
    }
  }
}
