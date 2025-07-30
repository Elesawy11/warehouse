import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse_app/features/items/presentation/cubits/add_product_cubit/add_product_cubit.dart';
import '../../../../../core/helpers/spacer.dart';
import 'settings_item_widget.dart';
import 'add_item_name_widget.dart';
import 'add_product_image_widget.dart';

class BasicItemDetailsWidget extends StatelessWidget {
  const BasicItemDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddProductCubit>();
    return Column(
      children: [
        AddProductImageWidget(
          addProductCubit: cubit,
        ),
        verticalSpace(24),
        const AddItemTextDetailWidget(
          detailName: 'item name',
          fielText: 'Enter item name',
        ),
        SettingsItemWidget(
          label: 'Category',
          onTap: () {},
        ),
        SettingsItemWidget(
          label: 'Barcode',
          onTap: () {},
        ),
        SettingsItemWidget(
          label: 'Expire Date',
          onTap: () {},
        ),
      ],
    );
  }
}
