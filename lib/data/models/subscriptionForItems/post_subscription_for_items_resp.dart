class PostSubscriptionForItemsResp {
  Subscription? subscription;
  Customer? customer;
  Invoice? invoice;

  PostSubscriptionForItemsResp(
      {this.subscription, this.customer, this.invoice});

  PostSubscriptionForItemsResp.fromJson(Map<String, dynamic> json) {
    subscription = json['subscription'] != null
        ? Subscription.fromJson(json['subscription'])
        : null;
    customer =
        json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    invoice =
        json['invoice'] != null ? Invoice.fromJson(json['invoice']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.subscription != null) {
      data['subscription'] = this.subscription?.toJson();
    }
    if (this.customer != null) {
      data['customer'] = this.customer?.toJson();
    }
    if (this.invoice != null) {
      data['invoice'] = this.invoice?.toJson();
    }
    return data;
  }
}

class Subscription {
  String? id;
  int? billingPeriod;
  String? billingPeriodUnit;
  int? remainingBillingCycles;
  String? autoCollection;
  String? customerId;
  String? status;
  int? currentTermStart;
  int? currentTermEnd;
  int? createdAt;
  int? startedAt;
  int? activatedAt;
  int? cancelledAt;
  int? updatedAt;
  bool? hasScheduledChanges;
  int? cancelScheduleCreatedAt;
  String? channel;
  int? resourceVersion;
  bool? deleted;
  String? object;
  String? currencyCode;
  List<SubscriptionItems>? subscriptionItems;
  int? dueInvoicesCount;
  int? dueSince;
  int? totalDues;
  int? mrr;
  bool? hasScheduledAdvanceInvoices;

  Subscription(
      {this.id,
      this.billingPeriod,
      this.billingPeriodUnit,
      this.remainingBillingCycles,
      this.autoCollection,
      this.customerId,
      this.status,
      this.currentTermStart,
      this.currentTermEnd,
      this.createdAt,
      this.startedAt,
      this.activatedAt,
      this.cancelledAt,
      this.updatedAt,
      this.hasScheduledChanges,
      this.cancelScheduleCreatedAt,
      this.channel,
      this.resourceVersion,
      this.deleted,
      this.object,
      this.currencyCode,
      this.subscriptionItems,
      this.dueInvoicesCount,
      this.dueSince,
      this.totalDues,
      this.mrr,
      this.hasScheduledAdvanceInvoices});

