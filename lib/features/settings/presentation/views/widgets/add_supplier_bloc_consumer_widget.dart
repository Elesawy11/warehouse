import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/helpers/custom_snack_bar_method.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../cubits/cubit/add_supplier_cubit.dart';
import '../../cubits/cubit/add_supplier_state.dart';

class AddSupplierBlocConsumerWidget extends StatelessWidget {
  const AddSupplierBlocConsumerWidget({
    super.key,
    required this.cubit,
  });

  final AddSupplierCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddSupplierCubit, AddSupplierState>(
      listener: (context, state) {
        if (state is AddSupplierSuccess) {
          customSnackBarMethod(context, 'Supplier added successfully');
          cubit.nameController.clear();
          cubit.phoneController.clear();
          cubit.addressController.clear();
        } else if (state is AddSupplierError) {
          customSnackBarMethod(context, 'there is an error');
        }
      },
      builder: (context, state) {
        return AppTextButton(
          text: 'Create',
          onPressed: () {
            if (cubit.formKey.currentState!.validate()) {
              cubit.addPerson();
            }
          },
          child: state is AddSupplierloading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : null,
        );
      },
    );
  }
}
