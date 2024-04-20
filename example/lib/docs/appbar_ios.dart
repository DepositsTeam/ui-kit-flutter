import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class AppbarIosDocPage extends StatefulWidget {
  const AppbarIosDocPage({super.key});

  @override
  State<AppbarIosDocPage> createState() => _AppbarIosDocPageState();
}

class _AppbarIosDocPageState extends State<AppbarIosDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.docBgColor,
      child: Column(
        children: [
          const DepositsH4Text(text: "Appbar Ios Navigation"),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const VSpacerWidget(size: 10.0),
                DepositsIosAppbarOne(
                    title: "Center Title",
                    onLeftTitleTapped: () {},
                    backTitle: "Prev. Title",
                    rightTitle: "Right Title",
                    onRightTitleTapped: () {}),
                const VSpacerWidget(size: 5.0),
                DepositsIosAppbarTwo(
                    title: "Center Title",
                    onLeftTitleTapped: () {},
                    backTitle: "Prev. Title",
                    rightTitle: "Right Title",
                    onRightTitleTapped: () {}),
                const VSpacerWidget(size: 5.0),
              ])
        ],
      ),
    );
  }
}
