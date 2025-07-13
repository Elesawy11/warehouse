import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/features/items/presentation/cubits/get_all_product_cubit/get_all_product_cubit.dart';
import 'package:warehouse_app/features/items/presentation/cubits/get_all_product_cubit/get_all_product_state.dart';
import 'product_widget.dart';
import 'row_of_stock_method.dart';
import 'show_items_title_widget.dart';
import 'today_average_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  verticalSpace(20),
                  const TodayAverageWidget(),
                  verticalSpace(12),
                  const RowOfStockMethods(),
                  verticalSpace(22),
                  const ShowItemsTitleWidget(),
                  verticalSpace(22),
                ],
              ),
            ),
            BlocBuilder<GetAllProductCubit, GetAllProductState>(
              builder: (context, state) {
                return state is GetProductSuccess
                    ? SliverList.builder(
                        itemBuilder: (context, index) => ProductWidget(
                          product: state.productList[index],
                        ),
                        itemCount: state.productList.length,
                      )
                    : state is GetProductLoading
                        ? const SliverToBoxAdapter(
                            child: Center(
                            child: CircularProgressIndicator(),
                          ))
                        : state is GetProductError
                            ? SliverToBoxAdapter(
                                child: Center(
                                  child: Text(state.error),
                                ),
                              )
                            : const SliverToBoxAdapter(
                                child: Center(
                                  child: Text('No Items'),
                                ),
                              );
              },
            ),
          ],
        ),
      ),
    );
  }
}
