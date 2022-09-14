class GetSubscriptionsResp {
  List<Klist>? klist;

  GetSubscriptionsResp({this.klist});

  GetSubscriptionsResp.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      klist = <Klist>[];
      json['list'].forEach((v) {
        klist?.add(Klist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.klist != null) {
      data['list'] = this.klist?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Klist {
  Subscription? subscription;
  Customer? customer;
  Card? card;

  Klist({this.subscription, this.customer, this.card});

  Klist.fromJson(Map<String, dynamic> json) {
    subscription = json['subscription'] != null
        ? Subscription.fromJson(json['subscription'])
        : null;
    customer =
        json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    card = json['card'] != null ? Card.fromJson(json['card']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.subscription != null) {
      data['subscription'] = this.subscription?.toJson();
    }
    if (this.customer != null) {
      data['customer'] = this.customer?.toJson();
    }
    if (this.card != null) {
      data['card'] = this.card?.toJson();
    }
    return data;
  }
}

class Subscription {
  String? id;
  int? billingPeriod;
  String? billingPeriodUnit;
  int? trialEnd;
  String? autoCollection;
  String? customerId;
  String? status;
  int? trialStart;
  int? nextBillingAt;
  int? createdAt;
  int? startedAt;
  int? updatedAt;
  bool? hasScheduledChanges;
  int? resourceVersion;
  bool? deleted;
  String? object;
  String? currencyCode;
  List<SubscriptionItems>? subscriptionItems;
  int? dueInvoicesCount;
  bool? hasScheduledAdvanceInvoices;
  String? channel;
  int? remainingBillingCycles;
  int? currentTermStart;
  int? currentTermEnd;
  int? activatedAt;
  int? cancelledAt;
  int? cancelScheduleCreatedAt;
  List<ChargedItems>? chargedItems;
  int? dueSince;
  int? totalDues;
  int? mrr;
  double? exchangeRate;
  String? baseCurrencyCode;
  int? startDate;

  Subscription(
      {this.id,
      this.billingPeriod,
      this.billingPeriodUnit,
      this.trialEnd,
      this.autoCollection,
      this.customerId,
      this.status,
      this.trialStart,
      this.nextBillingAt,
      this.createdAt,
      this.startedAt,
      this.updatedAt,
      this.hasScheduledChanges,
      this.resourceVersion,
      this.deleted,
      this.object,
      this.currencyCode,
      this.subscriptionItems,
      this.dueInvoicesCount,
      this.hasScheduledAdvanceInvoices,
      this.channel,
      this.remainingBillingCycles,
      this.currentTermStart,
      this.currentTermEnd,
      this.activatedAt,
      this.cancelledAt,
      this.cancelScheduleCreatedAt,
      this.chargedItems,
      this.dueSince,
      this.totalDues,
      this.mrr,
      this.exchangeRate,
      this.baseCurrencyCode,
      this.startDate});

  Subscription.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    billingPeriod = json['billing_period'];
    billingPeriodUnit = json['billing_period_unit'];
    trialEnd = json['trial_end'];
    autoCollection = json['auto_collection'];
    customerId = json['customer_id'];
    status = json['status'];
    trialStart = json['trial_start'];
    nextBillingAt = json['next_billing_at'];
    createdAt = json['created_at'];
    startedAt = json['started_at'];
    updatedAt = json['updated_at'];
    hasScheduledChanges = json['has_scheduled_changes'];
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
    hasScheduledAdvanceInvoices = json['has_scheduled_advance_invoices'];
    channel = json['channel'];
    remainingBillingCycles = json['remaining_billing_cycles'];
    currentTermStart = json['current_term_start'];
    currentTermEnd = json['current_term_end'];
    activatedAt = json['activated_at'];
    cancelledAt = json['cancelled_at'];
    cancelScheduleCreatedAt = json['cancel_schedule_created_at'];
    if (json['charged_items'] != null) {
      chargedItems = <ChargedItems>[];
      json['charged_items'].forEach((v) {
        chargedItems?.add(ChargedItems.fromJson(v));
      });
    }
    dueSince = json['due_since'];
    totalDues = json['total_dues'];
    mrr = json['mrr'];
    exchangeRate = json['exchange_rate'];
    baseCurrencyCode = json['base_currency_code'];
    startDate = json['start_date'];
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
    if (this.trialEnd != null) {
      data['trial_end'] = this.trialEnd;
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
    if (this.trialStart != null) {
      data['trial_start'] = this.trialStart;
    }
    if (this.nextBillingAt != null) {
      data['next_billing_at'] = this.nextBillingAt;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.startedAt != null) {
      data['started_at'] = this.startedAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.hasScheduledChanges != null) {
      data['has_scheduled_changes'] = this.hasScheduledChanges;
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
    if (this.hasScheduledAdvanceInvoices != null) {
      data['has_scheduled_advance_invoices'] = this.hasScheduledAdvanceInvoices;
    }
    if (this.channel != null) {
      data['channel'] = this.channel;
    }
    if (this.remainingBillingCycles != null) {
      data['remaining_billing_cycles'] = this.remainingBillingCycles;
    }
    if (this.currentTermStart != null) {
      data['current_term_start'] = this.currentTermStart;
    }
    if (this.currentTermEnd != null) {
      data['current_term_end'] = this.currentTermEnd;
    }
    if (this.activatedAt != null) {
      data['activated_at'] = this.activatedAt;
    }
    if (this.cancelledAt != null) {
      data['cancelled_at'] = this.cancelledAt;
    }
    if (this.cancelScheduleCreatedAt != null) {
      data['cancel_schedule_created_at'] = this.cancelScheduleCreatedAt;
    }
    if (this.chargedItems != null) {
      data['charged_items'] =
          this.chargedItems?.map((v) => v.toJson()).toList();
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
    if (this.exchangeRate != null) {
      data['exchange_rate'] = this.exchangeRate;
    }
    if (this.baseCurrencyCode != null) {
      data['base_currency_code'] = this.baseCurrencyCode;
    }
    if (this.startDate != null) {
      data['start_date'] = this.startDate;
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
  int? trialEnd;
  String? object;
  int? billingCycles;

  SubscriptionItems(
      {this.itemPriceId,
      this.itemType,
      this.quantity,
      this.unitPrice,
      this.amount,
      this.freeQuantity,
      this.trialEnd,
      this.object,
      this.billingCycles});

  SubscriptionItems.fromJson(Map<String, dynamic> json) {
    itemPriceId = json['item_price_id'];
    itemType = json['item_type'];
    quantity = json['quantity'];
    unitPrice = json['unit_price'];
    amount = json['amount'];
    freeQuantity = json['free_quantity'];
    trialEnd = json['trial_end'];
    object = json['object'];
    billingCycles = json['billing_cycles'];
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
    if (this.trialEnd != null) {
      data['trial_end'] = this.trialEnd;
    }
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.billingCycles != null) {
      data['billing_cycles'] = this.billingCycles;
    }
    return data;
  }
}

class ChargedItems {
  String? itemPriceId;
  int? lastChargedAt;
  String? object;

  ChargedItems({this.itemPriceId, this.lastChargedAt, this.object});

  ChargedItems.fromJson(Map<String, dynamic> json) {
    itemPriceId = json['item_price_id'];
    lastChargedAt = json['last_charged_at'];
    object = json['object'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.itemPriceId != null) {
      data['item_price_id'] = this.itemPriceId;
    }
    if (this.lastChargedAt != null) {
      data['last_charged_at'] = this.lastChargedAt;
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
  String? phone;
  String? company;
  String? autoCollection;
  int? netTermDays;
  bool? allowDirectDebit;
  int? createdAt;
  String? taxability;
  int? updatedAt;
  String? piiCleared;
  String? channel;
  int? resourceVersion;
  bool? deleted;
  String? object;
  String? cardStatus;
  int? promotionalCredits;
  int? refundableCredits;
  int? excessPayments;
  int? unbilledCharges;
  String? preferredCurrencyCode;
  String? primaryPaymentSourceId;
  PaymentMethod? paymentMethod;
  List<Balances>? balances;

  Customer(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.company,
      this.autoCollection,
      this.netTermDays,
      this.allowDirectDebit,
      this.createdAt,
      this.taxability,
      this.updatedAt,
      this.piiCleared,
      this.channel,
      this.resourceVersion,
      this.deleted,
      this.object,
      this.cardStatus,
      this.promotionalCredits,
      this.refundableCredits,
      this.excessPayments,
      this.unbilledCharges,
      this.preferredCurrencyCode,
      this.primaryPaymentSourceId,
      this.paymentMethod,
      this.balances});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    company = json['company'];
    autoCollection = json['auto_collection'];
    netTermDays = json['net_term_days'];
    allowDirectDebit = json['allow_direct_debit'];
    createdAt = json['created_at'];
    taxability = json['taxability'];
    updatedAt = json['updated_at'];
    piiCleared = json['pii_cleared'];
    channel = json['channel'];
    resourceVersion = json['resource_version'];
    deleted = json['deleted'];
    object = json['object'];
    cardStatus = json['card_status'];
    promotionalCredits = json['promotional_credits'];
    refundableCredits = json['refundable_credits'];
    excessPayments = json['excess_payments'];
    unbilledCharges = json['unbilled_charges'];
    preferredCurrencyCode = json['preferred_currency_code'];
    primaryPaymentSourceId = json['primary_payment_source_id'];
    paymentMethod = json['payment_method'] != null
        ? PaymentMethod.fromJson(json['payment_method'])
        : null;
    if (json['balances'] != null) {
      balances = <Balances>[];
      json['balances'].forEach((v) {
        balances?.add(Balances.fromJson(v));
      });
    }
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
    if (this.phone != null) {
      data['phone'] = this.phone;
    }
    if (this.company != null) {
      data['company'] = this.company;
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
    if (this.primaryPaymentSourceId != null) {
      data['primary_payment_source_id'] = this.primaryPaymentSourceId;
    }
    if (this.paymentMethod != null) {
      data['payment_method'] = this.paymentMethod?.toJson();
    }
    if (this.balances != null) {
      data['balances'] = this.balances?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PaymentMethod {
  String? object;
  String? type;
  String? referenceId;
  String? gateway;
  String? gatewayAccountId;
  String? status;

  PaymentMethod(
      {this.object,
      this.type,
      this.referenceId,
      this.gateway,
      this.gatewayAccountId,
      this.status});

  PaymentMethod.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    type = json['type'];
    referenceId = json['reference_id'];
    gateway = json['gateway'];
    gatewayAccountId = json['gateway_account_id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.referenceId != null) {
      data['reference_id'] = this.referenceId;
    }
    if (this.gateway != null) {
      data['gateway'] = this.gateway;
    }
    if (this.gatewayAccountId != null) {
      data['gateway_account_id'] = this.gatewayAccountId;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    return data;
  }
}

class Balances {
  int? promotionalCredits;
  int? excessPayments;
  int? refundableCredits;
  int? unbilledCharges;
  String? object;
  String? currencyCode;
  String? balanceCurrencyCode;

  Balances(
      {this.promotionalCredits,
      this.excessPayments,
      this.refundableCredits,
      this.unbilledCharges,
      this.object,
      this.currencyCode,
      this.balanceCurrencyCode});

  Balances.fromJson(Map<String, dynamic> json) {
    promotionalCredits = json['promotional_credits'];
    excessPayments = json['excess_payments'];
    refundableCredits = json['refundable_credits'];
    unbilledCharges = json['unbilled_charges'];
    object = json['object'];
    currencyCode = json['currency_code'];
    balanceCurrencyCode = json['balance_currency_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.promotionalCredits != null) {
      data['promotional_credits'] = this.promotionalCredits;
    }
    if (this.excessPayments != null) {
      data['excess_payments'] = this.excessPayments;
    }
    if (this.refundableCredits != null) {
      data['refundable_credits'] = this.refundableCredits;
    }
    if (this.unbilledCharges != null) {
      data['unbilled_charges'] = this.unbilledCharges;
    }
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.currencyCode != null) {
      data['currency_code'] = this.currencyCode;
    }
    if (this.balanceCurrencyCode != null) {
      data['balance_currency_code'] = this.balanceCurrencyCode;
    }
    return data;
  }
}

class Card {
  String? status;
  String? gateway;
  String? gatewayAccountId;
  String? firstName;
  String? lastName;
  String? iin;
  String? last4;
  String? cardType;
  String? fundingType;
  int? expiryMonth;
  int? expiryYear;
  int? createdAt;
  int? updatedAt;
  int? resourceVersion;
  String? object;
  String? maskedNumber;
  String? customerId;
  String? paymentSourceId;

  Card(
      {this.status,
      this.gateway,
      this.gatewayAccountId,
      this.firstName,
      this.lastName,
      this.iin,
      this.last4,
      this.cardType,
      this.fundingType,
      this.expiryMonth,
      this.expiryYear,
      this.createdAt,
      this.updatedAt,
      this.resourceVersion,
      this.object,
      this.maskedNumber,
      this.customerId,
      this.paymentSourceId});

  Card.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    gateway = json['gateway'];
    gatewayAccountId = json['gateway_account_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    iin = json['iin'];
    last4 = json['last4'];
    cardType = json['card_type'];
    fundingType = json['funding_type'];
    expiryMonth = json['expiry_month'];
    expiryYear = json['expiry_year'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    resourceVersion = json['resource_version'];
    object = json['object'];
    maskedNumber = json['masked_number'];
    customerId = json['customer_id'];
    paymentSourceId = json['payment_source_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.gateway != null) {
      data['gateway'] = this.gateway;
    }
    if (this.gatewayAccountId != null) {
      data['gateway_account_id'] = this.gatewayAccountId;
    }
    if (this.firstName != null) {
      data['first_name'] = this.firstName;
    }
    if (this.lastName != null) {
      data['last_name'] = this.lastName;
    }
    if (this.iin != null) {
      data['iin'] = this.iin;
    }
    if (this.last4 != null) {
      data['last4'] = this.last4;
    }
    if (this.cardType != null) {
      data['card_type'] = this.cardType;
    }
    if (this.fundingType != null) {
      data['funding_type'] = this.fundingType;
    }
    if (this.expiryMonth != null) {
      data['expiry_month'] = this.expiryMonth;
    }
    if (this.expiryYear != null) {
      data['expiry_year'] = this.expiryYear;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.resourceVersion != null) {
      data['resource_version'] = this.resourceVersion;
    }
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.maskedNumber != null) {
      data['masked_number'] = this.maskedNumber;
    }
    if (this.customerId != null) {
      data['customer_id'] = this.customerId;
    }
    if (this.paymentSourceId != null) {
      data['payment_source_id'] = this.paymentSourceId;
    }
    return data;
  }
}
