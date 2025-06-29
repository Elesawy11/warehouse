// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:warehouse_app/features/onboarding/presentation/views/onboarding_constants.dart';
// part 'onobarding_scroll_state.dart';

// class OnobardingScrollCubit extends Cubit<OnobardingScrollState> {
//   OnobardingScrollCubit() : super(ScrollInitial());

//   final PageController controller = PageController();
//   int currentPage = 0;

//   void scroll(BuildContext context) {
//     final int onboardingListLength =
//         OnbaoedingConstants.getOnbaordingList(context).length;

//     if (onboardingListLength - 2 > currentPage) {
//       controller.nextPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeIn,
//       );
//       currentPage++;

//       emit(ScrollIcrease());
//     } else if (currentPage == onboardingListLength - 2) {
//       controller.nextPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeIn,
//       );
//       currentPage++;
//       emit(ScrollLastIcrease());
//     } else {
//       emit(ScrollFinish());
//     }
//   }

//   void updateCurrentPage(int page, BuildContext context) {
//     currentPage = page;
//     final int onboardingListLength =
//         OnbaoedingConstants.getOnbaordingList(context).length;

//     if (currentPage == onboardingListLength) {
//       emit(ScrollFinish());
//     } else if (currentPage == onboardingListLength - 1) {
//       emit(ScrollLastIcrease());
//     } else {
//       emit(ScrollIcrease());
//     }
//   }

//   @override
//   Future<void> close() {
//     controller.dispose();
//     return super.close();
//   }
// }
// // hello
