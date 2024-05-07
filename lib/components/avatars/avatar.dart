// ignore_for_file: avoid_unnecessary_containers

import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsAvatar extends StatelessWidget {
  /// The message of this avatar.
  final String text;
  final DepositsAvatarSizes size;
  final double fontSize;
  final Color color;
  final Color bgColor;

  /// Create an instance of [DepositsAvatar].
  const DepositsAvatar(
      {Key? key,
      required this.text,
      required this.size,
      required this.fontSize,
      required this.color,
      required this.bgColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = AppDimens.height40;
    var width = AppDimens.height40;
    if (size == DepositsAvatarSizes.small) {
      height = AppDimens.height24;
      width = AppDimens.height24;
    } else if (size == DepositsAvatarSizes.medium) {
      height = AppDimens.height32;
      width = AppDimens.height32;
    }
    Widget result = Container(
      padding: const EdgeInsets.symmetric(
        vertical: 3.0,
        horizontal: 2.0,
      ),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextCustom(
                  text: text,
                  textFontSize: fontSize,
                  color: color,
                  fontWeight: FontWeight.w500,
                )
              ],
            )
          ],
        ),
      ),
    );
    return result;
  }
}

class DepositsImageAvatar extends StatelessWidget {
  /// The message of this avatar.
  final String imagePath;
  final DepositsAvatarSizes size;

  /// Create an instance of [DepositsAvatar].
  const DepositsImageAvatar({
    Key? key,
    required this.imagePath,
    required this.size,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = AppDimens.height40;
    var width = AppDimens.height40;
    if (size == DepositsAvatarSizes.small) {
      height = AppDimens.height24;
      width = AppDimens.height24;
    } else if (size == DepositsAvatarSizes.medium) {
      height = AppDimens.height32;
      width = AppDimens.height32;
    }
    // var imageType = '';
    // if (imagePath.contains("https://") == true ||
    //     imagePath.contains("http://") == true) {
    //   imageType = 'live';
    // } else {
    //   imageType = 'local';
    // }
    // if (imagePath.contains(".svg") == true) {
    //   imageType = '${imageType}_svg';
    // } else {
    //   imageType = '${imageType}_not_svg';
    // }
    var imageWidget = ImageWidget(
      imageUrl: imagePath,
      imageHeight: height,
      imageWidth: width,
    );
    // if (imageType == 'local_not_svg') {
    //   imageWidget = Container(
    //     child: Image.asset(
    //       imagePath,
    //       height: height,
    //     ),
    //   );
    // } else if (imageType == 'local_svg') {
    //   imageWidget = Container(
    //     child: SvgPicture.asset(
    //       imagePath,
    //       height: height,
    //     ),
    //   );
    // } else if (imageType == 'live_not_svg') {
    //   imageWidget = Container(
    //     child: Image.network(
    //       imagePath,
    //       height: height,
    //     ),
    //   );
    // } else if (imageType == 'live_svg') {
    //   imageWidget = Container(
    //     child: SvgPicture.network(
    //       imagePath,
    //       height: height,
    //     ),
    //   );
    // }
    Widget result = Container(
      height: height,
      width: width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: imageWidget,
                )
              ],
            )
          ],
        ),
      ),
    );
    return result;
  }
}

class DepositsStatusAvatar extends StatelessWidget {
  /// The message of this avatar.
  final String text;
  final DepositsAvatarSizes size;
  final String status;
  final double fontSize;
  final Color color;
  final Color bgColor;

  /// Create an instance of [DepositsStatusAvatar].
  const DepositsStatusAvatar(
      {Key? key,
      required this.text,
      required this.size,
      required this.status,
      required this.fontSize,
      required this.color,
      required this.bgColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = Container(
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(20.0)),
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            DepositsAvatar(
                text: text,
                size: size,
                fontSize: fontSize,
                color: color,
                bgColor: bgColor),
            const Icon(
              Icons.circle_rounded,
              color: AppColors.green500Color,
              size: 8,
            )
          ],
        ));
    return result;
  }
}

class DepositsImageStatusAvatar extends StatelessWidget {
  /// The message of this avatar.
  final String imagePath;
  final DepositsAvatarSizes size;
  final String status;

  /// Create an instance of [DepositsImageStatusAvatar].
  const DepositsImageStatusAvatar(
      {Key? key,
      required this.imagePath,
      required this.size,
      required this.status})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            DepositsImageAvatar(imagePath: imagePath, size: size),
            const Icon(
              Icons.circle_rounded,
              color: AppColors.green500Color,
              size: 8,
            )
          ],
        ));
    return result;
  }
}
