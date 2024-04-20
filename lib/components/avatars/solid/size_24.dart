import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class SmallSolidAvatarCyan extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSolidAvatarCyan].
  const SmallSolidAvatarCyan({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.neutral800Color,
      bgColor: AppColors.cyan600Color,
      size: DepositsAvatarSizes.small,
    );
    return result;
  }
}

class SmallSolidAvatarGreen extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSolidAvatarGreen].
  const SmallSolidAvatarGreen({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.whiteColor,
      bgColor: AppColors.green600Color,
      size: DepositsAvatarSizes.small,
    );
    return result;
  }
}

class SmallSolidAvatarOrange extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSolidAvatarOrange].
  const SmallSolidAvatarOrange({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.neutral800Color,
      bgColor: AppColors.orange600Color,
      size: DepositsAvatarSizes.small,
    );
    return result;
  }
}

class SmallSolidAvatarRed extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSolidAvatarRed].
  const SmallSolidAvatarRed({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.whiteColor,
      bgColor: AppColors.red600Color,
      size: DepositsAvatarSizes.small,
    );
    return result;
  }
}

class SmallSolidAvatarNeutral extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSolidAvatarNeutral].
  const SmallSolidAvatarNeutral({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.neutral900Color,
      bgColor: AppColors.neutral600Color,
      size: DepositsAvatarSizes.small,
    );
    return result;
  }
}

class SmallSolidAvatarBlue extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSolidAvatarBlue].
  const SmallSolidAvatarBlue({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.whiteColor,
      bgColor: AppColors.blue500Color,
      size: DepositsAvatarSizes.small,
    );
    return result;
  }
}