  Subscription.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    billingPeriod = json['billing_period'];
    billingPeriodUnit = json['billing_period_unit'];
    remainingBillingCycles = json['remaining_billing_cycles'];
    autoCollection = json['auto_collection'];
    customerId = json['customer_id'];
    status = json['status'];
    currentTermStart = json['current_term_start'];
    currentTermEnd = json['current_term_end'];
    createdAt = json['created_at'];
    startedAt = json['started_at'];
    activatedAt = json['activated_at'];
    cancelledAt = json['cancelled_at'];
    updatedAt = json['updated_at'];
    hasScheduledChanges = json['has_scheduled_changes'];
    cancelScheduleCreatedAt = json['cancel_schedule_created_at'];
    channel = json['channel'];
    resourceVersion = json['resource_version'];
    deleted = json['deleted'];
    object = json['object'];
    currencyCode = json['currency_code'];
    if (json['subscription_items'] != null) {
      subscriptionItems = <SubscriptionItems>[];
      json['subscription_items'].forEach((v) {
        subscriptionItems?.add(SubscriptionItems.fromJson(v));
      });
    }
    dueInvoicesCount = json['due_invoices_count'];
    dueSince = json['due_since'];
    totalDues = json['total_dues'];
    mrr = json['mrr'];
    hasScheduledAdvanceInvoices = json['has_scheduled_advance_invoices'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.billingPeriod != null) {
      data['billing_period'] = this.billingPeriod;
    }
    if (this.billingPeriodUnit != null) {
      data['billing_period_unit'] = this.billingPeriodUnit;
    }
    if (this.remainingBillingCycles != null) {
      data['remaining_billing_cycles'] = this.remainingBillingCycles;
    }
    if (this.autoCollection != null) {
      data['auto_collection'] = this.autoCollection;
    }
    if (this.customerId != null) {
      data['customer_id'] = this.customerId;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.currentTermStart != null) {
      data['current_term_start'] = this.currentTermStart;
    }
    if (this.currentTermEnd != null) {
      data['current_term_end'] = this.currentTermEnd;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.startedAt != null) {
      data['started_at'] = this.startedAt;
    }
    if (this.activatedAt != null) {
      data['activated_at'] = this.activatedAt;
    }
    if (this.cancelledAt != null) {
      data['cancelled_at'] = this.cancelledAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.hasScheduledChanges != null) {
      data['has_scheduled_changes'] = this.hasScheduledChanges;
    }
    if (this.cancelScheduleCreatedAt != null) {
      data['cancel_schedule_created_at'] = this.cancelScheduleCreatedAt;
    }
    if (this.channel != null) {
      data['channel'] = this.channel;
    }
    if (this.resourceVersion != null) {
      data['resource_version'] = this.resourceVersion;
    }
    if (this.deleted != null) {
      data['deleted'] = this.deleted;
    }
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.currencyCode != null) {
      data['currency_code'] = this.currencyCode;
    }
    if (this.subscriptionItems != null) {
      data['subscription_items'] =
          this.subscriptionItems?.map((v) => v.toJson()).toList();
    }
    if (this.dueInvoicesCount != null) {
      data['due_invoices_count'] = this.dueInvoicesCount;
    }
    if (this.dueSince != null) {
      data['due_since'] = this.dueSince;
    }
    if (this.totalDues != null) {
      data['total_dues'] = this.totalDues;
    }
    if (this.mrr != null) {
      data['mrr'] = this.mrr;
    }
    if (this.hasScheduledAdvanceInvoices != null) {
      data['has_scheduled_advance_invoices'] = this.hasScheduledAdvanceInvoices;
    }
    return data;
  }
}

class SubscriptionItems {
  String? itemPriceId;
  String? itemType;
  int? quantity;
  int? unitPrice;
  int? amount;
  int? freeQuantity;
  int? billingCycles;
  String? object;

  SubscriptionItems(
      {this.itemPriceId,
      this.itemType,
      this.quantity,
      this.unitPrice,
      this.amount,
      this.freeQuantity,
      this.billingCycles,
      this.object});

  SubscriptionItems.fromJson(Map<String, dynamic> json) {
    itemPriceId = json['item_price_id'];
    itemType = json['item_type'];
    quantity = json['quantity'];
    unitPrice = json['unit_price'];
    amount = json['amount'];
    freeQuantity = json['free_quantity'];
    billingCycles = json['billing_cycles'];
    object = json['object'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.itemPriceId != null) {
      data['item_price_id'] = this.itemPriceId;
    }
    if (this.itemType != null) {
      data['item_type'] = this.itemType;
    }
    if (this.quantity != null) {
      data['quantity'] = this.quantity;
    }
    if (this.unitPrice != null) {
      data['unit_price'] = this.unitPrice;
    }
    if (this.amount != null) {
      data['amount'] = this.amount;
    }
    if (this.freeQuantity != null) {
      data['free_quantity'] = this.freeQuantity;
    }
    if (this.billingCycles != null) {
      data['billing_cycles'] = this.billingCycles;
    }
    if (this.object != null) {
      data['object'] = this.object;
    }
    return data;
  }
}

class Customer {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? autoCollection;
  int? netTermDays;
  bool? allowDirectDebit;
  int? createdAt;
  String? taxability;
  int? updatedAt;
  String? locale;
  String? piiCleared;
  String? channel;
  int? resourceVersion;
  bool? deleted;
  String? object;
  BillingAddress? billingAddress;
  String? cardStatus;
  int? promotionalCredits;
  int? refundableCredits;
  int? excessPayments;
  int? unbilledCharges;
  String? preferredCurrencyCode;

