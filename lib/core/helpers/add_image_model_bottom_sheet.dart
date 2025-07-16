  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/home/presentation/views/widgets/divided_container.dart';
import '../utils/styles.dart';

Future<dynamic> addImageModalBottomSheet(BuildContext context,{required Function captureImageFromCamera,required Function pickImageFromGallery}) {
    return showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6.r), topRight: Radius.circular(6.r))),
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 42.w,
                child: DividedContainer(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  captureImageFromCamera();
                },
                child: Text(
                  'Camera',
                  style: Styles.font16Regular.copyWith(color: Colors.black),
                )),
            TextButton(
                onPressed: () {
                  pickImageFromGallery();
                },
                child: Text(
                  'Studio',
                  style: Styles.font16Regular.copyWith(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
