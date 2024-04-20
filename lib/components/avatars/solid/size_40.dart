import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class LargeSolidAvatarCyan extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSolidAvatarCyan].
  const LargeSolidAvatarCyan({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral800Color,
      bgColor: AppColors.cyan600Color,
      size: DepositsAvatarSizes.large,
    );
    return result;
  }
}

class LargeSolidAvatarGreen extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSolidAvatarGreen].
  const LargeSolidAvatarGreen({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.whiteColor,
      bgColor: AppColors.green600Color,
      size: DepositsAvatarSizes.large,
    );
    return result;
  }
}

class LargeSolidAvatarOrange extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSolidAvatarOrange].
  const LargeSolidAvatarOrange({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral800Color,
      bgColor: AppColors.orange600Color,
      size: DepositsAvatarSizes.large,
    );
    return result;
  }
}

class LargeSolidAvatarRed extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSolidAvatarRed].
  const LargeSolidAvatarRed({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.whiteColor,
      bgColor: AppColors.red500Color,
      size: DepositsAvatarSizes.large,
    );
    return result;
  }
}

class LargeSolidAvatarNeutral extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSolidAvatarNeutral].
  const LargeSolidAvatarNeutral({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral900Color,
      bgColor: AppColors.neutral600Color,
      size: DepositsAvatarSizes.large,
    );
    return result;
  }
}

class LargeSolidAvatarBlue extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSolidAvatarBlue].
  const LargeSolidAvatarBlue({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.whiteColor,
      bgColor: AppColors.blue500Color,
      size: DepositsAvatarSizes.large,
    );
    return result;
  }
}
