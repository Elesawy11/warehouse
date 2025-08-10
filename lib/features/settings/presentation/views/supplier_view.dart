import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/helpers/custom_snack_bar_method.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/supplier_feature_cubit/suppliers_features_cubit.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/supplier_feature_cubit/suppliers_features_state.dart';
import '../../../../core/helpers/show_custom_alert_dialog.dart';
import '../../../../core/helpers/spacer.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../data/models/person_model.dart';
import 'widgets/person_information_field_widget.dart';

class SupplierView extends StatelessWidget {
  const SupplierView({
    super.key,
    required this.supplier,
  });
  final PersonModel supplier;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Supplier',
          style: Styles.titleStyle,
        ),
        actions: [
          SizedBox(
            width: 100.w,
            child: AppTextButton(
              text: 'Delete',
              backgroundColor: Colors.white,
              onPressed: () {
                showCustomAlertDialog(
                  context,
                  title: 'Confirmation',
                  supTitle: 'Are you sure you want to delete this item?',
                  buttonText: 'Delete',
                  textColor: Colors.red,
                  onPressed: () {
                    context
                        .read<SuppliersFeaturesCubit>()
                        .updateSupplier(id: supplier.id);
                  },
                );
              },
              textColor: Colors.red,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  verticalSpace(24),
                  Text(
                    'Information about supplier',
                    style: Styles.font22Bold,
                  ),
                  verticalSpace(24),
                  PersonInformationFieldWidget(
                    hintText: supplier.name,
                    text: 'name',
                    validator: (value) {},
                  ),
                  verticalSpace(24),
                  PersonInformationFieldWidget(
                    hintText: supplier.phone,
                    text: 'phone',
                    validator: (value) {},
                  ),
                  verticalSpace(24),
                  PersonInformationFieldWidget(
                    hintText: supplier.address,
                    text: 'address',
                    validator: (value) {},
                  ),
                ],
              ),
            ),
            BlocConsumer<SuppliersFeaturesCubit, SuppliersFeaturesState>(
              listener: (context, state) {
                if (state is UpdateSuccess) {
                  customSnackBarMethod(context, 'supplier updated');
                } else if (state is Error) {
                  customSnackBarMethod(context, state.message);
                }
              },
              builder: (context, state) {
                return AppTextButton(
                  text: 'Save',
                  onPressed: () {
                    context
                        .read<SuppliersFeaturesCubit>()
                        .updateSupplier(id: supplier.id);
                  },
                );
              },
            ),
            verticalSpace(60),
          ],
        ),
      ),
    );
  }
}
