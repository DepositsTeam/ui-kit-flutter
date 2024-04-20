import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class TabsAndroidDocPage extends StatefulWidget {
  const TabsAndroidDocPage({super.key});

  @override
  State<TabsAndroidDocPage> createState() => _TabsAndroidDocPageState();
}

class _TabsAndroidDocPageState extends State<TabsAndroidDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.docBgColor,
      child: Column(
        children: [
          const DepositsH4Text(text: "Tabs Android Native"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const VSpacerWidget(size: 10.0),
              DepositsAndroidTabText(
                  titles: const ["Tab", "Tab.", "Tab.."],
                  activeTitle: "Tab",
                  onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
              DepositsAndroidTabIconTextVertical(
                  titles: const ["Tab", "Tab.", "Tab.."],
                  icons: const [Icons.circle, Icons.circle, Icons.circle],
                  activeTitle: "Tab",
                  onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
              DepositsAndroidTabIcon(
                  icons: const [Icons.circle, Icons.home, Icons.school],
                  activeTitle: Icons.circle,
                  onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
              DepositsAndroidTabTextFull(
                  titles: const ["Tab", "Tab.", "Tab.."],
                  activeTitle: "Tab",
                  onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
              DepositsAndroidTabIconText(
                  titles: const ["Tab", "Tab.", "Tab.."],
                  icons: const [Icons.circle, Icons.circle, Icons.circle],
                  activeTitle: "Tab",
                  onTapped: (a) {}),
              const VSpacerWidget(size: 10.0),
            ],
          ),
        ],
      ),
    );
  }
}