  Customer(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.autoCollection,
      this.netTermDays,
      this.allowDirectDebit,
      this.createdAt,
      this.taxability,
      this.updatedAt,
      this.locale,
      this.piiCleared,
      this.channel,
      this.resourceVersion,
      this.deleted,
      this.object,
      this.billingAddress,
      this.cardStatus,
      this.promotionalCredits,
      this.refundableCredits,
      this.excessPayments,
      this.unbilledCharges,
      this.preferredCurrencyCode});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    autoCollection = json['auto_collection'];
    netTermDays = json['net_term_days'];
    allowDirectDebit = json['allow_direct_debit'];
    createdAt = json['created_at'];
    taxability = json['taxability'];
    updatedAt = json['updated_at'];
    locale = json['locale'];
    piiCleared = json['pii_cleared'];
    channel = json['channel'];
    resourceVersion = json['resource_version'];
    deleted = json['deleted'];
    object = json['object'];
    billingAddress = json['billing_address'] != null
        ? BillingAddress.fromJson(json['billing_address'])
        : null;
    cardStatus = json['card_status'];
    promotionalCredits = json['promotional_credits'];
    refundableCredits = json['refundable_credits'];
    excessPayments = json['excess_payments'];
    unbilledCharges = json['unbilled_charges'];
    preferredCurrencyCode = json['preferred_currency_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.firstName != null) {
      data['first_name'] = this.firstName;
    }
    if (this.lastName != null) {
      data['last_name'] = this.lastName;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.autoCollection != null) {
      data['auto_collection'] = this.autoCollection;
    }
    if (this.netTermDays != null) {
      data['net_term_days'] = this.netTermDays;
    }
    if (this.allowDirectDebit != null) {
      data['allow_direct_debit'] = this.allowDirectDebit;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.taxability != null) {
      data['taxability'] = this.taxability;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.locale != null) {
      data['locale'] = this.locale;
    }
    if (this.piiCleared != null) {
      data['pii_cleared'] = this.piiCleared;
    }
    if (this.channel != null) {
      data['channel'] = this.channel;
    }
    if (this.resourceVersion != null) {
      data['resource_version'] = this.resourceVersion;
    }
    if (this.deleted != null) {
      data['deleted'] = this.deleted;
    }
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.billingAddress != null) {
      data['billing_address'] = this.billingAddress?.toJson();
    }
    if (this.cardStatus != null) {
      data['card_status'] = this.cardStatus;
    }
    if (this.promotionalCredits != null) {
      data['promotional_credits'] = this.promotionalCredits;
    }
    if (this.refundableCredits != null) {
      data['refundable_credits'] = this.refundableCredits;
    }
    if (this.excessPayments != null) {
      data['excess_payments'] = this.excessPayments;
    }
    if (this.unbilledCharges != null) {
      data['unbilled_charges'] = this.unbilledCharges;
    }
    if (this.preferredCurrencyCode != null) {
      data['preferred_currency_code'] = this.preferredCurrencyCode;
    }
    return data;
  }
}

class BillingAddress {
  String? firstName;
  String? lastName;
  String? line1;
  String? city;
  String? state;
  String? country;
  String? zip;
  String? validationStatus;
  String? object;

  BillingAddress(
      {this.firstName,
      this.lastName,
      this.line1,
      this.city,
      this.state,
      this.country,
      this.zip,
      this.validationStatus,
      this.object});

  BillingAddress.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    line1 = json['line1'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    zip = json['zip'];
    validationStatus = json['validation_status'];
    object = json['object'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.firstName != null) {
      data['first_name'] = this.firstName;
    }
    if (this.lastName != null) {
      data['last_name'] = this.lastName;
    }
    if (this.line1 != null) {
      data['line1'] = this.line1;
    }
    if (this.city != null) {
      data['city'] = this.city;
    }
    if (this.state != null) {
      data['state'] = this.state;
    }
    if (this.country != null) {
      data['country'] = this.country;
    }
    if (this.zip != null) {
      data['zip'] = this.zip;
    }
    if (this.validationStatus != null) {
      data['validation_status'] = this.validationStatus;
    }
    if (this.object != null) {
      data['object'] = this.object;
    }
    return data;
  }
}

