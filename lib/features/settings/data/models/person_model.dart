import 'package:json_annotation/json_annotation.dart';
part 'person_model.g.dart';

@JsonSerializable()
class PersonModel {
  final String name;
  final String phone;
  final String address;

  PersonModel({required this.name, required this.phone, required this.address});

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);

  Map<String, dynamic> toJson() => _$PersonModelToJson(this);
}
