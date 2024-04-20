import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:flutter/material.dart';

class LargeSubtleAvatarCyan extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSubtleAvatarCyan].
  const LargeSubtleAvatarCyan({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.cyan800Color,
      bgColor: AppColors.cyan200Color,
      size: DepositsAvatarSizes.large,
    );
    return result;
  }
}

class LargeSubtleAvatarGreen extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSubtleAvatarGreen].
  const LargeSubtleAvatarGreen({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.green800Color,
      bgColor: AppColors.green200Color,
      size: DepositsAvatarSizes.large,
    );
    return result;
  }
}

class LargeSubtleAvatarOrange extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSubtleAvatarOrange].
  const LargeSubtleAvatarOrange({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.orange800Color,
      bgColor: AppColors.orange200Color,
      size: DepositsAvatarSizes.large,
    );
    return result;
  }
}

class LargeSubtleAvatarRed extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSubtleAvatarRed].
  const LargeSubtleAvatarRed({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.red800Color,
      bgColor: AppColors.red200Color,
      size: DepositsAvatarSizes.large,
    );
    return result;
  }
}

class LargeSubtleAvatarNeutral extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSubtleAvatarNeutral].
  const LargeSubtleAvatarNeutral({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral800Color,
      bgColor: AppColors.neutral300Color,
      size: DepositsAvatarSizes.large,
    );
    return result;
  }
}

class LargeSubtleAvatarBlue extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSubtleAvatarBlue].
  const LargeSubtleAvatarBlue({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.blue700Color,
      bgColor: AppColors.blue200Color,
      size: DepositsAvatarSizes.large,
    );
    return result;
  }
}
