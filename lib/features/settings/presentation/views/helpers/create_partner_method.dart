import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/DI/service_locator.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/get_all_suppliers_cubit/get_all_suppliers_cubit.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/get_all_suppliers_cubit/get_all_suppliers_state.dart'
    show GetAllSuppliersState, GetAllSuppliersSuucess;

import '../../../../home/presentation/views/widgets/settings_item_widget.dart';
import '../widgets/section_header_widget.dart';
import '../widgets/settings_group_widget.dart';

Widget createPartnerMethod(BuildContext context) {
  return BlocProvider(
    create: (context) => getIt.get<GetAllSuppliersCubit>()..getAllSuppliers(),
    child: SettingsGroupWidget(
      children: [
        const SectionHeaderWidget(title: 'Partner Settings'),
        BlocBuilder<GetAllSuppliersCubit, GetAllSuppliersState>(
          builder: (context, state) {
            return SettingsItemWidget(
              label: 'Suppliers',
              value: state is GetAllSuppliersSuucess
                  ? '${state.suppliers.length} suppliers'
                  : '0 suppliers',
              onTap: () => context.push(Routes.allsuppliers),
            );
          },
        ),
        SettingsItemWidget(
          label: 'Customers',
          value: '4 customers',
          onTap: () => context.push(Routes.customers),
        ),
      ],
    ),
  );
}
