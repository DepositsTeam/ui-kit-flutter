import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class LargeSubtleStatusAvatarCyan extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSubtleStatusAvatarCyan].
  const LargeSubtleStatusAvatarCyan({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.cyan800Color,
      bgColor: AppColors.cyan200Color,
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}

class LargeSubtleStatusAvatarGreen extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSubtleStatusAvatarGreen].
  const LargeSubtleStatusAvatarGreen({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.green800Color,
      bgColor: AppColors.green200Color,
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}

class LargeSubtleStatusAvatarOrange extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSubtleStatusAvatarOrange].
  const LargeSubtleStatusAvatarOrange({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.orange800Color,
      bgColor: AppColors.orange200Color,
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}

class LargeSubtleStatusAvatarRed extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSubtleStatusAvatarRed].
  const LargeSubtleStatusAvatarRed({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.red800Color,
      bgColor: AppColors.red200Color,
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}

class LargeSubtleStatusAvatarNeutral extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSubtleStatusAvatarNeutral].
  const LargeSubtleStatusAvatarNeutral({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral800Color,
      bgColor: AppColors.neutral300Color,
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}

class LargeSubtleStatusAvatarBlue extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSubtleStatusAvatarBlue].
  const LargeSubtleStatusAvatarBlue({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.blue700Color,
      bgColor: AppColors.blue200Color,
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}
