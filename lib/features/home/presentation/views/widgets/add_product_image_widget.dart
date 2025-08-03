import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:warehouse_app/features/items/presentation/cubits/add_product_cubit/add_product_cubit.dart';
import '../../../../../core/helpers/add_image_model_bottom_sheet.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/app_text_button.dart';

class AddProductImageWidget extends StatefulWidget {
  const AddProductImageWidget({
    super.key,
    required this.addProductCubit,
  });
  final AddProductCubit addProductCubit;
  @override
  State<AddProductImageWidget> createState() => _AddProductImageWidgetState();
}

class _AddProductImageWidgetState extends State<AddProductImageWidget> {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _pickedImage;
  Future<void> _pickImageFromGallery() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _pickedImage = image != null ? XFile(image.path) : null;
      context.read<AddProductCubit>().imageController.text =
          image != null ? XFile(image.path).toString() : '';
      widget.addProductCubit.imageController.text = _pickedImage!.path;
    });
  }

  Future<void> _captureImageFromCamera() async {
    final image = await _imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _pickedImage = image != null ? XFile(image.path) : null;
      context.read<AddProductCubit>().imageController.text =
          image != null ? XFile(image.path).toString() : '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _pickedImage != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.file(
                  File(_pickedImage!.path),
                  width: 120.r,
                  height: 120.r,
                ),
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  Assets.imagesBox,
                  width: 120.r,
                  height: 120.r,
                ),
              ),
        horizontalSpace(24),
        SizedBox(
          width: 120.w,
          child: AppTextButton(
            text: 'Add Image',
            onPressed: () {
              addImageModalBottomSheet(
                context,
                pickImageFromGallery: _pickImageFromGallery,
                captureImageFromCamera: _captureImageFromCamera,
              );
            },
            backgroundColor: ColorManager.greyED,
            textColor: ColorManager.mainBlue,
            borderRadius: BorderRadius.circular(12.r),
            hight: 42.h,
          ),
        ),
      ],
    );
  }
}
