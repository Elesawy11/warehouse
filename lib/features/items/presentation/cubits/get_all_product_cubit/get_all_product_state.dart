
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/product_model.dart';
part 'get_all_product_state.freezed.dart';
@freezed
class GetAllProductState with _$GetAllProductState {
  const factory GetAllProductState.initial() = _Initial;
  const factory GetAllProductState.getProductLoading() = GetProductLoading;
  const factory GetAllProductState.getProductSuccess({required List<ProductModel> productList}) = GetProductSuccess;
  const factory GetAllProductState.getProductError({required String error}) = GetProductError;
}
