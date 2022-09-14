import '/core/app_export.dart';
import 'package:chargebee/presentation/home_screen/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:chargebee/data/models/delete/post_delete_resp.dart';
import 'package:chargebee/data/apiClient/api_client.dart';
import 'package:chargebee/data/models/subscriptions/get_subscriptions_resp.dart';
import 'package:chargebee/data/models/subscriptions/get_subscriptions_resp.dart';
import '../models/home_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;

  PostDeleteResp postDeleteResp = PostDeleteResp();

  GetSubscriptionsResp getSubscriptionsResp = GetSubscriptionsResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchSubscriptions(
      successCall: _onFetchSubscriptionsSuccess,
      errCall: _onFetchSubscriptionsError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callCreateDelete(Map req,
      {VoidCallback? successCall, VoidCallback? errCall, String? subId}) async {
    return Get.find<ApiClient>().createDelete(
        onSuccess: (resp) {
          onCreateDeleteSuccess();
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          print('delete -> ${err.toString()}');
          onCreateDeleteError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req,
        subId: subId);
  }

  void onCreateDeleteSuccess() {
    Future.delayed(const Duration(milliseconds: 1600), () {
      this.callFetchSubscriptions(
        successCall: _onFetchSubscriptionsSuccess,
        errCall: _onFetchSubscriptionsError,
      );
    });
  }

  void onCreateDeleteError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
          messageText: Text('$err', style: TextStyle(color: Colors.white)));
    }
  }

  void callFetchSubscriptions(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchSubscriptions(onSuccess: (resp) {
      onFetchSubscriptionsSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchSubscriptionsError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchSubscriptionsSuccess(var response) {
    getSubscriptionsResp = GetSubscriptionsResp.fromJson(response);
  }

  void onFetchSubscriptionsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
          messageText: Text('$err', style: TextStyle(color: Colors.white)));
    }
  }

  void _onFetchSubscriptionsSuccess() {
    List<HomeItemModel> homeItemModelList = [];
    if (getSubscriptionsResp!.klist! != null &&
        getSubscriptionsResp!.klist!.isNotEmpty) {
      for (var element in getSubscriptionsResp!.klist!) {
        var homeItemModel = HomeItemModel();
        homeItemModel.priceTxt.value = '\u{20B9}' +
            element.subscription!.subscriptionItems![0].unitPrice!.toString();
        homeItemModel.monthsTxt.value =
            element.subscription!.subscriptionItems![0].quantity!.toString();

        homeItemModel.totalTxt.value = '\u{20B9}' +
            element.subscription!.subscriptionItems![0].amount!.toString();
        homeItemModel.subsciptionNameTxt.value =
            element.subscription!.subscriptionItems![0].itemPriceId!.toString();

        homeItemModel.idTxt.value = element.subscription!.id.toString();
        homeItemModelList.add(homeItemModel);
      }
    }
    homeModelObj.value.homeItemList.value = homeItemModelList;
  }

  void _onFetchSubscriptionsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
