import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:warehouse_app/core/networking/network_result.dart';
import 'package:warehouse_app/features/items/data/repo/firebase_repo_impl.dart';

import 'get_all_product_state.dart';

class GetAllProductCubit extends Cubit<GetAllProductState> {
  GetAllProductCubit(this._repo) : super(const GetAllProductState.initial());
  final FirebaseRepoImpl _repo;

  Future<void> getAllProduct() async {
    emit(const GetAllProductState.getProductLoading());

    final response = await _repo.getAllProduct();

    switch (response) {
      case Success():
        emit(GetAllProductState.getProductSuccess(productList: response.data));

        break;
      case Failure():
        emit(GetAllProductState.getProductError(error: response.error));
      default:
    }
  }
}
