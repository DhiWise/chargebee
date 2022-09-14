class PostItemPricesResp {
  ItemPrice? itemPrice;

  PostItemPricesResp({this.itemPrice});

  PostItemPricesResp.fromJson(Map<String, dynamic> json) {
    itemPrice = json['item_price'] != null
        ? ItemPrice.fromJson(json['item_price'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.itemPrice != null) {
      data['item_price'] = this.itemPrice?.toJson();
    }
    return data;
  }
}

class ItemPrice {
  String? id;
  String? name;
  String? itemFamilyId;
  String? itemId;
  String? status;
  String? externalName;
  String? pricingModel;
  int? price;
  int? period;
  String? currencyCode;
  String? periodUnit;
  int? freeQuantity;
  String? channel;
  int? resourceVersion;
  int? updatedAt;
  int? createdAt;
  bool? isTaxable;
  String? itemType;
  bool? showDescriptionInInvoices;
  bool? showDescriptionInQuotes;
  String? object;

  ItemPrice(
      {this.id,
      this.name,
      this.itemFamilyId,
      this.itemId,
      this.status,
      this.externalName,
      this.pricingModel,
      this.price,
      this.period,
      this.currencyCode,
      this.periodUnit,
      this.freeQuantity,
      this.channel,
      this.resourceVersion,
      this.updatedAt,
      this.createdAt,
      this.isTaxable,
      this.itemType,
      this.showDescriptionInInvoices,
      this.showDescriptionInQuotes,
      this.object});

  ItemPrice.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    itemFamilyId = json['item_family_id'];
    itemId = json['item_id'];
    status = json['status'];
    externalName = json['external_name'];
    pricingModel = json['pricing_model'];
    price = json['price'];
    period = json['period'];
    currencyCode = json['currency_code'];
    periodUnit = json['period_unit'];
    freeQuantity = json['free_quantity'];
    channel = json['channel'];
    resourceVersion = json['resource_version'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    isTaxable = json['is_taxable'];
    itemType = json['item_type'];
    showDescriptionInInvoices = json['show_description_in_invoices'];
    showDescriptionInQuotes = json['show_description_in_quotes'];
    object = json['object'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.itemFamilyId != null) {
      data['item_family_id'] = this.itemFamilyId;
    }
    if (this.itemId != null) {
      data['item_id'] = this.itemId;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.externalName != null) {
      data['external_name'] = this.externalName;
    }
    if (this.pricingModel != null) {
      data['pricing_model'] = this.pricingModel;
    }
    if (this.price != null) {
      data['price'] = this.price;
    }
    if (this.period != null) {
      data['period'] = this.period;
    }
    if (this.currencyCode != null) {
      data['currency_code'] = this.currencyCode;
    }
    if (this.periodUnit != null) {
      data['period_unit'] = this.periodUnit;
    }
    if (this.freeQuantity != null) {
      data['free_quantity'] = this.freeQuantity;
    }
    if (this.channel != null) {
      data['channel'] = this.channel;
    }
    if (this.resourceVersion != null) {
      data['resource_version'] = this.resourceVersion;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.isTaxable != null) {
      data['is_taxable'] = this.isTaxable;
    }
    if (this.itemType != null) {
      data['item_type'] = this.itemType;
    }
    if (this.showDescriptionInInvoices != null) {
      data['show_description_in_invoices'] = this.showDescriptionInInvoices;
    }
    if (this.showDescriptionInQuotes != null) {
      data['show_description_in_quotes'] = this.showDescriptionInQuotes;
    }
    if (this.object != null) {
      data['object'] = this.object;
    }
    return data;
  }
}
