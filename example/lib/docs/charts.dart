import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class ChartDocPage extends StatefulWidget {
  const ChartDocPage({super.key});

  @override
  State<ChartDocPage> createState() => _ChartDocPageState();
}

class _ChartDocPageState extends State<ChartDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.neutral100Color,
      child: Center(
        child: Column(
          children: [
            const DepositsH4Text(text: "Charts"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const DoughnutChartCardOne(
                  bgColor: AppColors.whiteColor,
                  primaryText: "Invoice Chart",
                  secondaryText: "Paid invoices",
                  mainText: "150,0000",
                  pieData: [
                    {
                      "value": 10,
                      "title": "Paid",
                      "color": AppColors.blue500Color,
                    },
                    {
                      "value": 40,
                      "title": "Pending",
                      "color": AppColors.red500Color,
                    },
                    {
                      "value": 20,
                      "title": "Sent",
                      "color": AppColors.orange500Color,
                    },
                    {
                      "value": 20,
                      "title": "Cancelled",
                      "color": AppColors.neutral500Color,
                    }
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                ),
                const DoughnutChartCardTwo(
                  bgColor: AppColors.whiteColor,
                  primaryText: "Invoices",
                  secondaryText: "Paid invoices",
                  mainText: "150,0000",
                  pieData: [
                    {
                      "value": 10,
                      "title": "Paid",
                      "color": AppColors.blue400Color,
                    },
                    {
                      "value": 40,
                      "title": "Pending",
                      "color": AppColors.red400Color,
                    },
                    {
                      "value": 20,
                      "title": "Sent",
                      "color": AppColors.orange400Color,
                    },
                    {
                      "value": 20,
                      "title": "Cancelled",
                      "color": AppColors.neutral400Color,
                    },
                    {
                      "value": 10,
                      "title": "Complete",
                      "color": AppColors.green400Color,
                    }
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
