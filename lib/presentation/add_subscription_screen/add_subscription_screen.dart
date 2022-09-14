import 'controller/add_subscription_controller.dart';
import 'package:chargebee/core/app_export.dart';
import 'package:chargebee/core/utils/validation_functions.dart';
import 'package:chargebee/widgets/custom_button.dart';
import 'package:chargebee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:chargebee/core/constants/Chargebee.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore_for_file: must_be_immutable
class AddSubscriptionScreen extends GetWidget<AddSubscriptionController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: size.width,
                                      margin: getMargin(
                                          left: 10, top: 5, right: 22),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  onTapImgArrowleft();
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        top: 14, bottom: 15),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        height: getSize(20.00),
                                                        width:
                                                            getSize(20.00)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 116,
                                                    top: 16,
                                                    right: 16),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgVectorBlack900,
                                                    height:
                                                        getVerticalSize(42.00),
                                                    width: getHorizontalSize(
                                                        136.00))),
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 36, right: 16),
                                      child: Text("msg_add_subscriptio".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSFProTextMedium20
                                              .copyWith()))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: double.infinity,
                                      margin: getMargin(
                                          left: 16, top: 28, right: 16),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(5.00))),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(right: 10),
                                                child: Text(
                                                    "msg_subscription_na".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSFProTextSemibold14
                                                        .copyWith(
                                                            height: 1.00))),
                                            CustomTextFormField(
                                                width: 396,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .subsciptionNameController,
                                                hintText:
                                                    "msg_subscription_na".tr,
                                                margin: getMargin(top: 8),
                                                onChanged: (text) {},
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isText(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid text";
                                                  }
                                                  return null;
                                                })
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 26, right: 16),
                                      child: Text("lbl_unit_price(\u{20B9})".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSFProTextSemibold14
                                              .copyWith(height: 1.00)))),
                              CustomTextFormField(
                                width: 396,
                                focusNode: FocusNode(),
                                controller: controller.unitPriceController,
                                hintText: "lbl_add".tr,
                                margin:
                                    getMargin(left: 16, top: 15, bottom: 14),
                                alignment: Alignment.center,
                                suffixConstraints: BoxConstraints(
                                    minWidth: getHorizontalSize(13.00),
                                    minHeight: getVerticalSize(11.00)),
                                validator: (value) {
                                  if (value == null ||
                                      (!isNumeric(value, isRequired: true))) {
                                    return "Please enter valid number";
                                  }
                                  return null;
                                },
                                onChanged: (text) {
                                  controller.total.value = ((int.tryParse(
                                                  controller.unitPriceController
                                                      .text) ??
                                              1) *
                                          (int.tryParse(controller
                                                  .monthsController.text) ??
                                              1))
                                      .toString();
                                },
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 26, right: 16),
                                      child: Text("lbl_months".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSFProTextSemibold14
                                              .copyWith(height: 1.00)))),
                              CustomTextFormField(
                                width: 396,
                                focusNode: FocusNode(),
                                controller: controller.monthsController,
                                hintText: "lbl_add".tr,
                                margin:
                                    getMargin(left: 16, top: 15, bottom: 14),
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.center,
                                suffixConstraints: BoxConstraints(
                                    minWidth: getHorizontalSize(13.00),
                                    minHeight: getVerticalSize(11.00)),
                                validator: (value) {
                                  if (!isNumeric(value)) {
                                    return "Please enter valid number";
                                  }
                                  return null;
                                },
                                onChanged: (text) {
                                  controller.total.value = ((int.tryParse(
                                                  controller.unitPriceController
                                                      .text) ??
                                              1) *
                                          (int.tryParse(controller
                                                  .monthsController.text) ??
                                              1))
                                      .toString();
                                },
                              ),
                              Obx(
                                () => Padding(
                                    padding: getPadding(
                                        left: 16, top: 24, right: 16),
                                    child: Text(
                                        "Total:" +
                                            '\u{20B9}' +
                                            controller.total.value,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProTextRegular18
                                            .copyWith())),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: double.infinity,
                                      margin: getMargin(
                                          left: 16,
                                          top: 32,
                                          right: 16,
                                          bottom: 20),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(10.00))),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomButton(
                                                width: 396,
                                                text: "msg_add_subscriptio".tr,
                                                onTap: onTapBtnAddsubscriptio,
                                                alignment: Alignment.centerLeft)
                                          ])))
                            ])))))));
  }

  onTapImgArrowleft() {
    Get.offAllNamed(AppRoutes.homeScreen);
  }

  void onTapBtnAddsubscriptio() {
    Map postItemsReq = {
      'id': controller.subsciptionNameController.text,
      'name': controller.subsciptionNameController.text,
      'type': Chargebee.type,
      'item_applicability': Chargebee.itemApplicability,
      'item_family_id': Chargebee.itemFamilyId,
    };
    controller.callCreateItems(
      postItemsReq,
      successCall: _onCreateItemsSuccess,
      errCall: _onCreateItemsError,
    );
  }

  void _onCreateItemsSuccess() {
    Map postItemPricesReq = {
      'id': controller.subsciptionNameController.text,
      'item_id': controller.subsciptionNameController.text,
      'name': controller.subsciptionNameController.text,
      'pricing_model': Chargebee.perUnit,
      'price': controller.unitPriceController.text,
      'external_name': controller.subsciptionNameController.text,
      'period_unit': Chargebee.periodUnit,
      'period': Chargebee.period,
      'currency_code': Chargebee.currencyCode,
    };
    controller.callCreateItemPrices(
      postItemPricesReq,
      successCall: _onCreateItemPricesSuccess,
      errCall: _onCreateItemPricesError,
    );
  }

  void _onCreateItemsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  void _onCreateItemPricesSuccess() {
    Map postSubscriptionForItemsReq = {
      'subscription_items[item_price_id][0]':
          controller.subsciptionNameController.text,
      'subscription_items[billing_cycles][0]': Chargebee.qty,
      'subscription_items[quantity][0]': controller.monthsController.text,
      'auto_collection': Chargebee.autoCollection,
    };
    controller.callCreateSubscriptionForItems(
      postSubscriptionForItemsReq,
      successCall: _onCreateSubscriptionForItemsSuccess,
      errCall: _onCreateSubscriptionForItemsError,
    );
  }

  void _onCreateSubscriptionForItemsSuccess() {
    Get.offAllNamed(AppRoutes.homeScreen);
  }

  void _onCreateSubscriptionForItemsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  void _onCreateItemPricesError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
