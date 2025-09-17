import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';
import 'package:warehouse_app/features/home/presentation/views/widgets/container_of_feature_widget.dart';
import 'package:warehouse_app/features/home/presentation/views/widgets/custom_view_bar_widget.dart';
import 'package:warehouse_app/generated/l10n.dart';

import 'widgets/select_product_widget.dart';
import 'widgets/stock_in_date_widget.dart';

class StockInView extends StatelessWidget {
  const StockInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              CustomViewBarWidget(
                title: S.of(context).stockIn,
              ),
              verticalSpace(24),
              const StockDateWidget(
                title: 'Stock In Date',
              ),
              ContainerOfFeatureWidget(
                field: 'Supplier',
                value: 'choose',
                onTap: () {
                  //TODO: Suppliers view
                },
              ),
              ContainerOfFeatureWidget(
                field: 'Notes',
                value: '',
                onTap: () {
                  //TODO: Notes view
                },
                hasBorder: false,
              ),
              verticalSpace(24),
              const SelectProductWidget(),
              const Spacer(),
              AppTextButton(
                text: 'Save',
                onPressed: () {},
              ),
              verticalSpace(24),
            ],
          ),
        ),
      ),
    );
  }
}
