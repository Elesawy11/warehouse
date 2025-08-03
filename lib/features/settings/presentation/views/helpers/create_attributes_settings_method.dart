import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse_app/core/DI/service_locator.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/get_all_categories_cubit/get_all_categories_cubit.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/get_all_categories_cubit/get_all_categories_state.dart';
import '../../../../home/presentation/views/widgets/settings_item_widget.dart';
import '../widgets/section_header_widget.dart';
import '../widgets/settings_group_widget.dart';

Widget createAttributesSettingsMethod() {
  return BlocProvider(
    create: (context) => getIt.get<GetAllCategoriesCubit>()..getAllCategories(),
    child: SettingsGroupWidget(
      children: [
        const SectionHeaderWidget(title: 'Attributes Settings'),
        BlocBuilder<GetAllCategoriesCubit, GetAllCategoriesState>(
          builder: (context, state) {
            return SettingsItemWidget(
              label: 'Categories',
              value: state is GetAllCategoriesSuccess
                  ? state.categories.length.toString()
                  : '0',
              onTap: () {},
            );
          },
        ),
        SettingsItemWidget(
          label: 'Attributes',
          value: '4',
          onTap: () {},
        ),
      ],
    ),
  );
}
