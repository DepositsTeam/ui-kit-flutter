import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class PasswordDocPage extends StatefulWidget {
  const PasswordDocPage({super.key});

  @override
  State<PasswordDocPage> createState() => _PasswordDocPageState();
}

class _PasswordDocPageState extends State<PasswordDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.whiteColor,
      child: Column(
        children: [
          const DepositsH4Text(text: "Password Input"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const VSpacerWidget(size: 10.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.normal,
                  size: DepositsFormSizeStates.large,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 4.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.active,
                  size: DepositsFormSizeStates.large,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 4.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.cursor,
                  size: DepositsFormSizeStates.large,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 4.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.disabled,
                  size: DepositsFormSizeStates.large,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 4.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.error,
                  size: DepositsFormSizeStates.large,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 10.0),
              const VSpacerWidget(size: 10.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.normal,
                  size: DepositsFormSizeStates.medium,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 4.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.active,
                  size: DepositsFormSizeStates.medium,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 4.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.cursor,
                  size: DepositsFormSizeStates.medium,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 4.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.disabled,
                  size: DepositsFormSizeStates.medium,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 4.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.error,
                  size: DepositsFormSizeStates.medium,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 10.0),
              const VSpacerWidget(size: 10.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.normal,
                  size: DepositsFormSizeStates.small,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 4.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.active,
                  size: DepositsFormSizeStates.small,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 4.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.cursor,
                  size: DepositsFormSizeStates.small,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 4.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.disabled,
                  size: DepositsFormSizeStates.small,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 4.0),
              DepositsPasswordInput(
                  title: "Password",
                  formState: DepositsFormStates.error,
                  size: DepositsFormSizeStates.small,
                  onChanged: (a, b) {}),
              const VSpacerWidget(size: 10.0),
            ],
          ),
        ],
      ),
    );
  }
}
