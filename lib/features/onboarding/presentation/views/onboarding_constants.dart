import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../../generated/l10n.dart';

abstract class OnbaoedingConstants {
  static List<List<String>> getOnbaordingList(BuildContext context) {
    return [
      [
        Assets.imagesOnboarding1,
        S.of(context).onboarding1Title,
        S.of(context).onboarding1Subtitle,
      ],
      [
        Assets.imagesOnboarding3,
        S.of(context).onboarding2Title,
        S.of(context).onboarding2Subtitle,
      ],
      [
        Assets.imagesOnboarding2,
        S.of(context).onboarding3Title,
        S.of(context).onboarding3Subtitle,
      ],
    ];
  }

  static List<String> getAuthTypeList(BuildContext context) {
    return [
      S.of(context).signIn,
      S.of(context).signUp,
    ];
  }
}
