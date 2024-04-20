import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class MediumImageAvatar extends StatelessWidget {
  /// The message of this avatar.
  final String? path;

  /// Create an instance of [MediumImageAvatar].
  const MediumImageAvatar({Key? key, this.path}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsImageAvatar(
      imagePath: "$path",
      size: DepositsAvatarSizes.medium,
    );
    return result;
  }
}
