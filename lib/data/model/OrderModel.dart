// To parse this JSON data, do
//
//     final orderModel = orderModelFromJson(jsonString);

import 'dart:convert';

List<OrderModel> orderModelFromJson(String str) => List<OrderModel>.from(json.decode(str).map((x) => OrderModel.fromJson(x)));

String orderModelToJson(List<OrderModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrderModel {
  int id;
  int userId;
  int clientId;
  int? driverId;
  double distance;
  String shipment;
  String status;
  dynamic pickTime;
  String paymentType;
  int perKmPrice;
  int shippingPrice;
  int summary;
  String phoneNumber;
  String address;
  String mapAddress;
  String longitude;
  String latitude;
  dynamic customerNote;
  int restaurantId;
  int operatorId;
  int isAssignedByOperator;
  int isAcceptedOrderByDriver;
  int isOrderAcceptedByOperator;
  DateTime acceptedByRestaurantAt;
  int? partnerOperatorId;
  int? isSentToDrivers;
  int isSentToPartnerOperators;
  int cashbackSum;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime? preparedAt;
  dynamic deliveredAt;
  int? distanceInScope;
  int? distanceOutScope;
  int? perKmPriceOutScope;
  List<Item> items;

  OrderModel({
    required this.id,
    required this.userId,
    required this.clientId,
    required this.driverId,
    required this.distance,
    required this.shipment,
    required this.status,
    required this.pickTime,
    required this.paymentType,
    required this.perKmPrice,
    required this.shippingPrice,
    required this.summary,
    required this.phoneNumber,
    required this.address,
    required this.mapAddress,
    required this.longitude,
    required this.latitude,
    required this.customerNote,
    required this.restaurantId,
    required this.operatorId,
    required this.isAssignedByOperator,
    required this.isAcceptedOrderByDriver,
    required this.isOrderAcceptedByOperator,
    required this.acceptedByRestaurantAt,
    required this.partnerOperatorId,
    required this.isSentToDrivers,
    required this.isSentToPartnerOperators,
    required this.cashbackSum,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.preparedAt,
    required this.deliveredAt,
    required this.distanceInScope,
    required this.distanceOutScope,
    required this.perKmPriceOutScope,
    required this.items,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
    id: json["id"],
    userId: json["user_id"],
    clientId: json["client_id"],
    driverId: json["driver_id"],
    distance: json["distance"]?.toDouble(),
    shipment: json["shipment"],
    status: json["status"],
    pickTime: json["pick_time"],
    paymentType: json["payment_type"],
    perKmPrice: json["per_km_price"],
    shippingPrice: json["shipping_price"],
    summary: json["summary"],
    phoneNumber: json["phone_number"],
    address: json["address"],
    mapAddress: json["map_address"],
    longitude: json["longitude"],
    latitude: json["latitude"],
    customerNote: json["customer_note"],
    restaurantId: json["restaurant_id"],
    operatorId: json["operator_id"],
    isAssignedByOperator: json["is_assigned_by_operator"],
    isAcceptedOrderByDriver: json["is_accepted_order_by_driver"],
    isOrderAcceptedByOperator: json["is_order_accepted_by_operator"],
    acceptedByRestaurantAt: DateTime.parse(json["accepted_by_restaurant_at"]),
    partnerOperatorId: json["partner_operator_id"],
    isSentToDrivers: json["is_sent_to_drivers"],
    isSentToPartnerOperators: json["is_sent_to_partner_operators"],
    cashbackSum: json["cashback_sum"],
    deletedAt: json["deleted_at"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    preparedAt: json["prepared_at"] == null ? null : DateTime.parse(json["prepared_at"]),
    deliveredAt: json["delivered_at"],
    distanceInScope: json["distance_in_scope"],
    distanceOutScope: json["distance_out_scope"],
    perKmPriceOutScope: json["per_km_price_out_scope"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "client_id": clientId,
    "driver_id": driverId,
    "distance": distance,
    "shipment": shipment,
    "status": status,
    "pick_time": pickTime,
    "payment_type": paymentType,
    "per_km_price": perKmPrice,
    "shipping_price": shippingPrice,
    "summary": summary,
    "phone_number": phoneNumber,
    "address": address,
    "map_address": mapAddress,
    "longitude": longitude,
    "latitude": latitude,
    "customer_note": customerNote,
    "restaurant_id": restaurantId,
    "operator_id": operatorId,
    "is_assigned_by_operator": isAssignedByOperator,
    "is_accepted_order_by_driver": isAcceptedOrderByDriver,
    "is_order_accepted_by_operator": isOrderAcceptedByOperator,
    "accepted_by_restaurant_at": acceptedByRestaurantAt.toIso8601String(),
    "partner_operator_id": partnerOperatorId,
    "is_sent_to_drivers": isSentToDrivers,
    "is_sent_to_partner_operators": isSentToPartnerOperators,
    "cashback_sum": cashbackSum,
    "deleted_at": deletedAt,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "prepared_at": preparedAt?.toIso8601String(),
    "delivered_at": deliveredAt,
    "distance_in_scope": distanceInScope,
    "distance_out_scope": distanceOutScope,
    "per_km_price_out_scope": perKmPriceOutScope,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  int id;
  int quantity;
  int price;
  int orderId;
  int productId;
  dynamic optionId;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime? deletedAt;
  Product product;

  Item({
    required this.id,
    required this.quantity,
    required this.price,
    required this.orderId,
    required this.productId,
    required this.optionId,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.product,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["id"],
    quantity: json["quantity"],
    price: json["price"],
    orderId: json["order_id"],
    productId: json["product_id"],
    optionId: json["option_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"] == null ? null : DateTime.parse(json["deleted_at"]),
    product: Product.fromJson(json["product"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "quantity": quantity,
    "price": price,
    "order_id": orderId,
    "product_id": productId,
    "option_id": optionId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt?.toIso8601String(),
    "product": product.toJson(),
  };
}

class Product {
  int id;
  int userId;
  int categoryId;
  int price;
  int preparationTime;
  int status;
  int hasRequiredDish;
  String photoId;
  dynamic operatorPhotoId;
  int profitInPercentage;
  int hasOptions;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  Product({
    required this.id,
    required this.userId,
    required this.categoryId,
    required this.price,
    required this.preparationTime,
    required this.status,
    required this.hasRequiredDish,
    required this.photoId,
    required this.operatorPhotoId,
    required this.profitInPercentage,
    required this.hasOptions,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    userId: json["user_id"],
    categoryId: json["category_id"],
    price: json["price"],
    preparationTime: json["preparation_time"],
    status: json["status"],
    hasRequiredDish: json["has_required_dish"],
    photoId: json["photo_id"],
    operatorPhotoId: json["operator_photo_id"],
    profitInPercentage: json["profit_in_percentage"],
    hasOptions: json["has_options"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "category_id": categoryId,
    "price": price,
    "preparation_time": preparationTime,
    "status": status,
    "has_required_dish": hasRequiredDish,
    "photo_id": photoId,
    "operator_photo_id": operatorPhotoId,
    "profit_in_percentage": profitInPercentage,
    "has_options": hasOptions,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}
