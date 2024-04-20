import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class ToggleSwitchDocPage extends StatefulWidget {
  const ToggleSwitchDocPage({super.key});

  @override
  State<ToggleSwitchDocPage> createState() => _ToggleSwitchDocPageState();
}

class _ToggleSwitchDocPageState extends State<ToggleSwitchDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.whiteColor,
      child: Column(
        children: [
          const DepositsH4Text(text: "Toggle Switch"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const VSpacerWidget(size: 10.0),
              DepositsSwitch(
                  formState: DepositsSwitchFormState.off,
                  onChanged: (state) {}),
              const VSpacerWidget(size: 10.0),
              DepositsSwitch(
                  formState: DepositsSwitchFormState.on, onChanged: (state) {}),
              const VSpacerWidget(size: 10.0),
            ],
          ),
        ],
      ),
    );
  }
}
