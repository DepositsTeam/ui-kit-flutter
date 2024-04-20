import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class LargeSolidStatusAvatarCyan extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSolidStatusAvatarCyan].
  const LargeSolidStatusAvatarCyan({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral800Color,
      bgColor: AppColors.cyan600Color,
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}

class LargeSolidStatusAvatarGreen extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSolidStatusAvatarGreen].
  const LargeSolidStatusAvatarGreen({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.whiteColor,
      bgColor: AppColors.green600Color,
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}

class LargeSolidStatusAvatarOrange extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSolidStatusAvatarOrange].
  const LargeSolidStatusAvatarOrange({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral800Color,
      bgColor: AppColors.orange600Color,
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}

class LargeSolidStatusAvatarRed extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSolidStatusAvatarRed].
  const LargeSolidStatusAvatarRed({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.whiteColor,
      bgColor: AppColors.red500Color,
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}

class LargeSolidStatusAvatarNeutral extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSolidStatusAvatarNeutral].
  const LargeSolidStatusAvatarNeutral({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.neutral900Color,
      bgColor: AppColors.neutral600Color,
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}

class LargeSolidStatusAvatarBlue extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [LargeSolidStatusAvatarBlue].
  const LargeSolidStatusAvatarBlue({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize12,
      color: AppColors.whiteColor,
      bgColor: AppColors.blue500Color,
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}
