import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class MediumSubtleStatusAvatarCyan extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSubtleStatusAvatarCyan].
  const MediumSubtleStatusAvatarCyan({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.cyan800Color,
      bgColor: AppColors.cyan200Color,
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}

class MediumSubtleStatusAvatarGreen extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSubtleStatusAvatarGreen].
  const MediumSubtleStatusAvatarGreen({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.green800Color,
      bgColor: AppColors.green200Color,
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}

class MediumSubtleStatusAvatarOrange extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSubtleStatusAvatarOrange].
  const MediumSubtleStatusAvatarOrange({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.orange800Color,
      bgColor: AppColors.orange200Color,
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}

class MediumSubtleStatusAvatarRed extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSubtleStatusAvatarRed].
  const MediumSubtleStatusAvatarRed({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.red800Color,
      bgColor: AppColors.red200Color,
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}

class MediumSubtleStatusAvatarNeutral extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSubtleStatusAvatarNeutral].
  const MediumSubtleStatusAvatarNeutral({Key? key, this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral800Color,
      bgColor: AppColors.neutral300Color,
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}

class MediumSubtleStatusAvatarBlue extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [MediumSubtleStatusAvatarBlue].
  const MediumSubtleStatusAvatarBlue({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.blue700Color,
      bgColor: AppColors.blue200Color,
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}
