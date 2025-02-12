import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'auth_scroll_state.dart';

class AuthScrollCubit extends Cubit<AuthScrollState> {
  AuthScrollCubit() : super(AuthScrollInitial());
  final PageController controller = PageController();
  int currentPage = 0;
  void scroll(int index) {
    currentPage = index;
    controller.jumpToPage(index);
    emit(AuthScrollSuccess());
  }
}
