import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DoughnutChartCardTwo extends StatelessWidget {
  /// The message of this avatar.
  final String primaryText;
  final String secondaryText;
  final String mainText;
  final Color bgColor;
  final List pieData;

  /// Create an instance of [DoughnutChartCardTwo].
  const DoughnutChartCardTwo(
      {Key? key,
      required this.bgColor,
      required this.primaryText,
      required this.secondaryText,
      required this.mainText,
      required this.pieData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget result = Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: bgColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCustom(
                        text: primaryText,
                        textFontSize: AppDimens.fontSize16,
                        color: AppColors.neutral700Color,
                        fontWeight: FontWeight.w500),
                  ],
                ),
              )),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                  )
                ],
              )
            ],
          ),
          const Hr(
            color: AppColors.neutral200Color,
            size: DepositsHrSizes.small,
          ),
          Row(
            children: [
              Expanded(
                  flex: 7,
                  child: Container(
                    height: 200.0,
                    padding: const EdgeInsets.all(20.0),
                    child: PieChart(
                      PieChartData(sections: [
                        for (var thisPCSData in pieData)
                          PieChartSectionData(
                              value: double.tryParse(
                                  thisPCSData['value'].toString()),
                              color: thisPCSData['color'],
                              title: thisPCSData['title'],
                              showTitle: false)
                      ]),
                      swapAnimationDuration:
                          const Duration(milliseconds: 150), // Optional
                      swapAnimationCurve: Curves.linear,
                    ),
                  )),
              Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        for (var thisRPLData in pieData)
                          CircleProductList(
                              color: thisRPLData['color'],
                              text: "${thisRPLData['title']}"),
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
    return result;
  }
}
