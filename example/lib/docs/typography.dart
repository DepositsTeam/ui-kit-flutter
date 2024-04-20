import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class TypographyDocPage extends StatefulWidget {
  const TypographyDocPage({super.key});

  @override
  State<TypographyDocPage> createState() => _TypographyDocPageState();
}

class _TypographyDocPageState extends State<TypographyDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.whiteColor,
      child: const Column(
        children: [
          DepositsH4Text(text: "Typography"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              VSpacerWidget(size: 10.0),
              DepositsMassiveText(text: "Massive Text"),
              VSpacerWidget(size: 10.0),
              DepositsHugeText(text: "Huge Text"),
              VSpacerWidget(size: 10.0),
              DepositsH1Text(text: "H1/Large Text"),
              VSpacerWidget(size: 10.0),
              DepositsH2Text(text: "H2/Title 1"),
              VSpacerWidget(size: 10.0),
              DepositsH3Text(text: "H3/Title 2"),
              VSpacerWidget(size: 10.0),
              DepositsH4Text(text: "H4/Title 3"),
              VSpacerWidget(size: 10.0),
              DepositsH5Text(text: "H5/Headline"),
              VSpacerWidget(size: 10.0),
              DepositsBodyText(text: "Body"),
              VSpacerWidget(size: 10.0),
              DepositsCalloutText(text: "Callout"),
              VSpacerWidget(size: 10.0),
              DepositsSubheadText(text: "Subhead"),
              VSpacerWidget(size: 10.0),
              DepositsButtonText(text: "Button"),
              VSpacerWidget(size: 10.0),
              DepositsFootnoteText(text: "Footnote"),
              VSpacerWidget(size: 10.0),
              DepositsCaptionText(text: "Caption"),
              VSpacerWidget(size: 10.0),
            ],
          ),
        ],
      ),
    );
  }
}
