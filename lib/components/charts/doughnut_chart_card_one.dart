import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DoughnutChartCardOne extends StatelessWidget {
  /// The message of this avatar.
  final String primaryText;
  final String secondaryText;
  final String mainText;
  final Color bgColor;
  final List pieData;

  /// Create an instance of [DoughnutChartCardOne].
  const DoughnutChartCardOne(
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: bgColor,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            spreadRadius: 0,
            blurRadius: 15,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
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
                        color: AppColors.neutral600Color,
                        fontWeight: FontWeight.w600),
                    TextCustom(
                        text: mainText,
                        textFontSize: AppDimens.fontSize40,
                        color: AppColors.neutral700Color,
                        fontWeight: FontWeight.w500),
                    TextCustom(
                        text: secondaryText,
                        textFontSize: AppDimens.fontSize14,
                        color: AppColors.neutral400Color,
                        fontWeight: FontWeight.w600)
                  ],
                ),
              )),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: const Icon(
                      Icons.info,
                      size: 24.0,
                      color: AppColors.neutral300Color,
                    ),
                  )
                ],
              )
            ],
          ),
          const Hr(color: AppColors.neutral400Color),
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
                          RectangleProductList(
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
