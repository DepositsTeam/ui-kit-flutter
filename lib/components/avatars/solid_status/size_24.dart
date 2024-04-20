import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class SmallSolidStatusAvatarCyan extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSolidStatusAvatarCyan].
  const SmallSolidStatusAvatarCyan({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.neutral800Color,
      bgColor: AppColors.cyan600Color,
      size: DepositsAvatarSizes.small,
      status: "online",
    );
    return result;
  }
}

class SmallSolidStatusAvatarGreen extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSolidStatusAvatarGreen].
  const SmallSolidStatusAvatarGreen({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.whiteColor,
      bgColor: AppColors.green600Color,
      size: DepositsAvatarSizes.small,
      status: "online",
    );
    return result;
  }
}

class SmallSolidStatusAvatarOrange extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSolidStatusAvatarOrange].
  const SmallSolidStatusAvatarOrange({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.neutral800Color,
      bgColor: AppColors.orange600Color,
      size: DepositsAvatarSizes.small,
      status: "online",
    );
    return result;
  }
}

class SmallSolidStatusAvatarRed extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSolidStatusAvatarRed].
  const SmallSolidStatusAvatarRed({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.whiteColor,
      bgColor: AppColors.red600Color,
      size: DepositsAvatarSizes.small,
      status: "online",
    );
    return result;
  }
}

class SmallSolidStatusAvatarNeutral extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSolidStatusAvatarNeutral].
  const SmallSolidStatusAvatarNeutral({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.neutral900Color,
      bgColor: AppColors.neutral600Color,
      size: DepositsAvatarSizes.small,
      status: "online",
    );
    return result;
  }
}

class SmallSolidStatusAvatarBlue extends StatelessWidget {
  /// The message of this avatar.
  final String? text;

  /// Create an instance of [SmallSolidStatusAvatarBlue].
  const SmallSolidStatusAvatarBlue({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsStatusAvatar(
      text: "$text",
      fontSize: AppDimens.fontSize10,
      color: AppColors.whiteColor,
      bgColor: AppColors.blue500Color,
      size: DepositsAvatarSizes.small,
      status: "online",
    );
    return result;
  }
}
