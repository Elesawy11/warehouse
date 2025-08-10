import 'package:json_annotation/json_annotation.dart';
part 'person_model.g.dart';

@JsonSerializable()
class PersonModel {
  String id;
  String? name;
  String? phone;
  String? address;

  PersonModel({this.name, this.phone, this.address, required this.id});

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);

  Map<String, dynamic> toJson() => _$PersonModelToJson(this);
}
