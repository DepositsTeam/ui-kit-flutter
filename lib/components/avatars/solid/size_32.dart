import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class MediumSolidAvatarCyan extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSolidAvatarCyan].
  const MediumSolidAvatarCyan({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral800Color,
      bgColor: AppColors.cyan600Color,
      size: DepositsAvatarSizes.medium,
    );
    return result;
  }
}

class MediumSolidAvatarGreen extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSolidAvatarGreen].
  const MediumSolidAvatarGreen({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.whiteColor,
      bgColor: AppColors.green600Color,
      size: DepositsAvatarSizes.medium,
    );
    return result;
  }
}

class MediumSolidAvatarOrange extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSolidAvatarOrange].
  const MediumSolidAvatarOrange({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral800Color,
      bgColor: AppColors.orange600Color,
      size: DepositsAvatarSizes.medium,
    );
    return result;
  }
}

class MediumSolidAvatarRed extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSolidAvatarRed].
  const MediumSolidAvatarRed({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.whiteColor,
      bgColor: AppColors.red500Color,
      size: DepositsAvatarSizes.medium,
    );
    return result;
  }
}

class MediumSolidAvatarNeutral extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSolidAvatarNeutral].
  const MediumSolidAvatarNeutral({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral900Color,
      bgColor: AppColors.neutral600Color,
      size: DepositsAvatarSizes.medium,
    );
    return result;
  }
}

class MediumSolidAvatarBlue extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSolidAvatarBlue].
  const MediumSolidAvatarBlue({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.whiteColor,
      bgColor: AppColors.blue500Color,
      size: DepositsAvatarSizes.medium,
    );
    return result;
  }
}