class Invoice {
  String? id;
  String? customerId;
  String? subscriptionId;
  bool? recurring;
  String? status;
  String? priceType;
  int? date;
  int? dueDate;
  int? netTermDays;
  num? exchangeRate;
  int? total;
  int? amountPaid;
  int? amountAdjusted;
  int? writeOffAmount;
  int? creditsApplied;
  int? amountDue;
  int? updatedAt;
  int? resourceVersion;
  bool? deleted;
  String? object;
  bool? firstInvoice;
  int? amountToCollect;
  int? roundOffAmount;
  int? newSalesAmount;
  bool? hasAdvanceCharges;
  String? currencyCode;
  String? baseCurrencyCode;
  int? generatedAt;
  bool? isGifted;
  bool? termFinalized;
  String? channel;
  int? tax;
  List<LineItems>? lineItems;
  int? subTotal;
  List? linkedPayments;
  List? appliedCredits;
  List? adjustmentCreditNotes;
  List? issuedCreditNotes;
  List? linkedOrders;
  List? dunningAttempts;
  BillingAddress? billingAddress;

  Invoice(
      {this.id,
      this.customerId,
      this.subscriptionId,
      this.recurring,
      this.status,
      this.priceType,
      this.date,
      this.dueDate,
      this.netTermDays,
      this.exchangeRate,
      this.total,
      this.amountPaid,
      this.amountAdjusted,
      this.writeOffAmount,
      this.creditsApplied,
      this.amountDue,
      this.updatedAt,
      this.resourceVersion,
      this.deleted,
      this.object,
      this.firstInvoice,
      this.amountToCollect,
      this.roundOffAmount,
      this.newSalesAmount,
      this.hasAdvanceCharges,
      this.currencyCode,
      this.baseCurrencyCode,
      this.generatedAt,
      this.isGifted,
      this.termFinalized,
      this.channel,
      this.tax,
      this.lineItems,
      this.subTotal,
      this.linkedPayments,
      this.appliedCredits,
      this.adjustmentCreditNotes,
      this.issuedCreditNotes,
      this.linkedOrders,
      this.dunningAttempts,
      this.billingAddress});

