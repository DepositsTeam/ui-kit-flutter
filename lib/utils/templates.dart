import 'package:auto_size_text/auto_size_text.dart';
import 'package:deposits_ui_kit_v2/components/typography/all.dart';
import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:flutter/material.dart';

Widget emptyContainer = Container();

class HeadingOne extends StatelessWidget {
  final String? title;
  const HeadingOne({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class HeadingTwo extends StatelessWidget {
  final String? title;
  const HeadingTwo({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: const TextStyle(
        color: AppColors.cyan800Color,
        fontSize: AppDimens.fontSize18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class HeadingThree extends StatelessWidget {
  final String? title;
  const HeadingThree({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: const TextStyle(
        color: AppColors.cyan800Color,
        fontSize: AppDimens.fontSize14,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class SubHeadingOne extends StatelessWidget {
  final String? text;
  const SubHeadingOne({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: const TextStyle(fontSize: 12.0, color: AppColors.cyan800Color),
    );
  }
}

class SubHeadingTwo extends StatelessWidget {
  final String? text;
  const SubHeadingTwo({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: const TextStyle(
          fontSize: AppDimens.fontSize12,
          color: AppColors.cyan800Color,
          fontWeight: FontWeight.w400),
    );
  }
}

class TextCustom extends StatelessWidget {
  final String text;
  final double textFontSize;
  final Color color;
  final FontWeight fontWeight;
  final DepositsFontFamilies fontFamily;
  final TextAlign textAlign;
  final double lineHeight;
  const TextCustom(
      {super.key,
      required this.text,
      required this.textFontSize,
      required this.color,
      this.fontFamily = DepositsFontFamilies.CircularStd,
      this.textAlign = TextAlign.start,
      this.lineHeight = 1.0,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      // overflow: TextOverflow.clip,
      // softWrap: true,
      // maxLines: 5,
      style: TextStyle(
          fontSize: textFontSize,
          color: color,
          fontWeight: fontWeight,
          fontFamily: "$fontFamily",
          overflow: TextOverflow.clip),
    );
  }
}

class AutoTextCustom extends StatelessWidget {
  final String text;
  final double textFontSize;
  final Color color;
  final FontWeight fontWeight;
  const AutoTextCustom(
      {super.key,
      required this.text,
      required this.textFontSize,
      required this.color,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      minFontSize: 4,
      style: TextStyle(
        fontSize: textFontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

class Hr extends StatelessWidget {
  final DepositsHrSizes? size;
  final Color color;
  const Hr({super.key, this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    var width = 1.0;
    if (size == DepositsHrSizes.large) {
      width = 2.0;
    } else if (size == DepositsHrSizes.medium) {
      width = 1.0;
    } else if (size == DepositsHrSizes.small) {
      width = 0.5;
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: width,
            color: color,
          ),
        ),
      ),
    );
  }
}

class RectangleProductList extends StatelessWidget {
  final String text;
  final Color color;
  const RectangleProductList(
      {super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      width: 21.0,
                      height: 8.0,
                      color: color,
                    ),
                  )
                ],
              ),
              Expanded(
                  child: TextCustom(
                      text: text,
                      textFontSize: AppDimens.fontSize12,
                      color: AppColors.neutral600Color,
                      fontWeight: FontWeight.w400))
            ],
          ),
        ],
      ),
    );
  }
}

class CircleProductList extends StatelessWidget {
  final String text;
  final Color color;
  const CircleProductList({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      width: 7.2,
                      height: 7.2,
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(14.5)),
                    ),
                  )
                ],
              ),
              Expanded(
                  child: TextCustom(
                      text: text,
                      textFontSize: AppDimens.fontSize12,
                      color: AppColors.neutral600Color,
                      fontWeight: FontWeight.w400))
            ],
          ),
        ],
      ),
    );
  }
}

class PasswordStrength extends StatelessWidget {
  final Color color;
  const PasswordStrength({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.0,
      height: 6.0,
      margin: const EdgeInsets.only(left: 4.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(100.0)),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  const TransactionItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.titleColor = AppColors.textSecondaryColor,
    this.subtitleColor = AppColors.textPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DepositsSubheadText(
                  text: title,
                  color: titleColor,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DepositsButtonText(
                  text: subtitle,
                  color: subtitleColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
