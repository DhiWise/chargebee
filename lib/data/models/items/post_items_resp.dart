class PostItemsResp {
  Item? item;

  PostItemsResp({this.item});

  PostItemsResp.fromJson(Map<String, dynamic> json) {
    item = json['item'] != null ? Item.fromJson(json['item']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.item != null) {
      data['item'] = this.item?.toJson();
    }
    return data;
  }
}

class Item {
  String? id;
  String? name;
  String? externalName;
  String? status;
  int? resourceVersion;
  int? updatedAt;
  String? itemFamilyId;
  String? type;
  bool? isShippable;
  bool? isGiftable;
  bool? enabledForCheckout;
  bool? enabledInPortal;
  String? itemApplicability;
  bool? metered;
  String? channel;
  String? object;

  Item(
      {this.id,
        this.name,
        this.externalName,
        this.status,
        this.resourceVersion,
        this.updatedAt,
        this.itemFamilyId,
        this.type,
        this.isShippable,
        this.isGiftable,
        this.enabledForCheckout,
        this.enabledInPortal,
        this.itemApplicability,
        this.metered,
        this.channel,
        this.object});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    externalName = json['external_name'];
    status = json['status'];
    resourceVersion = json['resource_version'];
    updatedAt = json['updated_at'];
    itemFamilyId = json['item_family_id'];
    type = json['type'];
    isShippable = json['is_shippable'];
    isGiftable = json['is_giftable'];
    enabledForCheckout = json['enabled_for_checkout'];
    enabledInPortal = json['enabled_in_portal'];
    itemApplicability = json['item_applicability'];
    metered = json['metered'];
    channel = json['channel'];
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
    if (this.externalName != null) {
      data['external_name'] = this.externalName;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.resourceVersion != null) {
      data['resource_version'] = this.resourceVersion;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.itemFamilyId != null) {
      data['item_family_id'] = this.itemFamilyId;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.isShippable != null) {
      data['is_shippable'] = this.isShippable;
    }
    if (this.isGiftable != null) {
      data['is_giftable'] = this.isGiftable;
    }
    if (this.enabledForCheckout != null) {
      data['enabled_for_checkout'] = this.enabledForCheckout;
    }
    if (this.enabledInPortal != null) {
      data['enabled_in_portal'] = this.enabledInPortal;
    }
    if (this.itemApplicability != null) {
      data['item_applicability'] = this.itemApplicability;
    }
    if (this.metered != null) {
      data['metered'] = this.metered;
    }
    if (this.channel != null) {
      data['channel'] = this.channel;
    }
    if (this.object != null) {
      data['object'] = this.object;
    }
    return data;
  }
}
