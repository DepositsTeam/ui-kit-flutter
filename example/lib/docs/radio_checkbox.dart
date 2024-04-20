import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class RadioCheckboxDocPage extends StatefulWidget {
  const RadioCheckboxDocPage({super.key});

  @override
  State<RadioCheckboxDocPage> createState() => _RadioCheckboxDocPageState();
}

class _RadioCheckboxDocPageState extends State<RadioCheckboxDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Center(
        child: Column(
          children: [
            const DepositsH4Text(text: "Radio/Checkboxes"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const VSpacerWidget(size: 10.0),
                DepositsRadio(
                    title: "Label",
                    formState: DepositsRadioFormState.normal,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsRadio(
                    title: "Label",
                    formState: DepositsRadioFormState.active,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsRadio(
                    title: "Selected (Hover)",
                    formState: DepositsRadioFormState.active,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsRadio(
                    title: "Disabled (Active)",
                    formState: DepositsRadioFormState.activeDisabled,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsRadio(
                    title: "Label",
                    formState: DepositsRadioFormState.disabled,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                const VSpacerWidget(size: 10.0),
                DepositsCheckbox(
                    title: "Unchecked",
                    formState: DepositsCheckboxFormState.normal,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsCheckbox(
                    title: "Checked",
                    formState: DepositsCheckboxFormState.active,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsCheckbox(
                    title: "Checked (Hover)",
                    formState: DepositsCheckboxFormState.active,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsCheckbox(
                    title: "Disabled (Checked)",
                    formState: DepositsCheckboxFormState.activeDisabled,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsCheckbox(
                    title: "Disabled",
                    formState: DepositsCheckboxFormState.disabled,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                const VSpacerWidget(size: 10.0),
                DepositsIndeterminant(
                    title: "Unchecked",
                    formState: DepositsIndeterminantFormState.normal,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsIndeterminant(
                    title: "Checked",
                    formState: DepositsIndeterminantFormState.active,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsIndeterminant(
                    title: "Checked (Hover)",
                    formState: DepositsIndeterminantFormState.active,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsIndeterminant(
                    title: "Disabled (Checked)",
                    formState: DepositsIndeterminantFormState.activeDisabled,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsIndeterminant(
                    title: "Disabled",
                    formState: DepositsIndeterminantFormState.disabled,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