  Invoice.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customerId = json['customer_id'];
    subscriptionId = json['subscription_id'];
    recurring = json['recurring'];
    status = json['status'];
    priceType = json['price_type'];
    date = json['date'];
    dueDate = json['due_date'];
    netTermDays = json['net_term_days'];
    exchangeRate = json['exchange_rate'];
    total = json['total'];
    amountPaid = json['amount_paid'];
    amountAdjusted = json['amount_adjusted'];
    writeOffAmount = json['write_off_amount'];
    creditsApplied = json['credits_applied'];
    amountDue = json['amount_due'];
    updatedAt = json['updated_at'];
    resourceVersion = json['resource_version'];
    deleted = json['deleted'];
    object = json['object'];
    firstInvoice = json['first_invoice'];
    amountToCollect = json['amount_to_collect'];
    roundOffAmount = json['round_off_amount'];
    newSalesAmount = json['new_sales_amount'];
    hasAdvanceCharges = json['has_advance_charges'];
    currencyCode = json['currency_code'];
    baseCurrencyCode = json['base_currency_code'];
    generatedAt = json['generated_at'];
    isGifted = json['is_gifted'];
    termFinalized = json['term_finalized'];
    channel = json['channel'];
    tax = json['tax'];
    if (json['line_items'] != null) {
      lineItems = <LineItems>[];
      json['line_items'].forEach((v) {
        lineItems?.add(LineItems.fromJson(v));
      });
    }
    subTotal = json['sub_total'];
    if (json['linked_payments'] != null) {
      linkedPayments = [];
      json['linked_payments'].forEach((v) {
        linkedPayments?.add(v);
      });
    }
    if (json['applied_credits'] != null) {
      appliedCredits = [];
      json['applied_credits'].forEach((v) {
        appliedCredits?.add(v);
      });
    }
    if (json['adjustment_credit_notes'] != null) {
      adjustmentCreditNotes = [];
      json['adjustment_credit_notes'].forEach((v) {
        adjustmentCreditNotes?.add(v);
      });
    }
    if (json['issued_credit_notes'] != null) {
      issuedCreditNotes = [];
      json['issued_credit_notes'].forEach((v) {
        issuedCreditNotes?.add(v);
      });
    }
    if (json['linked_orders'] != null) {
      linkedOrders = [];
      json['linked_orders'].forEach((v) {
        linkedOrders?.add(v);
      });
    }
    if (json['dunning_attempts'] != null) {
      dunningAttempts = [];
      json['dunning_attempts'].forEach((v) {
        dunningAttempts?.add(v);
      });
    }
    billingAddress = json['billing_address'] != null
        ? BillingAddress.fromJson(json['billing_address'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.customerId != null) {
      data['customer_id'] = this.customerId;
    }
    if (this.subscriptionId != null) {
      data['subscription_id'] = this.subscriptionId;
    }
    if (this.recurring != null) {
      data['recurring'] = this.recurring;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.priceType != null) {
      data['price_type'] = this.priceType;
    }
    if (this.date != null) {
      data['date'] = this.date;
    }
    if (this.dueDate != null) {
      data['due_date'] = this.dueDate;
    }
    if (this.netTermDays != null) {
      data['net_term_days'] = this.netTermDays;
    }
    if (this.exchangeRate != null) {
      data['exchange_rate'] = this.exchangeRate;
    }
    if (this.total != null) {
      data['total'] = this.total;
    }
    if (this.amountPaid != null) {
      data['amount_paid'] = this.amountPaid;
    }
    if (this.amountAdjusted != null) {
      data['amount_adjusted'] = this.amountAdjusted;
    }
    if (this.writeOffAmount != null) {
      data['write_off_amount'] = this.writeOffAmount;
    }
    if (this.creditsApplied != null) {
      data['credits_applied'] = this.creditsApplied;
    }
    if (this.amountDue != null) {
      data['amount_due'] = this.amountDue;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.resourceVersion != null) {
      data['resource_version'] = this.resourceVersion;
    }
    if (this.deleted != null) {
      data['deleted'] = this.deleted;
    }
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.firstInvoice != null) {
      data['first_invoice'] = this.firstInvoice;
    }
    if (this.amountToCollect != null) {
      data['amount_to_collect'] = this.amountToCollect;
    }
    if (this.roundOffAmount != null) {
      data['round_off_amount'] = this.roundOffAmount;
    }
    if (this.newSalesAmount != null) {
      data['new_sales_amount'] = this.newSalesAmount;
    }
    if (this.hasAdvanceCharges != null) {
      data['has_advance_charges'] = this.hasAdvanceCharges;
    }
    if (this.currencyCode != null) {
      data['currency_code'] = this.currencyCode;
    }
    if (this.baseCurrencyCode != null) {
      data['base_currency_code'] = this.baseCurrencyCode;
    }
    if (this.generatedAt != null) {
      data['generated_at'] = this.generatedAt;
    }
    if (this.isGifted != null) {
      data['is_gifted'] = this.isGifted;
    }
    if (this.termFinalized != null) {
      data['term_finalized'] = this.termFinalized;
    }
    if (this.channel != null) {
      data['channel'] = this.channel;
    }
    if (this.tax != null) {
      data['tax'] = this.tax;
    }
    if (this.lineItems != null) {
      data['line_items'] = this.lineItems?.map((v) => v.toJson()).toList();
    }
    if (this.subTotal != null) {
      data['sub_total'] = this.subTotal;
    }
    if (this.linkedPayments != null) {
      data['linked_payments'] = this.linkedPayments?.map((v) => v).toList();
    }
    if (this.appliedCredits != null) {
      data['applied_credits'] = this.appliedCredits?.map((v) => v).toList();
    }
    if (this.adjustmentCreditNotes != null) {
      data['adjustment_credit_notes'] =
          this.adjustmentCreditNotes?.map((v) => v).toList();
    }
    if (this.issuedCreditNotes != null) {
      data['issued_credit_notes'] =
          this.issuedCreditNotes?.map((v) => v).toList();
    }
    if (this.linkedOrders != null) {
      data['linked_orders'] = this.linkedOrders?.map((v) => v).toList();
    }
    if (this.dunningAttempts != null) {
      data['dunning_attempts'] = this.dunningAttempts?.map((v) => v).toList();
    }
    if (this.billingAddress != null) {
      data['billing_address'] = this.billingAddress?.toJson();
    }
    return data;
  }
}

