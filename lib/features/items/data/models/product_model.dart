import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final String productId;
  final String name;
  final double purchasePrice;
  final double sellingPrice;
  final int? unitsPerPackage;
  final double? unitPurchasePrice;
  final String? imagePath;
  final String? imageUrl;
  final String category;
  final DateTime? expireDate;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Dimensions? dimensions;
  final String? size;
  final String? barcode;
  final String? supplierId;
  final String? supplierName;
  final int? quantity;
  final int? reorderPoint;
  final String? description;
  final String? location;
  final bool? isActive;
  final String? lastTransactionId;

  ProductModel({
    required this.productId,
    required this.name,
    required this.purchasePrice,
    required this.sellingPrice,
    required this.unitsPerPackage,
    required this.unitPurchasePrice,
    required this.imagePath,
    required this.imageUrl,
    required this.category,
    this.expireDate,
    this.createdAt,
    this.updatedAt,
    required this.dimensions,
    required this.size,
    required this.barcode,
    required this.supplierId,
    required this.supplierName,
    required this.quantity,
    required this.reorderPoint,
    required this.description,
    required this.location,
    required this.isActive,
    required this.lastTransactionId,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

}

@JsonSerializable()

class Dimensions {
  final double? length;
  final double? width;
  final double? height;
  final double? weight;

  Dimensions({
    this.length,
    this.width,
    this.height,
    this.weight,
  });
  factory Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);
  Map<String, dynamic> toJson() => _$DimensionsToJson(this);

}
