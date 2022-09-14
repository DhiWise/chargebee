import 'package:chargebee/data/models/delete/post_delete_req.dart';

import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:chargebee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj, {this.onTapImgVectorOne});

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapImgVectorOne;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 9,
        bottom: 10,
        left: 28,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 55,
                  child: Padding(
                    padding: getPadding(
                      top: 1,
                      bottom: 1,
                    ),
                    child: Obx(
                      () => Text(
                        homeItemModelObj.subsciptionNameTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSFProTextRegular14.copyWith(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 50,
                    top: 1,
                    bottom: 3,
                  ),
                  child: Obx(
                    () => Text(
                      homeItemModelObj.priceTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextRegular14.copyWith(),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 68,
                    bottom: 3,
                  ),
                  child: Obx(
                    () => Text(
                      homeItemModelObj.monthsTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextRegular14.copyWith(),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 40,
                    top: 1,
                    bottom: 3,
                  ),
                  child: Obx(
                    () => Text(
                      homeItemModelObj.totalTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextRegular14.copyWith(),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onTapImgVectorOne!();
                  },
                  child: Padding(
                    padding: getPadding(
                      left: 50,
                      top: 1,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgVector,
                      height: getVerticalSize(
                        24.00,
                      ),
                      width: getHorizontalSize(
                        24.00,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
