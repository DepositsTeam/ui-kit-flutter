import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class MediumImageStatusAvatar extends StatelessWidget {
  /// The message of this avatar.
  final String? path;

  /// Create an instance of [MediumImageStatusAvatar].
  const MediumImageStatusAvatar({Key? key, this.path}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsImageStatusAvatar(
      imagePath: "$path",
      size: DepositsAvatarSizes.medium,
      status: "online",
    );
    return result;
  }
}
