import 'package:cached_network_image/cached_network_image.dart';
import 'package:deposits_ui_kit_v2/components/typography/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/helper.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:package_info_plus/package_info_plus.dart';

class HrWidget extends StatelessWidget {
  final Color borderColor;
  final double width;
  const HrWidget({
    super.key,
    required this.borderColor,
    this.width = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: width,
                color: borderColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class VersionWidget extends StatefulWidget {
  const VersionWidget({
    super.key,
  });

  @override
  VersionWidgetState createState() {
    return VersionWidgetState();
  }
}

class VersionWidgetState extends State<VersionWidget> {
  String version = "";
  String buildNumber = "";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      setState(() {
        version = packageInfo.version;
        buildNumber = packageInfo.buildNumber;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DepositsButtonText(
          text: "version: $version($buildNumber)",
          color: AppColors.blackColor,
        )
      ],
    );
  }
}

class VSpacerWidget extends StatelessWidget {
  final double size;
  const VSpacerWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.symmetric(vertical: size));
  }
}

class ImageWidget extends StatelessWidget {
  final String imageUrl;
  final double? imageWidth;
  final double? imageHeight;
  final Color? color;
  const ImageWidget(
      {super.key,
      required this.imageUrl,
      this.imageWidth,
      this.imageHeight,
      this.color});

  @override
  Widget build(BuildContext context) {
    Widget widget;
    if (imageUrl.contains("https") == true ||
        imageUrl.contains("http") == true) {
      if (imageUrl.contains(".svg") == true) {
        // widget = SvgPicture.network(
        //   imageUrl,
        //   width: imageWidth,
        //   height: imageHeight,
        // );
        widget = CachedNetworkImage(
          imageUrl: imageUrl,
          imageBuilder: (context, imageProvider) => SvgPicture.network(
            imageUrl,
            width: imageWidth,
            height: imageHeight,
          ),
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        );
      } else {
        // widget = Image.network(
        //   imageUrl,
        //   width: imageWidth,
        //   height: imageHeight,
        //   // color: color,
        // );
        widget = CachedNetworkImage(
          imageUrl: imageUrl,
          imageBuilder: (context, imageProvider) => widget = Image.network(
            imageUrl,
            width: imageWidth,
            height: imageHeight,
          ),
          placeholder: (context, url) => const CircularProgressIndicator(
            color: AppColors.blue400Color,
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        );
      }
    } else {
      if (imageUrl.contains(".svg") == true) {
        widget = SvgPicture.asset(
          imageUrl,
          width: imageWidth,
          height: imageHeight,
        );
      } else {
        widget = Image.asset(
          imageUrl,
          width: imageWidth,
          height: imageHeight,
          // color: color,
        );
      }
    }
    return widget;
  }
}

class ColorSquareWidget extends StatelessWidget {
  final Color color;
  const ColorSquareWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            color: color,
          ),
          Container(
            width: 100.0,
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
            color: const Color(0xffF3F3F3),
            child: Center(
                child: TextCustom(
                    text: colorToString(color),
                    textFontSize: AppDimens.fontSize12,
                    color: AppColors.textPrimaryColor,
                    fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
  }
}

class ColorRectangleWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  const ColorRectangleWidget(
      {super.key,
      required this.color,
      required this.text,
      this.textColor = AppColors.textPrimaryColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      // height: 30.0,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextCustom(
                    text: text,
                    textFontSize: AppDimens.fontSize12,
                    color: textColor,
                    fontWeight: FontWeight.w400),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextCustom(
                        text: colorToString(color),
                        textFontSize: AppDimens.fontSize12,
                        color: textColor,
                        fontWeight: FontWeight.w400)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
