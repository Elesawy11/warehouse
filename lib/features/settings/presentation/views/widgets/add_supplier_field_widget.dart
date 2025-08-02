import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../cubits/add_supplier_cubit/add_supplier_cubit.dart';
import 'add_supplier_bloc_consumer_widget.dart';
import 'person_information_field_widget.dart';

class AddSupplierViewBody extends StatelessWidget {
  const AddSupplierViewBody({
    super.key,
    required this.cubit,
  });

  final AddSupplierCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: cubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(24),
          Text(
            'Information about supplier',
            style: Styles.font22Bold,
          ),
          verticalSpace(24),
          PersonInformationFieldWidget(
            controller: cubit.nameController,
            text: 'name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'name is required';
              }
            },
          ),
          verticalSpace(24),
          PersonInformationFieldWidget(
            controller: cubit.phoneController,
            keyboardType: TextInputType.number,
            text: 'phone',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'phone number is required';
              }
            },
          ),
          verticalSpace(24),
          PersonInformationFieldWidget(
            controller: cubit.addressController,
            text: 'address',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'address is required';
              }
            },
          ),
          const Spacer(
            flex: 3,
          ),
          AddSupplierBlocConsumerWidget(cubit: cubit),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
