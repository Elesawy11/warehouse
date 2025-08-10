import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/get_all_suppliers_cubit/get_all_suppliers_cubit.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/get_all_suppliers_cubit/get_all_suppliers_state.dart';
import 'widgets/person_information_widget.dart';

class AllSuppliersView extends StatelessWidget {
  const AllSuppliersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: Text(
          'Suppliers',
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
              onPressed: () => context.push(Routes.addSupplier),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<GetAllSuppliersCubit, GetAllSuppliersState>(
              builder: (context, state) {
                return state is GetAllSuppliersSuucess
                    ? ListView.builder(
                        itemCount: state.suppliers.length,
                        itemBuilder: (context, index) {
                          return PersonInformationWidget(
                            subTitle: state.suppliers[index].phone,
                            title: state.suppliers[index].name ?? '',
                            onTap: () => context.push(Routes.supplier,
                                extra: state.suppliers[index]),
                          );
                        },
                      )
                    : state is GetAllSuppliersLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : state is GetAllSuppliersError
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
