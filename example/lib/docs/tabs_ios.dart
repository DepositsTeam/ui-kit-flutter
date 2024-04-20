import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class TabsIosDocPage extends StatefulWidget {
  const TabsIosDocPage({super.key});

  @override
  State<TabsIosDocPage> createState() => _TabsIosDocPageState();
}

class _TabsIosDocPageState extends State<TabsIosDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.docBgColor,
      child: Column(
        children: [
          const DepositsH4Text(text: "Tabs Ios Native"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const VSpacerWidget(size: 10.0),
              DepositsIosTabs(
                  titles: const ["Value", "Value One"],
                  activeTitle: "Value",
                  onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
              DepositsIosTabs(
                  titles: const ["Value", "Value One"],
                  activeTitle: "Value One",
                  onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
              DepositsIosTabs(
                  titles: const ["Value", "Value One", "Value Two"],
                  activeTitle: "Value",
                  onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
              DepositsIosTabs(
                  titles: const ["Value", "Value One", "Value Two"],
                  activeTitle: "Value One",
                  onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
              DepositsIosTabs(
                  titles: const ["Value", "Value One", "Value Two"],
                  activeTitle: "Value Two",
                  onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
              DepositsIosTabs(titles: const [
                "Value",
                "Value One",
                "Value Two",
                "Value Three"
              ], activeTitle: "Value", onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
              DepositsIosTabs(titles: const [
                "Value",
                "Value One",
                "Value Two",
                "Value Three"
              ], activeTitle: "Value One", onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
              DepositsIosTabs(titles: const [
                "Value",
                "Value One",
                "Value Two",
                "Value Three"
              ], activeTitle: "Value Two", onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
              DepositsIosTabs(titles: const [
                "Value",
                "Value One",
                "Value Two",
                "Value Three"
              ], activeTitle: "Value Three", onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
            ],
          ),
        ],
      ),
    );
  }
}
