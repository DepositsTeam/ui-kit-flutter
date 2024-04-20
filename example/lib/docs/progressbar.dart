import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class ProgressDocPage extends StatefulWidget {
  const ProgressDocPage({super.key});

  @override
  State<ProgressDocPage> createState() => _ProgressDocPageState();
}

class _ProgressDocPageState extends State<ProgressDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.docBgColor,
      child: const Column(
        children: [
          DepositsH4Text(text: "Stepper"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              VSpacerWidget(size: 10.0),
              DepositsStepper(title: "Title", currentStep: 1, totalSteps: 2),
              VSpacerWidget(size: 10.0),
              DepositsStepper(title: "Title", currentStep: 1, totalSteps: 3),
              VSpacerWidget(size: 10.0),
              DepositsStepper(title: "Title", currentStep: 1, totalSteps: 5),
              VSpacerWidget(size: 10.0),
              DepositsStepper(title: "Title", currentStep: 1, totalSteps: 6),
              VSpacerWidget(size: 10.0),
              DepositsStepper(title: "Title", currentStep: 1, totalSteps: 8),
              VSpacerWidget(size: 10.0),
            ],
          ),
          DepositsH4Text(text: "Progressbar"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              VSpacerWidget(size: 10.0),
              DepositsProgressbar(percent: 100),
              VSpacerWidget(size: 10.0),
              DepositsProgressbar(percent: 80),
              VSpacerWidget(size: 10.0),
              DepositsProgressbar(percent: 40),
              VSpacerWidget(size: 10.0),
              DepositsProgressbar(percent: 10),
              VSpacerWidget(size: 10.0),
            ],
          ),
        ],
      ),
    );
  }
}
