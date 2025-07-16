import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'package:warehouse_app/features/items/presentation/cubits/add_product_cubit/add_product_cubit.dart';

import 'widgets/add_item_view_body.dart';

class AddItemView extends StatelessWidget {
  const AddItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Text(
          'Add Item',
          style: Styles.font20Medium,
        ),
        actions: [
          TextButton(
            onPressed: () => context.read<AddProductCubit>().addProduct(),
            child: Text(
              'Save',
              style: Styles.font16Semibold.copyWith(
                color: ColorManager.mainBlue,
              ),
            ),
          ),
        ],
      ),
      body: const AddItemViewBody(),
    );
  }
}
