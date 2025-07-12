import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_product_state.freezed.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState.initial() = _Initial;
  const factory AddProductState.addProductLoading() = AddProductLoading;
  const factory AddProductState.addProductSuccess() = AddProductSuccess;
  const factory AddProductState.addProductError({required String error}) =
      AddProductError;
}
