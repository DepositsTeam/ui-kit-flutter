import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class SmallSubtleAvatarCyan extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSubtleAvatarCyan].
  const SmallSubtleAvatarCyan({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.cyan800Color,
      bgColor: AppColors.cyan200Color,
      size: DepositsAvatarSizes.small,
    );
    return result;
  }
}

class SmallSubtleAvatarGreen extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSubtleAvatarGreen].
  const SmallSubtleAvatarGreen({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.green800Color,
      bgColor: AppColors.green200Color,
      size: DepositsAvatarSizes.small,
    );
    return result;
  }
}

class SmallSubtleAvatarOrange extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSubtleAvatarOrange].
  const SmallSubtleAvatarOrange({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.orange800Color,
      bgColor: AppColors.orange200Color,
      size: DepositsAvatarSizes.small,
    );
    return result;
  }
}

class SmallSubtleAvatarRed extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSubtleAvatarRed].
  const SmallSubtleAvatarRed({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.red800Color,
      bgColor: AppColors.red200Color,
      size: DepositsAvatarSizes.small,
    );
    return result;
  }
}

class SmallSubtleAvatarNeutral extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSubtleAvatarNeutral].
  const SmallSubtleAvatarNeutral({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.neutral800Color,
      bgColor: AppColors.neutral300Color,
      size: DepositsAvatarSizes.small,
    );
    return result;
  }
}

class SmallSubtleAvatarBlue extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSubtleAvatarBlue].
  const SmallSubtleAvatarBlue({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.blue700Color,
      bgColor: AppColors.blue200Color,
      size: DepositsAvatarSizes.small,
    );
    return result;
  }
}
