import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/styles.dart';

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
          InkWell(
            onTap: () => context.push(Routes.addPerson),
            child: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Text(
                'Add new',
                style: Styles.font16Semibold.copyWith(
                  color: ColorManager.mainBlue,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, index) {
                return PersonInformationWidget(
                  title: 'ahmed elesawy',
                  subTitle: '0101125563',
                  onTap: () => context.push(Routes.supplier),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
