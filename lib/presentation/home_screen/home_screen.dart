import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:chargebee/core/app_export.dart';
import 'package:chargebee/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:chargebee/data/models/delete/post_delete_req.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Padding(
                          padding: getPadding(left: 16, top: 16, right: 16),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgVectorBlack900,
                              height: getVerticalSize(42.00),
                              width: getHorizontalSize(136.00))),
                      Padding(
                          padding: getPadding(left: 16, top: 35, right: 16),
                          child: Text("lbl_subscriptions".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFProTextMedium20.copyWith())),
                      Container(
                          width: getHorizontalSize(222.00),
                          margin: getMargin(left: 16, top: 16, right: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(10.00))),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    width: 222,
                                    text: "msg_add_subscriptio".tr,
                                    onTap: onTapBtnAddsubscriptio,
                                    alignment: Alignment.centerLeft)
                              ])),
                      Container(
                          margin: getMargin(left: 16, top: 32, right: 16),
                          decoration: AppDecoration.fillBluegray700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 18, top: 9, bottom: 10),
                                    child: Text("msg_subsciption_nam".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProTextMedium14
                                            .copyWith())),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 8, bottom: 13),
                                    child: Text("lbl_unit_price".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProTextMedium14
                                            .copyWith())),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 8, bottom: 13),
                                    child: Text("lbl_months".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProTextMedium14
                                            .copyWith())),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 8, bottom: 13),
                                    child: Text("lbl_total".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProTextMedium14
                                            .copyWith())),
                                Padding(
                                    padding: getPadding(
                                        left: 28, top: 8, bottom: 13),
                                    child: Text("lbl_action".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProTextMedium14
                                            .copyWith()))
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 16, top: 10, right: 16, bottom: 351),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller
                                  .homeModelObj.value.homeItemList.length,
                              itemBuilder: (context, index) {
                                HomeItemModel model = controller
                                    .homeModelObj.value.homeItemList[index];
                                return HomeItemWidget(
                                  model,
                                  onTapImgVectorOne: () {
                                    PostDeleteReq postDeleteReq =
                                        PostDeleteReq();
                                    controller.callCreateDelete(
                                        postDeleteReq.toJson(),
                                        successCall: _onCreateDeleteSuccess,
                                        errCall: _onCreateDeleteError,
                                        subId: controller.homeModelObj.value
                                            .homeItemList[index].idTxt
                                            .toString());
                                  },
                                );
                              })))
                    ]))))));
  }

  void _onCreateDeleteSuccess() {}

  void _onFetchSubscriptionsSuccess() {
    Get.delete<HomeController>();
    Get.put(HomeController());
  }

  void _onFetchSubscriptionsError() {
    Fluttertoast.showToast(msg: "Something went wrong!");
  }

  void _onCreateDeleteError() {
    Fluttertoast.showToast(msg: "Something went wrong!");
  }

  onTapBtnAddsubscriptio() {
    Get.offAndToNamed(AppRoutes.addSubscriptionScreen);
  }
}
