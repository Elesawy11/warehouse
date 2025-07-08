// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      productId: json['productId'] as String,
      name: json['name'] as String,
      purchasePrice: (json['purchasePrice'] as num).toDouble(),
      sellingPrice: (json['sellingPrice'] as num).toDouble(),
      unitsPerPackage: (json['unitsPerPackage'] as num?)?.toInt(),
      unitPurchasePrice: (json['unitPurchasePrice'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      category: json['category'] as String,
      expireDate: json['expireDate'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      dimensions: json['dimensions'] == null
          ? null
          : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
      size: json['size'] as String?,
      barcode: json['barcode'] as String?,
      supplierId: json['supplierId'] as String?,
      supplierName: json['supplierName'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      reorderPoint: (json['reorderPoint'] as num?)?.toInt(),
      description: json['description'] as String?,
      location: json['location'] as String?,
      isActive: json['isActive'] as bool?,
      lastTransactionId: json['lastTransactionId'] as String?,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'purchasePrice': instance.purchasePrice,
      'sellingPrice': instance.sellingPrice,
      'unitsPerPackage': instance.unitsPerPackage,
      'unitPurchasePrice': instance.unitPurchasePrice,
      'imageUrl': instance.imageUrl,
      'category': instance.category,
      'expireDate': instance.expireDate,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'dimensions': instance.dimensions,
      'size': instance.size,
      'barcode': instance.barcode,
      'supplierId': instance.supplierId,
      'supplierName': instance.supplierName,
      'quantity': instance.quantity,
      'reorderPoint': instance.reorderPoint,
      'description': instance.description,
      'location': instance.location,
      'isActive': instance.isActive,
      'lastTransactionId': instance.lastTransactionId,
    };

Dimensions _$DimensionsFromJson(Map<String, dynamic> json) => Dimensions(
      length: (json['length'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DimensionsToJson(Dimensions instance) =>
    <String, dynamic>{
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
      'weight': instance.weight,
    };
