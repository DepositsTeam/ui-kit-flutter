import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class ColorDocPage extends StatefulWidget {
  const ColorDocPage({super.key});

  @override
  State<ColorDocPage> createState() => _ColorDocPageState();
}

class _ColorDocPageState extends State<ColorDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.whiteColor,
      child: const Center(
        child: Column(
          children: [
            DepositsH4Text(text: "Colors"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      child: ColorSquareWidget(color: AppColors.primaryColor),
                    ),
                    Expanded(
                      child: ColorSquareWidget(
                          color: AppColors.primaryColorDemoOne),
                    ),
                    Expanded(
                      child: ColorSquareWidget(
                          color: AppColors.primaryColorDemoTwo),
                    ),
                    Expanded(
                      child: ColorSquareWidget(color: AppColors.secondaryColor),
                    )
                  ],
                ),
                VSpacerWidget(size: 5.0),
                Row(
                  children: [
                    Expanded(
                      child: ColorSquareWidget(color: AppColors.successColor),
                    ),
                    Expanded(
                      child: ColorSquareWidget(color: AppColors.warningColor),
                    ),
                    Expanded(
                      child: ColorSquareWidget(color: AppColors.errorColor),
                    ),
                  ],
                ),
                VSpacerWidget(size: 5.0),
                DepositsH4Text(text: "Cyan"),
                Column(
                  children: [
                    ColorRectangleWidget(
                        color: AppColors.cyan100Color, text: "Cyan 100"),
                    ColorRectangleWidget(
                        color: AppColors.cyan200Color, text: "Cyan 200"),
                    ColorRectangleWidget(
                        color: AppColors.cyan300Color, text: "Cyan 300"),
                    ColorRectangleWidget(
                        color: AppColors.cyan400Color, text: "Cyan 400"),
                    ColorRectangleWidget(
                        color: AppColors.cyan500Color, text: "Cyan 500"),
                    ColorRectangleWidget(
                        color: AppColors.cyan600Color, text: "Cyan 600"),
                    ColorRectangleWidget(
                      color: AppColors.cyan700Color,
                      text: "Cyan 700",
                      textColor: AppColors.whiteColor,
                    ),
                    ColorRectangleWidget(
                      color: AppColors.cyan800Color,
                      text: "Cyan 800",
                      textColor: AppColors.whiteColor,
                    ),
                    ColorRectangleWidget(
                      color: AppColors.cyan900Color,
                      text: "Cyan 900",
                      textColor: AppColors.whiteColor,
                    ),
                  ],
                ),
                VSpacerWidget(size: 5.0),
                DepositsH4Text(text: "Green"),
                Column(
                  children: [
                    ColorRectangleWidget(
                        color: AppColors.green100Color, text: "Green 100"),
                    ColorRectangleWidget(
                        color: AppColors.green200Color, text: "Green 200"),
                    ColorRectangleWidget(
                        color: AppColors.green300Color, text: "Green 300"),
                    ColorRectangleWidget(
                        color: AppColors.green400Color, text: "Green 400"),
                    ColorRectangleWidget(
                        color: AppColors.green500Color, text: "Green 500"),
                    ColorRectangleWidget(
                        color: AppColors.green600Color, text: "Green 600"),
                    ColorRectangleWidget(
                      color: AppColors.green700Color,
                      text: "Green 700",
                      textColor: AppColors.whiteColor,
                    ),
                    ColorRectangleWidget(
                      color: AppColors.green800Color,
                      text: "Green 800",
                      textColor: AppColors.whiteColor,
                    ),
                    ColorRectangleWidget(
                      color: AppColors.green900Color,
                      text: "Green 900",
                      textColor: AppColors.whiteColor,
                    ),
                  ],
                ),
                VSpacerWidget(size: 5.0),
                DepositsH4Text(text: "Orange"),
                Column(
                  children: [
                    ColorRectangleWidget(
                        color: AppColors.orange100Color, text: "Orange 100"),
                    ColorRectangleWidget(
                        color: AppColors.orange200Color, text: "Orange 200"),
                    ColorRectangleWidget(
                        color: AppColors.orange300Color, text: "Orange 300"),
                    ColorRectangleWidget(
                        color: AppColors.orange400Color, text: "Orange 400"),
                    ColorRectangleWidget(
                        color: AppColors.orange500Color, text: "Orange 500"),
                    ColorRectangleWidget(
                        color: AppColors.orange600Color, text: "Orange 600"),
                    ColorRectangleWidget(
                      color: AppColors.orange700Color,
                      text: "Orange 700",
                      textColor: AppColors.whiteColor,
                    ),
                    ColorRectangleWidget(
                      color: AppColors.orange800Color,
                      text: "Orange 800",
                      textColor: AppColors.whiteColor,
                    ),
                    ColorRectangleWidget(
                      color: AppColors.orange900Color,
                      text: "Orange 900",
                      textColor: AppColors.whiteColor,
                    ),
                  ],
                ),
                VSpacerWidget(size: 5.0),
                DepositsH4Text(text: "Red"),
                Column(
                  children: [
                    ColorRectangleWidget(
                        color: AppColors.red100Color, text: "Red 100"),
                    ColorRectangleWidget(
                        color: AppColors.red200Color, text: "Red 200"),
                    ColorRectangleWidget(
                        color: AppColors.red300Color, text: "Red 300"),
                    ColorRectangleWidget(
                        color: AppColors.red400Color, text: "Red 400"),
                    ColorRectangleWidget(
                        color: AppColors.red500Color, text: "Red 500"),
                    ColorRectangleWidget(
                        color: AppColors.red600Color, text: "Red 600"),
                    ColorRectangleWidget(
                      color: AppColors.red700Color,
                      text: "Red 700",
                      textColor: AppColors.whiteColor,
                    ),
                    ColorRectangleWidget(
                      color: AppColors.red800Color,
                      text: "Red 800",
                      textColor: AppColors.whiteColor,
                    ),
                    ColorRectangleWidget(
                      color: AppColors.red900Color,
                      text: "Red 900",
                      textColor: AppColors.whiteColor,
                    ),
                  ],
                ),
                VSpacerWidget(size: 5.0),
                DepositsH4Text(text: "Blue"),
                Column(
                  children: [
                    ColorRectangleWidget(
                        color: AppColors.blue100Color, text: "Blue 100"),
                    ColorRectangleWidget(
                        color: AppColors.blue200Color, text: "Blue 200"),
                    ColorRectangleWidget(
                        color: AppColors.blue300Color, text: "Blue 300"),
                    ColorRectangleWidget(
                        color: AppColors.blue400Color, text: "Blue 400"),
                    ColorRectangleWidget(
                        color: AppColors.blue500Color, text: "Blue 500"),
                    ColorRectangleWidget(
                        color: AppColors.blue600Color, text: "Blue 600"),
                    ColorRectangleWidget(
                      color: AppColors.blue700Color,
                      text: "Blue 700",
                      textColor: AppColors.whiteColor,
                    ),
                    ColorRectangleWidget(
                      color: AppColors.blue800Color,
                      text: "Blue 800",
                      textColor: AppColors.whiteColor,
                    ),
                    ColorRectangleWidget(
                      color: AppColors.blue900Color,
                      text: "Blue 900",
                      textColor: AppColors.whiteColor,
                    ),
                  ],
                ),
                VSpacerWidget(size: 5.0),
                DepositsH4Text(text: "Neutral"),
                Column(
                  children: [
                    ColorRectangleWidget(
                        color: AppColors.neutral100Color, text: "Neutral 100"),
                    ColorRectangleWidget(
                        color: AppColors.neutral200Color, text: "Neutral 200"),
                    ColorRectangleWidget(
                        color: AppColors.neutral300Color, text: "Neutral 300"),
                    ColorRectangleWidget(
                        color: AppColors.neutral400Color, text: "Neutral 400"),
                    ColorRectangleWidget(
                        color: AppColors.neutral500Color, text: "Neutral 500"),
                    ColorRectangleWidget(
                        color: AppColors.neutral600Color, text: "Neutral 600"),
                    ColorRectangleWidget(
                      color: AppColors.neutral700Color,
                      text: "Neutral 700",
                      textColor: AppColors.whiteColor,
                    ),
                    ColorRectangleWidget(
                      color: AppColors.neutral800Color,
                      text: "Neutral 800",
                      textColor: AppColors.whiteColor,
                    ),
                    ColorRectangleWidget(
                      color: AppColors.neutral900Color,
                      text: "Neutral 900",
                      textColor: AppColors.whiteColor,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
