class OrderModel {
  OrderModel({
    required num? currentPage,
    List<Data>? data,
    String? firstPageUrl,
    num? from,
    num? lastPage,
    String? lastPageUrl,
    List<Links>? links,
    dynamic nextPageUrl,
    String? path,
    num? perPage,
    dynamic prevPageUrl,
    num? to,
    num? total,
  }) {
    _currentPage = currentPage;
    _data = data;
    _firstPageUrl = firstPageUrl;
    _from = from;
    _lastPage = lastPage;
    _lastPageUrl = lastPageUrl;
    _links = links;
    _nextPageUrl = nextPageUrl;
    _path = path;
    _perPage = perPage;
    _prevPageUrl = prevPageUrl;
    _to = to;
    _total = total;
  }

  OrderModel.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _firstPageUrl = json['first_page_url'];
    _from = json['from'];
    _lastPage = json['last_page'];
    _lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      _links = [];
      json['links'].forEach((v) {
        _links?.add(Links.fromJson(v));
      });
    }
    _nextPageUrl = json['next_page_url'];
    _path = json['path'];
    _perPage = json['per_page'];
    _prevPageUrl = json['prev_page_url'];
    _to = json['to'];
    _total = json['total'];
  }

  num? _currentPage;
  List<Data>? _data;
  String? _firstPageUrl;
  num? _from;
  num? _lastPage;
  String? _lastPageUrl;
  List<Links>? _links;
  dynamic _nextPageUrl;
  String? _path;
  num? _perPage;
  dynamic _prevPageUrl;
  num? _to;
  num? _total;

  OrderModel copyWith({
    num? currentPage,
    List<Data>? data,
    String? firstPageUrl,
    num? from,
    num? lastPage,
    String? lastPageUrl,
    List<Links>? links,
    dynamic nextPageUrl,
    String? path,
    num? perPage,
    dynamic prevPageUrl,
    num? to,
    num? total,
  }) =>
      OrderModel(
        currentPage: currentPage ?? _currentPage,
        data: data ?? _data,
        firstPageUrl: firstPageUrl ?? _firstPageUrl,
        from: from ?? _from,
        lastPage: lastPage ?? _lastPage,
        lastPageUrl: lastPageUrl ?? _lastPageUrl,
        links: links ?? _links,
        nextPageUrl: nextPageUrl ?? _nextPageUrl,
        path: path ?? _path,
        perPage: perPage ?? _perPage,
        prevPageUrl: prevPageUrl ?? _prevPageUrl,
        to: to ?? _to,
        total: total ?? _total,
      );

  num? get currentPage => _currentPage ?? 0;

  List<Data>? get data => _data;

  String? get firstPageUrl => _firstPageUrl ?? "NODATA";

  num? get from => _from ?? 0;

  num? get lastPage => _lastPage ?? 0;

  String? get lastPageUrl => _lastPageUrl ?? "NODATA";

  List<Links>? get links => _links;

  dynamic get nextPageUrl => _nextPageUrl;

  String? get path => _path ?? "NODATA";

  num? get perPage => _perPage ?? 0;

  dynamic get prevPageUrl => _prevPageUrl;

  num? get to => _to ?? 0;

  num? get total => _total ?? 0;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['first_page_url'] = _firstPageUrl;
    map['from'] = _from;
    map['last_page'] = _lastPage;
    map['last_page_url'] = _lastPageUrl;
    if (_links != null) {
      map['links'] = _links?.map((v) => v.toJson()).toList();
    }
    map['next_page_url'] = _nextPageUrl;
    map['path'] = _path;
    map['per_page'] = _perPage;
    map['prev_page_url'] = _prevPageUrl;
    map['to'] = _to;
    map['total'] = _total;
    return map;
  }
}

/// url : null
/// label : "&laquo; Previous"
/// active : false

class Links {
  Links({
    dynamic url,
    String? label,
    bool? active,
  }) {
    _url = url;
    _label = label;
    _active = active;
  }

