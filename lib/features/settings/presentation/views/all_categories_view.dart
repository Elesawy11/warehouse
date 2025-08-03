import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/get_all_categories_cubit/get_all_categories_cubit.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/get_all_categories_cubit/get_all_categories_state.dart';
import 'widgets/person_information_widget.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: Text(
          'Categories',
          style: Styles.titleStyle,
        ),
        actions: [
          SizedBox(
            height: 50.h,
            width: 100.w,
            child: AppTextButton(
              text: 'Add new',
              textColor: ColorManager.mainBlue,
              backgroundColor: Colors.white,
              onPressed: () => context.push(Routes.addPerson),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<GetAllCategoriesCubit, GetAllCategoriesState>(
              builder: (context, state) {
                return state is GetAllCategoriesSuccess
                    ? ListView.builder(
                        itemCount: state.categories.length,
                        itemBuilder: (context, index) {
                          return PersonInformationWidget(
                            title: state.categories[index],
                            onTap: () => context.push(
                              Routes.supplier,
                              extra: state.categories[index],
                            ),
                          );
                        },
                      )
                    : state is GetAllCategoriesLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : state is GetAllCategoriesError
                            ? Center(
                                child: Text(state.error),
                              )
                            : const SizedBox.shrink();
              },
            ),
          )
        ],
      ),
    );
  }
}
