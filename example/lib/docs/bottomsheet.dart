import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class BottomsheetDocPage extends StatefulWidget {
  const BottomsheetDocPage({super.key});

  @override
  State<BottomsheetDocPage> createState() => _BottomsheetDocPageState();
}

class _BottomsheetDocPageState extends State<BottomsheetDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.docBgColor,
      child: Column(
        children: [
          const DepositsH4Text(text: "Bottomsheet"),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const VSpacerWidget(size: 10.0),
                DepositsBottomsheet(
                    titleWidget: Container(),
                    titleLeftWidget: Container(),
                    titleRightWidget: Container(),
                    bodyWidget: Container(
                      height: 200.0,
                    )),
                const VSpacerWidget(size: 10.0),
                DepositsBottomsheetOne(
                    title: "Title",
                    onLeftTitleTapped: () {},
                    backTitle: "Left Title",
                    onCancelButtonTapped: () {},
                    body: Column(
                      children: [
                        Container(
                          height: 100.0,
                        )
                      ],
                    )),
                const VSpacerWidget(size: 5.0),
                DepositsBottomsheetOne(
                    title: "Title",
                    onLeftTitleTapped: () {},
                    backTitle: "",
                    showLeftSection: false,
                    onCancelButtonTapped: () {},
                    body: Column(
                      children: [
                        Container(
                          height: 100.0,
                        )
                      ],
                    )),
                const VSpacerWidget(size: 5.0),
              ])
        ],
      ),
    );
  }
}