  Links.fromJson(dynamic json) {
    _url = json['url'];
    _label = json['label'];
    _active = json['active'];
  }

  dynamic _url;
  String? _label;
  bool? _active;

  Links copyWith({
    dynamic url,
    String? label,
    bool? active,
  }) =>
      Links(
        url: url ?? _url,
        label: label ?? _label,
        active: active ?? _active,
      );

  dynamic get url => _url;

  String? get label => _label ?? "NODATA";

  bool? get active => _active ?? false;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['label'] = _label;
    map['active'] = _active;
    return map;
  }
}

class Data {
  Data({
    num? id,
    num? userId,
    num? clientId,
    dynamic operatorId,
    dynamic driverId,
    num? distance,
    String? shipment,
    String? status,
    String? paymentType,
    num? perKmPrice,
    num? shippingPrice,
    dynamic summary,
    String? phoneNumber,
    String? address,
    String? longitude,
    String? latitude,
    dynamic customerNote,
    num? restaurantId,
    num? isAssignedByOperator,
    num? isAcceptedOrderByDriver,
    dynamic partnerOperatorId,
    num? isSentToDrivers,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    dynamic pickTime,
    num? isOrderAcceptedByOperator,
    num? isOrderCreatedByOperator,
    String? acceptedByRestaurantAt,
    num? cashbackSum,
    List<Items>? items,
  }) {
    _id = id;
    _userId = userId;
    _clientId = clientId;
    _operatorId = operatorId;
    _driverId = driverId;
    _distance = distance;
    _shipment = shipment;
    _status = status;
    _paymentType = paymentType;
    _perKmPrice = perKmPrice;
    _shippingPrice = shippingPrice;
    _summary = summary;
    _phoneNumber = phoneNumber;
    _address = address;
    _longitude = longitude;
    _latitude = latitude;
    _customerNote = customerNote;
    _restaurantId = restaurantId;
    _isAssignedByOperator = isAssignedByOperator;
    _isAcceptedOrderByDriver = isAcceptedOrderByDriver;
    _partnerOperatorId = partnerOperatorId;
    _isSentToDrivers = isSentToDrivers;
    _deletedAt = deletedAt;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _pickTime = pickTime;
    _isOrderAcceptedByOperator = isOrderAcceptedByOperator;
    _isOrderCreatedByOperator = isOrderCreatedByOperator;
    _acceptedByRestaurantAt = acceptedByRestaurantAt;
    _cashbackSum = cashbackSum;
    _items = items;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _clientId = json['client_id'];
    _operatorId = json['operator_id'];
    _driverId = json['driver_id'];
    _distance = json['distance'];
    _shipment = json['shipment'];
    _status = json['status'];
    _paymentType = json['payment_type'];
    _perKmPrice = json['per_km_price'];
    _shippingPrice = json['shipping_price'];
    _summary = json['summary'];
    _phoneNumber = json['phone_number'];
    _address = json['address'];
    _longitude = json['longitude'];
    _latitude = json['latitude'];
    _customerNote = json['customer_note'];
    _restaurantId = json['restaurant_id'];
    _isAssignedByOperator = json['is_assigned_by_operator'];
    _isAcceptedOrderByDriver = json['is_accepted_order_by_driver'];
    _partnerOperatorId = json['partner_operator_id'];
    _isSentToDrivers = json['is_sent_to_drivers'];
    _deletedAt = json['deleted_at'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _pickTime = json['pick_time'];
    _isOrderAcceptedByOperator = json['is_order_accepted_by_operator'];
    _isOrderCreatedByOperator = json['is_order_created_by_operator'];
    _acceptedByRestaurantAt = json['accepted_by_restaurant_at'];
    _cashbackSum = json['cashback_sum'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
  }

  num? _id;
  num? _userId;
  num? _clientId;
  dynamic _operatorId;
  dynamic _driverId;
  num? _distance;
  String? _shipment;
  String? _status;
  String? _paymentType;
  num? _perKmPrice;
  num? _shippingPrice;
  dynamic _summary;
  String? _phoneNumber;
  String? _address;
  String? _longitude;
  String? _latitude;
  dynamic _customerNote;
  num? _restaurantId;
  num? _isAssignedByOperator;
  num? _isAcceptedOrderByDriver;
  dynamic _partnerOperatorId;
  num? _isSentToDrivers;
  dynamic _deletedAt;
  String? _createdAt;
  String? _updatedAt;
  dynamic _pickTime;
  num? _isOrderAcceptedByOperator;
  num? _isOrderCreatedByOperator;
  String? _acceptedByRestaurantAt;
  num? _cashbackSum;
  List<Items>? _items;

  Data copyWith({
    num? id,
    num? userId,
    num? clientId,
    dynamic operatorId,
    dynamic driverId,
    num? distance,
    String? shipment,
    String? status,
    String? paymentType,
    num? perKmPrice,
    num? shippingPrice,
    dynamic summary,
    String? phoneNumber,
    String? address,
    String? longitude,
    String? latitude,
    dynamic customerNote,
    num? restaurantId,
    num? isAssignedByOperator,
    num? isAcceptedOrderByDriver,
    dynamic partnerOperatorId,
    num? isSentToDrivers,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    dynamic pickTime,
    num? isOrderAcceptedByOperator,
    num? isOrderCreatedByOperator,
    String? acceptedByRestaurantAt,
    num? cashbackSum,
    List<Items>? items,
  }) =>
      Data(
        id: id ?? _id,
        userId: userId ?? _userId,
        clientId: clientId ?? _clientId,
        operatorId: operatorId ?? _operatorId,
        driverId: driverId ?? _driverId,
        distance: distance ?? _distance,
        shipment: shipment ?? _shipment,
        status: status ?? _status,
        paymentType: paymentType ?? _paymentType,
        perKmPrice: perKmPrice ?? _perKmPrice,
        shippingPrice: shippingPrice ?? _shippingPrice,
        summary: summary ?? _summary,
        phoneNumber: phoneNumber ?? _phoneNumber,
        address: address ?? _address,
        longitude: longitude ?? _longitude,
        latitude: latitude ?? _latitude,
        customerNote: customerNote ?? _customerNote,
        restaurantId: restaurantId ?? _restaurantId,
        isAssignedByOperator: isAssignedByOperator ?? _isAssignedByOperator,
        isAcceptedOrderByDriver:
            isAcceptedOrderByDriver ?? _isAcceptedOrderByDriver,
        partnerOperatorId: partnerOperatorId ?? _partnerOperatorId,
        isSentToDrivers: isSentToDrivers ?? _isSentToDrivers,
        deletedAt: deletedAt ?? _deletedAt,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        pickTime: pickTime ?? _pickTime,
        isOrderAcceptedByOperator:
            isOrderAcceptedByOperator ?? _isOrderAcceptedByOperator,
        isOrderCreatedByOperator:
            isOrderCreatedByOperator ?? _isOrderCreatedByOperator,
        acceptedByRestaurantAt:
            acceptedByRestaurantAt ?? _acceptedByRestaurantAt,
        cashbackSum: cashbackSum ?? _cashbackSum,
        items: items ?? _items,
      );

  num? get id => _id ?? 0;

  num? get userId => _userId ?? 0;

  num? get clientId => _clientId ?? 0;

  dynamic get operatorId => _operatorId;

  dynamic get driverId => _driverId;

  num? get distance => _distance ?? 0;

  String? get shipment => _shipment ?? "NODATA";

  String? get status => _status ?? "NODATA";

  String? get paymentType => _paymentType ?? "NODATA";

  num? get perKmPrice => _perKmPrice ?? 0;

  num? get shippingPrice => _shippingPrice ?? 0;

  dynamic get summary => _summary;

  String? get phoneNumber => _phoneNumber ?? "NODATA";

  String? get address => _address ?? "NODATA";

  String? get longitude => _longitude ?? "NODATA";

  String? get latitude => _latitude ?? "NODATA";

  dynamic get customerNote => _customerNote;

  num? get restaurantId => _restaurantId ?? 0;

  num? get isAssignedByOperator => _isAssignedByOperator ?? 0;

  num? get isAcceptedOrderByDriver => _isAcceptedOrderByDriver ?? 0;

  dynamic get partnerOperatorId => _partnerOperatorId;

  num? get isSentToDrivers => _isSentToDrivers ?? 0;

  dynamic get deletedAt => _deletedAt;

  String? get createdAt => _createdAt ?? "NODATA";

  String? get updatedAt => _updatedAt ?? "NODATA";

  dynamic get pickTime => _pickTime;

  num? get isOrderAcceptedByOperator => _isOrderAcceptedByOperator ?? 0;

  num? get isOrderCreatedByOperator => _isOrderCreatedByOperator ?? 0;

  String? get acceptedByRestaurantAt => _acceptedByRestaurantAt ?? "nodata";

  num? get cashbackSum => _cashbackSum ?? 0;

  List<Items>? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['client_id'] = _clientId;
    map['operator_id'] = _operatorId;
    map['driver_id'] = _driverId;
    map['distance'] = _distance;
    map['shipment'] = _shipment;
    map['status'] = _status;
    map['payment_type'] = _paymentType;
    map['per_km_price'] = _perKmPrice;
    map['shipping_price'] = _shippingPrice;
    map['summary'] = _summary;
    map['phone_number'] = _phoneNumber;
    map['address'] = _address;
    map['longitude'] = _longitude;
    map['latitude'] = _latitude;
    map['customer_note'] = _customerNote;
    map['restaurant_id'] = _restaurantId;
    map['is_assigned_by_operator'] = _isAssignedByOperator;
    map['is_accepted_order_by_driver'] = _isAcceptedOrderByDriver;
    map['partner_operator_id'] = _partnerOperatorId;
    map['is_sent_to_drivers'] = _isSentToDrivers;
    map['deleted_at'] = _deletedAt;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['pick_time'] = _pickTime;
    map['is_order_accepted_by_operator'] = _isOrderAcceptedByOperator;
    map['is_order_created_by_operator'] = _isOrderCreatedByOperator;
    map['accepted_by_restaurant_at'] = _acceptedByRestaurantAt;
    map['cashback_sum'] = _cashbackSum;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Items {
  Items({
    num? id,
    num? quantity,
    num? price,
    num? orderId,
    num? productId,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    dynamic optionId,
    Product? product,
  }) {
    _id = id;
    _quantity = quantity;
    _price = price;
    _orderId = orderId;
    _productId = productId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _optionId = optionId;
    _product = product;
  }

  Items.fromJson(dynamic json) {
    _id = json['id'];
    _quantity = json['quantity'];
    _price = json['price'];
    _orderId = json['order_id'];
    _productId = json['product_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _optionId = json['option_id'];
    _product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
  }

  num? _id;
  num? _quantity;
  num? _price;
  num? _orderId;
  num? _productId;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  dynamic _optionId;
  Product? _product;

  Items copyWith({
    num? id,
    num? quantity,
    num? price,
    num? orderId,
    num? productId,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    dynamic optionId,
    Product? product,
  }) =>
      Items(
        id: id ?? _id,
        quantity: quantity ?? _quantity,
        price: price ?? _price,
        orderId: orderId ?? _orderId,
        productId: productId ?? _productId,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        deletedAt: deletedAt ?? _deletedAt,
        optionId: optionId ?? _optionId,
        product: product ?? _product,
      );

  num? get id => _id ?? 0;

  num? get quantity => _quantity ?? 0;

  num? get price => _price ?? 0;

  num? get orderId => _orderId ?? 0;

  num? get productId => _productId ?? 0;

  String? get createdAt => _createdAt ?? "no data";

  String? get updatedAt => _updatedAt ?? "no data";

  dynamic get deletedAt => _deletedAt;

  dynamic get optionId => _optionId;

  Product? get product => _product ?? Product();

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['quantity'] = _quantity;
    map['price'] = _price;
    map['order_id'] = _orderId;
    map['product_id'] = _productId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['option_id'] = _optionId;
    if (_product != null) {
      map['product'] = _product?.toJson();
    }
    return map;
  }
}

class Product {
  Product({
    num? id,
    num? userId,
    num? categoryId,
    num? price,
    num? status,
    String? photoId,
    num? profitInPercentage,
    num? hasOptions,
    String? createdAt,
    String? updatedAt,
    num? preparationTime,
    num? hasRequiredDish,
    dynamic deletedAt,
  }) {
    _id = id;
    _userId = userId;
    _categoryId = categoryId;
    _price = price;
    _status = status;
    _photoId = photoId;
    _profitInPercentage = profitInPercentage;
    _hasOptions = hasOptions;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _preparationTime = preparationTime;
    _hasRequiredDish = hasRequiredDish;
    _deletedAt = deletedAt;
  }

  Product.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _categoryId = json['category_id'];
    _price = json['price'];
    _status = json['status'];
    _photoId = json['photo_id'];
    _profitInPercentage = json['profit_in_percentage'];
    _hasOptions = json['has_options'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _preparationTime = json['preparation_time'];
    _hasRequiredDish = json['has_required_dish'];
    _deletedAt = json['deleted_at'];
  }

  num? _id;
  num? _userId;
  num? _categoryId;
  num? _price;
  num? _status;
  String? _photoId;
  num? _profitInPercentage;
  num? _hasOptions;
  String? _createdAt;
  String? _updatedAt;
  num? _preparationTime;
  num? _hasRequiredDish;
  dynamic _deletedAt;

  Product copyWith({
    num? id,
    num? userId,
    num? categoryId,
    num? price,
    num? status,
    String? photoId,
    num? profitInPercentage,
    num? hasOptions,
    String? createdAt,
    String? updatedAt,
    num? preparationTime,
    num? hasRequiredDish,
    dynamic deletedAt,
  }) =>
      Product(
        id: id ?? _id,
        userId: userId ?? _userId,
        categoryId: categoryId ?? _categoryId,
        price: price ?? _price,
        status: status ?? _status,
        photoId: photoId ?? _photoId,
        profitInPercentage: profitInPercentage ?? _profitInPercentage,
        hasOptions: hasOptions ?? _hasOptions,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        preparationTime: preparationTime ?? _preparationTime,
        hasRequiredDish: hasRequiredDish ?? _hasRequiredDish,
        deletedAt: deletedAt ?? _deletedAt,
      );

  num? get id => _id ?? 0;

  num? get userId => _userId ?? 0;

  num? get categoryId => _categoryId ?? 0;

  num? get price => _price ?? 0;

  num? get status => _status ?? 0;

  String? get photoId => _photoId ?? "noPHOTO";

  num? get profitInPercentage => _profitInPercentage ?? 0;

  num? get hasOptions => _hasOptions ?? 0;

  String? get createdAt => _createdAt ?? "nodata";

  String? get updatedAt => _updatedAt ?? "nodata";

  num? get preparationTime => _preparationTime ?? 0;

  num? get hasRequiredDish => _hasRequiredDish ?? 0;

  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['category_id'] = _categoryId;
    map['price'] = _price;
    map['status'] = _status;
    map['photo_id'] = _photoId;
    map['profit_in_percentage'] = _profitInPercentage;
    map['has_options'] = _hasOptions;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['preparation_time'] = _preparationTime;
    map['has_required_dish'] = _hasRequiredDish;
    map['deleted_at'] = _deletedAt;
    return map;
  }
}
