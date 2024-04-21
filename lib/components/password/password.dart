import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsPasswordInput extends StatefulWidget {
  final String title;
  final String? placeholder;
  final DepositsFormSizeStates size;
  final String? errorText;
  final String? initialValue;
  final DepositsFormStates formState;
  final bool readOnly;
  final Color? bgColor;
  final bool showPasswordStrengthSection;
  final Function onChanged;

  const DepositsPasswordInput(
      {super.key,
      required this.title,
      this.placeholder = "Enter password",
      this.size = DepositsFormSizeStates.medium,
      this.errorText = "",
      this.initialValue,
      this.formState = DepositsFormStates.normal,
      this.readOnly = false,
      this.bgColor,
      this.showPasswordStrengthSection = true,
      required this.onChanged});

  @override
  DepositsPasswordInputState createState() {
    return DepositsPasswordInputState();
  }
}

class DepositsPasswordInputState extends State<DepositsPasswordInput> {
  var initialValue = "";
  DepositsFormStates formState = DepositsFormStates.normal;
  var psError = "";
  var passwordStrengthText = "Password strength";
  Color passwordStrengthTextColor = AppColors.neutral700Color;
  Color passwordStrengthIconColorOne = AppColors.neutral200Color;
  Color passwordStrengthIconColorTwo = AppColors.neutral200Color;
  Color passwordStrengthIconColorThree = AppColors.neutral200Color;
  Color passwordStrengthIconColorFour = AppColors.neutral200Color;
  var fieldController = TextEditingController();
  DepositsPasswordStrengthStates ps = DepositsPasswordStrengthStates.normal;

  var fillColor = AppColors.transparentColor;
  bool passwordVisible = false;

  var titleFontSize = AppDimens.fontSize16;
  var titleTextColor = AppColors.neutral700Color;
  var titleFontWeight = FontWeight.w400;

  var placeholderFontSize = AppDimens.fontSize16;
  var placeholderTextColor = AppColors.neutral300Color;
  var placeholderFontWeight = FontWeight.w400;

  var inputFontSize = AppDimens.fontSize14;
  var inputTextColor = AppColors.neutral700Color;
  var inputFontWeight = FontWeight.w400;

  var errorFontSize = AppDimens.fontSize12;
  var errorTextColor = AppColors.red500Color;
  var errorFontWeight = FontWeight.w400;

