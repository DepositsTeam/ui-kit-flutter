import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class MediumSolidStatusAvatarCyan extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSolidStatusAvatarCyan].
  const MediumSolidStatusAvatarCyan({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral800Color,
      bgColor: AppColors.cyan600Color,
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}

class MediumSolidStatusAvatarGreen extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSolidStatusAvatarGreen].
  const MediumSolidStatusAvatarGreen({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.whiteColor,
      bgColor: AppColors.green600Color,
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}

class MediumSolidStatusAvatarOrange extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSolidStatusAvatarOrange].
  const MediumSolidStatusAvatarOrange({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral800Color,
      bgColor: AppColors.orange600Color,
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}

class MediumSolidStatusAvatarRed extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSolidStatusAvatarRed].
  const MediumSolidStatusAvatarRed({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.whiteColor,
      bgColor: AppColors.red500Color,
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}

class MediumSolidStatusAvatarNeutral extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSolidStatusAvatarNeutral].
  const MediumSolidStatusAvatarNeutral({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral900Color,
      bgColor: AppColors.neutral600Color,
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}

class MediumSolidStatusAvatarBlue extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSolidStatusAvatarBlue].
  const MediumSolidStatusAvatarBlue({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.whiteColor,
      bgColor: AppColors.blue500Color,
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}
