import '/core/app_export.dart';
import 'package:chargebee/presentation/add_subscription_screen/models/add_subscription_model.dart';
import 'package:flutter/material.dart';
import 'package:chargebee/data/models/itemPrices/post_item_prices_resp.dart';
import 'package:chargebee/data/apiClient/api_client.dart';
import 'package:chargebee/data/models/subscriptionForItems/post_subscription_for_items_resp.dart';
import 'package:chargebee/data/models/items/post_items_resp.dart';

class AddSubscriptionController extends GetxController {
  RxString total = "1".obs;

  TextEditingController subsciptionNameController = TextEditingController();

  TextEditingController unitPriceController = TextEditingController(text: '1');

  TextEditingController monthsController = TextEditingController(text: '1');

  Rx<AddSubscriptionModel> addSubscriptionModelObj = AddSubscriptionModel().obs;

  PostItemsResp postItemsResp = PostItemsResp();

  PostItemPricesResp postItemPricesResp = PostItemPricesResp();

  PostSubscriptionForItemsResp postSubscriptionForItemsResp =
      PostSubscriptionForItemsResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    subsciptionNameController.dispose();
    unitPriceController.dispose();
    monthsController.dispose();
  }

  void callCreateItems(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createItems(
        onSuccess: (resp) {
          onCreateItemsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateItemsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateItemsSuccess(var response) {
    postItemsResp = PostItemsResp.fromJson(response);
  }

  void onCreateItemsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void callCreateItemPrices(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createItemPrices(
        onSuccess: (resp) {
          onCreateItemPricesSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateItemPricesError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateItemPricesSuccess(var response) {
    postItemPricesResp = PostItemPricesResp.fromJson(response);
  }

  void onCreateItemPricesError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void callCreateSubscriptionForItems(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createSubscriptionForItems(
        onSuccess: (resp) {
          onCreateSubscriptionForItemsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateSubscriptionForItemsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateSubscriptionForItemsSuccess(var response) {
    postSubscriptionForItemsResp =
        PostSubscriptionForItemsResp.fromJson(response);
  }

  void onCreateSubscriptionForItemsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
}
