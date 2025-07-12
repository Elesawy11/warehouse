import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/features/items/presentation/cubits/add_product_cubit/add_product_cubit.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<AddProductCubit>().addProduct(),
        backgroundColor: ColorManager.mainBlue,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 32.r,
        ),
      ),
      body: const Center(child: Text('Items View')),
    );
  }
}