  var formFieldheight = 48.0;
  var cursorHeight = 18.0;
  var suffixMinHeight = 28.0;
  var iconSize = 16.0;
  var formFieldContentPadding = const EdgeInsets.fromLTRB(12.0, 0.0, 20.0, 0.0);
  var borderColor = AppColors.neutral300Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fieldController.text = initialValue;
      fieldController.addListener(() {
        initialValue = fieldController.text;
        setState(() {
          formState = DepositsFormStates.cursor;
          resetValues();
        });
        widget.onChanged(initialValue);
      });
      setState(() {
        formState = widget.formState;
        resetValues();
      });
    });
  }

  @override
  void dispose() {
    fieldController.dispose();
    super.dispose();
  }

  resetValues() {
    if (widget.size == DepositsFormSizeStates.small) {
      formFieldheight = 40.0;
      cursorHeight = 14.0;
      suffixMinHeight = 20;
      iconSize = 14.0;

      inputFontSize = AppDimens.fontSize12;
    } else if (widget.size == DepositsFormSizeStates.large) {
      iconSize = 19.0;
      formFieldheight = 56.0;
      cursorHeight = 25.0;

      inputFontSize = AppDimens.fontSize16;
    }
    fillColor = AppColors.transparentColor;
    if (formState == DepositsFormStates.active ||
        formState == DepositsFormStates.cursor) {
      borderColor = AppColors.primaryColor;
    } else if (formState == DepositsFormStates.error) {
      placeholderTextColor = AppColors.neutral700Color;
      fillColor = AppColors.red150Color;
      borderColor = AppColors.red500Color;
    } else if (formState == DepositsFormStates.disabled) {
      placeholderTextColor = AppColors.neutral300Color;
      borderColor = AppColors.neutral300Color;
      fillColor = AppColors.neutral200Color;
    }
  }

  managePasswordStrength(password) {
    var psStrength = 0;
    if (password.length > 6) {
      psError = 'Password must be longer than 6 characters.';
      psStrength = psStrength + 1;
    }
    if (password.contains(RegExp(r'[A-Z]'))) {
      psError = 'Uppercase letter is missing.';
      psStrength = psStrength + 2;
    }
    if (password.contains(RegExp(r'[a-z]'))) {
      psError = 'Lowercase letter is missing.';
      psStrength = psStrength + 2;
    }
    if (password.contains(RegExp(r'[0-9]'))) {
      psError = 'Digit is missing.';
      psStrength = psStrength + 2;
    }
    if (password.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
      psError = 'Special character is missing';
      psStrength = psStrength + 2;
    }

    ps = DepositsPasswordStrengthStates.normal;
    passwordStrengthTextColor = AppColors.neutral700Color;
    passwordStrengthIconColorOne = AppColors.neutral200Color;
    passwordStrengthIconColorTwo = AppColors.neutral200Color;
    passwordStrengthIconColorThree = AppColors.neutral200Color;
    passwordStrengthIconColorFour = AppColors.neutral200Color;
    if (psStrength > 8) {
      ps = DepositsPasswordStrengthStates.strong;
      passwordStrengthTextColor = AppColors.green500Color;
      passwordStrengthIconColorOne = AppColors.green500Color;
      passwordStrengthIconColorTwo = AppColors.green500Color;
      passwordStrengthIconColorThree = AppColors.green500Color;
      passwordStrengthIconColorFour = AppColors.green500Color;
    } else if (psStrength > 6) {
      ps = DepositsPasswordStrengthStates.good;
      passwordStrengthTextColor = AppColors.blue500Color;
      passwordStrengthIconColorOne = AppColors.blue500Color;
      passwordStrengthIconColorTwo = AppColors.blue500Color;
      passwordStrengthIconColorThree = AppColors.blue500Color;
      passwordStrengthIconColorFour = AppColors.neutral200Color;
    } else if (psStrength > 4) {
      ps = DepositsPasswordStrengthStates.fair;
      passwordStrengthTextColor = AppColors.orange500Color;
      passwordStrengthIconColorOne = AppColors.orange500Color;
      passwordStrengthIconColorTwo = AppColors.orange500Color;
      passwordStrengthIconColorThree = AppColors.neutral200Color;
      passwordStrengthIconColorFour = AppColors.neutral200Color;
    } else if (psStrength > 2) {
      ps = DepositsPasswordStrengthStates.weak;
      passwordStrengthTextColor = AppColors.red500Color;
      passwordStrengthIconColorOne = AppColors.red500Color;
      passwordStrengthIconColorTwo = AppColors.neutral200Color;
      passwordStrengthIconColorThree = AppColors.neutral200Color;
      passwordStrengthIconColorFour = AppColors.neutral200Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextCustom(
                text: widget.title,
                textFontSize: titleFontSize,
                color: titleTextColor,
                fontWeight: titleFontWeight,
                fontFamily: DepositsFontFamilies.SFProText,
              ),
            )
          ],
        ),
        SizedBox(
          height: formFieldheight,
          child: TextFormField(
            controller: fieldController,
            cursorColor: AppColors.neutral700Color,
            cursorHeight: cursorHeight,
            obscureText: passwordVisible == true ? false : true,
            enabled: formState == DepositsFormStates.disabled ? false : true,
            readOnly: widget.readOnly == true ? true : false,
            style: TextStyle(
                color: inputTextColor,
                fontSize: inputFontSize,
                fontWeight: inputFontWeight),
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: TextStyle(
                  color: placeholderTextColor,
                  fontWeight: placeholderFontWeight,
                  fontSize: placeholderFontSize),
              filled: true,
              fillColor: fillColor,
              contentPadding: formFieldContentPadding,
              suffixIconConstraints:
                  BoxConstraints(minHeight: suffixMinHeight, minWidth: 30),
              suffixIcon: GestureDetector(
                  onTap: () {
                    if (fieldController.text.isNotEmpty) {
                      setState(() {
                        if (passwordVisible == true) {
                          passwordVisible = false;
                        } else {
                          passwordVisible = true;
                        }
                      });
                    }
                  },
                  child: Icon(
                    passwordVisible == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: formState == DepositsFormStates.error
                        ? AppColors.red500Color
                        : AppColors.neutral300Color,
                    size: iconSize,
                  )),
              border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                  borderSide: BorderSide(width: 1.0, color: borderColor)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
            ),
            onChanged: (a) {
              initialValue = a;
              setState(() {
                formState = DepositsFormStates.cursor;
                resetValues();
                managePasswordStrength(a);
              });
              widget.onChanged(a);
            },
          ),
        ),
        widget.errorText.toString().isNotEmpty
            ? Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: const Icon(
                                Icons.info,
                                size: 10.0,
                                color: AppColors.red500Color,
                              ),
                            )
                          ],
                        ),
                        Expanded(
                            child: TextCustom(
                                text: "${widget.errorText}",
                                textFontSize: errorFontSize,
                                color: errorTextColor,
                                fontWeight: errorFontWeight))
                      ],
                    )
                  ],
                ),
              )
            : Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: widget.showPasswordStrengthSection == false
                    ? Container()
                    : Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    TextCustom(
                                      text: passwordStrengthText,
                                      textFontSize: AppDimens.fontSize12,
                                      color: passwordStrengthTextColor,
                                      fontWeight: FontWeight.w400,
                                      fontFamily:
                                          DepositsFontFamilies.SFProText,
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        PasswordStrength(
                                            color: passwordStrengthIconColorOne)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        PasswordStrength(
                                            color: passwordStrengthIconColorTwo)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        PasswordStrength(
                                            color:
                                                passwordStrengthIconColorThree)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        PasswordStrength(
                                            color:
                                                passwordStrengthIconColorFour)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
              ),
      ],
    );
    return result;
  }
}
