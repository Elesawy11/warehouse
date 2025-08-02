import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/cubit/add_supplier_cubit.dart';
import '../../../../core/utils/styles.dart';
import 'widgets/add_supplier_field_widget.dart';

class AddSupplierView extends StatelessWidget {
  const AddSupplierView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddSupplierCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'Supplier',
          style: Styles.titleStyle,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: AddSupplierViewBody(cubit: cubit),
        ),
      ),
    );
  }
}