class LineItems {
  String? id;
  int? dateFrom;
  int? dateTo;
  int? unitAmount;
  int? quantity;
  int? amount;
  String? pricingModel;
  bool? isTaxed;
  int? taxAmount;
  String? object;
  String? subscriptionId;
  String? customerId;
  String? description;
  String? entityType;
  String? entityId;
  String? taxExemptReason;
  int? discountAmount;
  int? itemLevelDiscountAmount;

  LineItems(
      {this.id,
      this.dateFrom,
      this.dateTo,
      this.unitAmount,
      this.quantity,
      this.amount,
      this.pricingModel,
      this.isTaxed,
      this.taxAmount,
      this.object,
      this.subscriptionId,
      this.customerId,
      this.description,
      this.entityType,
      this.entityId,
      this.taxExemptReason,
      this.discountAmount,
      this.itemLevelDiscountAmount});

  LineItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dateFrom = json['date_from'];
    dateTo = json['date_to'];
    unitAmount = json['unit_amount'];
    quantity = json['quantity'];
    amount = json['amount'];
    pricingModel = json['pricing_model'];
    isTaxed = json['is_taxed'];
    taxAmount = json['tax_amount'];
    object = json['object'];
    subscriptionId = json['subscription_id'];
    customerId = json['customer_id'];
    description = json['description'];
    entityType = json['entity_type'];
    entityId = json['entity_id'];
    taxExemptReason = json['tax_exempt_reason'];
    discountAmount = json['discount_amount'];
    itemLevelDiscountAmount = json['item_level_discount_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.dateFrom != null) {
      data['date_from'] = this.dateFrom;
    }
    if (this.dateTo != null) {
      data['date_to'] = this.dateTo;
    }
    if (this.unitAmount != null) {
      data['unit_amount'] = this.unitAmount;
    }
    if (this.quantity != null) {
      data['quantity'] = this.quantity;
    }
    if (this.amount != null) {
      data['amount'] = this.amount;
    }
    if (this.pricingModel != null) {
      data['pricing_model'] = this.pricingModel;
    }
    if (this.isTaxed != null) {
      data['is_taxed'] = this.isTaxed;
    }
    if (this.taxAmount != null) {
      data['tax_amount'] = this.taxAmount;
    }
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.subscriptionId != null) {
      data['subscription_id'] = this.subscriptionId;
    }
    if (this.customerId != null) {
      data['customer_id'] = this.customerId;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.entityType != null) {
      data['entity_type'] = this.entityType;
    }
    if (this.entityId != null) {
      data['entity_id'] = this.entityId;
    }
    if (this.taxExemptReason != null) {
      data['tax_exempt_reason'] = this.taxExemptReason;
    }
    if (this.discountAmount != null) {
      data['discount_amount'] = this.discountAmount;
    }
    if (this.itemLevelDiscountAmount != null) {
      data['item_level_discount_amount'] = this.itemLevelDiscountAmount;
    }
    return data;
  }
}
