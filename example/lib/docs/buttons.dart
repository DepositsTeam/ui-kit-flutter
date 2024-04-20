import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class ButtonDocPage extends StatefulWidget {
  const ButtonDocPage({super.key});

  @override
  State<ButtonDocPage> createState() => _ButtonDocPageState();
}

class _ButtonDocPageState extends State<ButtonDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.whiteColor,
      child: Column(
        children: [
          const DepositsH4Text(text: "primary button/web"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const VSpacerWidget(size: 10.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetPrimary(
                          text: "Primary Button",
                          size: DepositsButtonSize.massive,
                          state: DepositsButtonStates.normal,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetPrimary(
                        text: "Primary Button",
                        size: DepositsButtonSize.huge,
                        state: DepositsButtonStates.normal,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetPrimary(
                          text: "Primary Button",
                          size: DepositsButtonSize.xLarge,
                          state: DepositsButtonStates.hover,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetPrimary(
                        text: "Primary Button",
                        size: DepositsButtonSize.large,
                        state: DepositsButtonStates.disabled,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetPrimary(
                          text: "Primary Button",
                          size: DepositsButtonSize.medium,
                          state: DepositsButtonStates.normal,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetPrimary(
                        text: "Primary Button",
                        size: DepositsButtonSize.small,
                        state: DepositsButtonStates.normal,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              const VSpacerWidget(size: 5.0),
            ],
          ),
          const VSpacerWidget(size: 5.0),
          const DepositsH4Text(text: "Default button/web"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const VSpacerWidget(size: 10.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetDefault(
                          text: "Default Button",
                          size: DepositsButtonSize.massive,
                          state: DepositsButtonStates.focus,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetDefault(
                        text: "Default Button",
                        size: DepositsButtonSize.huge,
                        state: DepositsButtonStates.focus,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetDefault(
                          text: "Default Button",
                          size: DepositsButtonSize.xLarge,
                          state: DepositsButtonStates.focus,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetDefault(
                        text: "Default Button",
                        size: DepositsButtonSize.large,
                        state: DepositsButtonStates.focus,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetDefault(
                          text: "Default Button",
                          size: DepositsButtonSize.medium,
                          state: DepositsButtonStates.focus,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetDefault(
                        text: "Default Button",
                        size: DepositsButtonSize.small,
                        state: DepositsButtonStates.focus,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
            ],
          ),
          const VSpacerWidget(size: 5.0),
          const DepositsH4Text(text: "Invincible button/web"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const VSpacerWidget(size: 10.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetInvincible(
                          text: "Invincible Button",
                          size: DepositsButtonSize.massive,
                          state: DepositsButtonStates.hover,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetInvincible(
                        text: "Invincible Button",
                        size: DepositsButtonSize.huge,
                        state: DepositsButtonStates.hover,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetInvincible(
                          text: "Invincible Button",
                          size: DepositsButtonSize.xLarge,
                          state: DepositsButtonStates.hover,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetInvincible(
                        text: "Invincible Button",
                        size: DepositsButtonSize.large,
                        state: DepositsButtonStates.focus,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetInvincible(
                          text: "Invincible Button",
                          size: DepositsButtonSize.medium,
                          state: DepositsButtonStates.disabled,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetInvincible(
                        text: "Invincible Button",
                        size: DepositsButtonSize.small,
                        state: DepositsButtonStates.normal,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              const VSpacerWidget(size: 5.0),
            ],
          ),
          const VSpacerWidget(size: 5.0),
          const DepositsH4Text(text: "Outline button/web"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const VSpacerWidget(size: 10.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetOutline(
                          text: "Outline Button",
                          size: DepositsButtonSize.massive,
                          state: DepositsButtonStates.disabled,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetOutline(
                        text: "Outline Button",
                        size: DepositsButtonSize.huge,
                        state: DepositsButtonStates.disabled,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetOutline(
                          text: "Outline Button",
                          size: DepositsButtonSize.xLarge,
                          state: DepositsButtonStates.focus,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetOutline(
                        text: "Outline Button",
                        size: DepositsButtonSize.large,
                        state: DepositsButtonStates.hover,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetOutline(
                          text: "Outline Button",
                          size: DepositsButtonSize.medium,
                          state: DepositsButtonStates.normal,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetOutline(
                        text: "Outline Button",
                        size: DepositsButtonSize.small,
                        state: DepositsButtonStates.disabled,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              const VSpacerWidget(size: 5.0),
            ],
          ),
          const VSpacerWidget(size: 5.0),
          const DepositsH4Text(text: "Danger button/web"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const VSpacerWidget(size: 10.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetError(
                          text: "Danger Button",
                          size: DepositsButtonSize.massive,
                          state: DepositsButtonStates.hasIcon,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetError(
                        text: "Danger Button",
                        size: DepositsButtonSize.huge,
                        state: DepositsButtonStates.hasIcon,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetError(
                          text: "Danger Button",
                          size: DepositsButtonSize.xLarge,
                          state: DepositsButtonStates.hasIcon,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetError(
                        text: "Danger Button",
                        size: DepositsButtonSize.large,
                        state: DepositsButtonStates.hasIcon,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetError(
                          text: "Danger Button",
                          size: DepositsButtonSize.medium,
                          state: DepositsButtonStates.hasIcon,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetError(
                        text: "Danger Button",
                        size: DepositsButtonSize.small,
                        state: DepositsButtonStates.hasIcon,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              const VSpacerWidget(size: 5.0),
            ],
          ),
          const VSpacerWidget(size: 5.0),
          const DepositsH4Text(text: "success button/web"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const VSpacerWidget(size: 10.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetSuccess(
                          text: "Success Button",
                          size: DepositsButtonSize.massive,
                          state: DepositsButtonStates.hasDropdown,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetSuccess(
                        text: "Success Button",
                        size: DepositsButtonSize.huge,
                        state: DepositsButtonStates.hasDropdown,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetSuccess(
                          text: "Success Button",
                          size: DepositsButtonSize.xLarge,
                          state: DepositsButtonStates.hasDropdown,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetSuccess(
                        text: "Success Button",
                        size: DepositsButtonSize.large,
                        state: DepositsButtonStates.hasDropdown,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: DepositsButtonWidgetSuccess(
                          text: "Success Button",
                          size: DepositsButtonSize.medium,
                          state: DepositsButtonStates.hasDropdown,
                          onPressed: () {}),
                    ),
                  ),
                  Expanded(
                    child: DepositsButtonWidgetSuccess(
                        text: "Success Button",
                        size: DepositsButtonSize.small,
                        state: DepositsButtonStates.hasDropdown,
                        onPressed: () {}),
                  ),
                ],
              ),
              const VSpacerWidget(size: 5.0),
              const VSpacerWidget(size: 5.0),
            ],
          ),
          const VSpacerWidget(size: 5.0),
        ],
      ),
    );
  }
}
