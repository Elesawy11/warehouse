import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/assets.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'widgets/transaction_card_widget.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.greyED,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Transactions',
          style: Styles.font20Medium.copyWith(
            color: ColorManager.darkBlue,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              Assets.imagesMenu,
              width: 18.r,
              height: 18.r,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (context, index) {
          return TransactionCardWidget(
            type: index % 2 == 0
                ? TransactionType.stockIn
                : TransactionType.stockOut,
            quantity: 40,
            items: 2,
            partner: 'Acer Corporation',
            date: 'Oct 11, 2024',
            isSupplier: true,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
