import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class LargeImageStatusAvatar extends StatelessWidget {
  /// The message of this avatar.
  final String? path;

  /// Create an instance of [LargeImageStatusAvatar].
  const LargeImageStatusAvatar({Key? key, this.path}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsImageStatusAvatar(
      imagePath: "$path",
      size: DepositsAvatarSizes.large,
      status: "online",
    );
    return result;
  }
}
