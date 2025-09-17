import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.imagesAccount,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: InkWell(
            onTap: () {
              //TODO: show snackbar
            },
            child: CircleAvatar(
              backgroundColor: ColorManager.greyC1,
              child: SvgPicture.asset(
                Assets.svg_imageCamera,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
