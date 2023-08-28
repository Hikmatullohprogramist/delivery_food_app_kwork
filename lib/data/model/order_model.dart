// To parse this JSON data, do
//
//     final orderModel = orderModelFromJson(jsonString);

import 'dart:convert';

OrderModel orderModelFromJson(String str) => OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
  int currentPage;
  List<Datum> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  List<Link> links;
  dynamic nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl;
  int to;
  int total;

  OrderModel({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
    currentPage: json["current_page"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    firstPageUrl: json["first_page_url"],
    from: json["from"],
    lastPage: json["last_page"],
    lastPageUrl: json["last_page_url"],
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    nextPageUrl: json["next_page_url"],
    path: json["path"],
    perPage: json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "first_page_url": firstPageUrl,
    "from": from,
    "last_page": lastPage,
    "last_page_url": lastPageUrl,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "next_page_url": nextPageUrl,
    "path": path,
    "per_page": perPage,
    "prev_page_url": prevPageUrl,
    "to": to,
    "total": total,
  };
}

class Datum {
  int id;
  int userId;
  int clientId;
  dynamic operatorId;
  dynamic driverId;
  int distance;
  String shipment;
  String status;
  String paymentType;
  int perKmPrice;
  int shippingPrice;
  dynamic summary;
  String phoneNumber;
  String address;
  String longitude;
  String latitude;
  dynamic customerNote;
  int restaurantId;
  int isAssignedByOperator;
  int isAcceptedOrderByDriver;
  dynamic partnerOperatorId;
  int isSentToDrivers;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic pickTime;
  int isOrderAcceptedByOperator;
  int isOrderCreatedByOperator;
  DateTime acceptedByRestaurantAt;
  int cashbackSum;
  List<Item> items;

  Datum({
    required this.id,
    required this.userId,
    required this.clientId,
    required this.operatorId,
    required this.driverId,
    required this.distance,
    required this.shipment,
    required this.status,
    required this.paymentType,
    required this.perKmPrice,
    required this.shippingPrice,
    required this.summary,
    required this.phoneNumber,
    required this.address,
    required this.longitude,
    required this.latitude,
    required this.customerNote,
    required this.restaurantId,
    required this.isAssignedByOperator,
    required this.isAcceptedOrderByDriver,
    required this.partnerOperatorId,
    required this.isSentToDrivers,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.pickTime,
    required this.isOrderAcceptedByOperator,
    required this.isOrderCreatedByOperator,
    required this.acceptedByRestaurantAt,
    required this.cashbackSum,
    required this.items,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    userId: json["user_id"],
    clientId: json["client_id"],
    operatorId: json["operator_id"],
    driverId: json["driver_id"],
    distance: json["distance"],
    shipment: json["shipment"],
    status: json["status"],
    paymentType: json["payment_type"],
    perKmPrice: json["per_km_price"],
    shippingPrice: json["shipping_price"],
    summary: json["summary"],
    phoneNumber: json["phone_number"],
    address: json["address"],
    longitude: json["longitude"],
    latitude: json["latitude"],
    customerNote: json["customer_note"],
    restaurantId: json["restaurant_id"],
    isAssignedByOperator: json["is_assigned_by_operator"],
    isAcceptedOrderByDriver: json["is_accepted_order_by_driver"],
    partnerOperatorId: json["partner_operator_id"],
    isSentToDrivers: json["is_sent_to_drivers"],
    deletedAt: json["deleted_at"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    pickTime: json["pick_time"],
    isOrderAcceptedByOperator: json["is_order_accepted_by_operator"],
    isOrderCreatedByOperator: json["is_order_created_by_operator"],
    acceptedByRestaurantAt: DateTime.parse(json["accepted_by_restaurant_at"]),
    cashbackSum: json["cashback_sum"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "client_id": clientId,
    "operator_id": operatorId,
    "driver_id": driverId,
    "distance": distance,
    "shipment": shipment,
    "status": status,
    "payment_type": paymentType,
    "per_km_price": perKmPrice,
    "shipping_price": shippingPrice,
    "summary": summary,
    "phone_number": phoneNumber,
    "address": address,
    "longitude": longitude,
    "latitude": latitude,
    "customer_note": customerNote,
    "restaurant_id": restaurantId,
    "is_assigned_by_operator": isAssignedByOperator,
    "is_accepted_order_by_driver": isAcceptedOrderByDriver,
    "partner_operator_id": partnerOperatorId,
    "is_sent_to_drivers": isSentToDrivers,
    "deleted_at": deletedAt,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "pick_time": pickTime,
    "is_order_accepted_by_operator": isOrderAcceptedByOperator,
    "is_order_created_by_operator": isOrderCreatedByOperator,
    "accepted_by_restaurant_at": acceptedByRestaurantAt.toIso8601String(),
    "cashback_sum": cashbackSum,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  int id;
  int quantity;
  int price;
  int orderId;
  int productId;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  dynamic optionId;
  Product product;

  Item({
    required this.id,
    required this.quantity,
    required this.price,
    required this.orderId,
    required this.productId,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.optionId,
    required this.product,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["id"],
    quantity: json["quantity"],
    price: json["price"],
    orderId: json["order_id"],
    productId: json["product_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    optionId: json["option_id"],
    product: Product.fromJson(json["product"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "quantity": quantity,
    "price": price,
    "order_id": orderId,
    "product_id": productId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
    "option_id": optionId,
    "product": product.toJson(),
  };
}

class Product {
  int id;
  int userId;
  int categoryId;
  int price;
  int status;
  String? photoId;
  int profitInPercentage;
  int hasOptions;
  DateTime createdAt;
  DateTime updatedAt;
  int preparationTime;
  int hasRequiredDish;
  dynamic deletedAt;

  Product({
    required this.id,
    required this.userId,
    required this.categoryId,
    required this.price,
    required this.status,
    required this.photoId,
    required this.profitInPercentage,
    required this.hasOptions,
    required this.createdAt,
    required this.updatedAt,
    required this.preparationTime,
    required this.hasRequiredDish,
    required this.deletedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    userId: json["user_id"],
    categoryId: json["category_id"],
    price: json["price"],
    status: json["status"],
    photoId: json["photo_id"],
    profitInPercentage: json["profit_in_percentage"],
    hasOptions: json["has_options"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    preparationTime: json["preparation_time"],
    hasRequiredDish: json["has_required_dish"],
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "category_id": categoryId,
    "price": price,
    "status": status,
    "photo_id": photoId,
    "profit_in_percentage": profitInPercentage,
    "has_options": hasOptions,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "preparation_time": preparationTime,
    "has_required_dish": hasRequiredDish,
    "deleted_at": deletedAt,
  };
}

class Link {
  String? url;
  String label;
  bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "label": label,
    "active": active,
  };
}
