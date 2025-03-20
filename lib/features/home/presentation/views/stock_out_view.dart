import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';
import 'package:warehouse_app/features/home/presentation/views/widgets/container_of_feature_widget.dart';
import 'package:warehouse_app/features/home/presentation/views/widgets/custom_view_bar_widget.dart';
import 'package:warehouse_app/generated/l10n.dart';
import 'widgets/select_product_widget.dart';
import 'widgets/stock_in_date_widget.dart';

class StockOutView extends StatelessWidget {
  const StockOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              CustomViewBarWidget(
                title: S.of(context).stockOut,
              ),
              verticalSpace(24),
               StockDateWidget(
                title: 'Stock Out Date',
                
              ),
              ContainerOfFeatureWidget(
                field: 'Customer',
                value: 'choose',
                onTap: () {},
              ),
              ContainerOfFeatureWidget(
                field: 'Notes',
                value: '',
                onTap: () {},
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
