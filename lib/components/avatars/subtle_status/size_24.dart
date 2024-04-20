import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class SmallSubtleStatusAvatarCyan extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSubtleStatusAvatarCyan].
  const SmallSubtleStatusAvatarCyan({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.cyan800Color,
      bgColor: AppColors.cyan200Color,
      size: DepositsAvatarSizes.small,
      status: "online",
    );
    return result;
  }
}

class SmallSubtleStatusAvatarGreen extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSubtleStatusAvatarGreen].
  const SmallSubtleStatusAvatarGreen({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.green800Color,
      bgColor: AppColors.green200Color,
      size: DepositsAvatarSizes.small,
      status: "online",
    );
    return result;
  }
}

class SmallSubtleStatusAvatarOrange extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSubtleStatusAvatarOrange].
  const SmallSubtleStatusAvatarOrange({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.orange800Color,
      bgColor: AppColors.orange200Color,
      size: DepositsAvatarSizes.small,
      status: "online",
    );
    return result;
  }
}

class SmallSubtleStatusAvatarRed extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSubtleStatusAvatarRed].
  const SmallSubtleStatusAvatarRed({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.red800Color,
      bgColor: AppColors.red200Color,
      size: DepositsAvatarSizes.small,
      status: "online",
    );
    return result;
  }
}

class SmallSubtleStatusAvatarNeutral extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSubtleStatusAvatarNeutral].
  const SmallSubtleStatusAvatarNeutral({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.neutral800Color,
      bgColor: AppColors.neutral300Color,
      size: DepositsAvatarSizes.small,
      status: "online",
    );
    return result;
  }
}

class SmallSubtleStatusAvatarBlue extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSubtleStatusAvatarBlue].
  const SmallSubtleStatusAvatarBlue({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.blue700Color,
      bgColor: AppColors.blue200Color,
      size: DepositsAvatarSizes.small,
      status: "online",
    );
    return result;
  }
}
