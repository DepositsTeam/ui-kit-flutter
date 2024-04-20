import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class AlertIosDocPage extends StatefulWidget {
  const AlertIosDocPage({super.key});

  @override
  State<AlertIosDocPage> createState() => _AlertIosDocPageState();
}

class _AlertIosDocPageState extends State<AlertIosDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.neutral200Color,
      child: Column(
        children: [
          const DepositsH4Text(text: "Alerts iOS Native"),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const VSpacerWidget(size: 10.0),
                AlertsIosSingleActionWidget(
                    title: "Alert title",
                    description:
                        "Here’s some alert text. It can span multiple lines if needed!",
                    actionText: "Action",
                    onActionTapped: () {
                      print("Tapped");
                    }),
                const VSpacerWidget(size: 5.0),
                AlertsIosDoubleActionWidget(
                    title: "Alert title",
                    description:
                        "Here’s some alert text. It can span multiple lines if needed!",
                    actionTextLeft: "Action",
                    actionTextRight: "Action.",
                    onLeftActionTapped: () {},
                    onRightActionTapped: () {}),
                const VSpacerWidget(size: 5.0),
                AlertsIosDoubleActionVerticalWidget(
                    title: "Alert title",
                    description:
                        "Here’s some alert text. It can span multiple lines if needed!",
                    actionTextTop: "Action",
                    actionTextBottom: "Action.",
                    onTopActionTapped: () {},
                    onBottomActionTapped: () {}),
                const VSpacerWidget(size: 5.0),
                AlertsIosTripleActionVerticalWidget(
                    title: "Alert title",
                    description:
                        "Here’s some alert text. It can span multiple lines if needed!",
                    actionTextTop: "Action",
                    actionTextMiddle: "Action!",
                    actionTextBottom: "Action.",
                    onTopActionTapped: () {},
                    onMiddleActionTapped: () {},
                    onBottomActionTapped: () {}),
                const VSpacerWidget(size: 5.0),
              ])
        ],
      ),
    );
  }
}
