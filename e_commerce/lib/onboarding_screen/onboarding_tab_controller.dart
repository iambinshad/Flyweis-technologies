import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/core/utils/image_constant.dart';
import 'package:e_commerce/core/utils/size_utils.dart';
import 'package:e_commerce/presentation/dashboard_1_screen/dashboard_1_screen.dart';
import 'package:e_commerce/presentation/iphone_14_115_screen/iphone_14_115_screen.dart';
import 'package:e_commerce/presentation/iphone_14_116_screen/iphone_14_116_screen.dart';
import 'package:e_commerce/presentation/sign_in_one_screen/veiw/sign_in_screen.dart';
import 'package:e_commerce/presentation/sign_up_one_screen/binding/sign_up_one_binding.dart';
import 'package:e_commerce/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:e_commerce/widgets/custom_floating_button.dart';
import 'package:e_commerce/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void goToNextTab() {
    if (_currentIndex < _tabController.length - 1) {
      _tabController.animateTo(_currentIndex + 1);
    } else {
      // onTap: () {
      //   onTapsignUpOneScreen();
      // };
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignInOneScreen(),
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: TabBarView(
        controller: _tabController,
        children: [
          Dashboard1Screen(),
          Iphone14115Screen(),
          Iphone14116Screen(),
        ],
      ),
      floatingActionButton: CustomFloatingButton(
        onTap:  goToNextTab,
        height: 60,
        width: 60,
        child: CustomImageView(
          svgPath: ImageConstant.imgArrowright,
          height: getVerticalSize(30.0),
          width: getHorizontalSize(30.0),
        ),
      ),
    );
  }

}
