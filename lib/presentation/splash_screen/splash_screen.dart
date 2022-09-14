import 'controller/splash_controller.dart';
import 'package:chargebee/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepOrange300,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(
                                      left: 40, top: 40, right: 40, bottom: 20),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgGroup47,
                                      height: getVerticalSize(147.00),
                                      width: getHorizontalSize(208.00))))
                        ]))))));
  }
}
