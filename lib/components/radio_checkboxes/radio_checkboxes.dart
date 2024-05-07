import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsRadio extends StatefulWidget {
  final String title;
  final String? errorText;
  final DepositsRadioFormState formState;
  final Color titleColor;
  final Color selectedColor;
  final Function onTapped;

  const DepositsRadio(
      {super.key,
      required this.title,
      this.errorText,
      this.formState = DepositsRadioFormState.normal,
      this.titleColor = AppColors.neutral700Color,
      this.selectedColor = AppColors.primaryColor,
      required this.onTapped});

  @override
  DepositsRadioState createState() {
    return DepositsRadioState();
  }
}

class DepositsRadioState extends State<DepositsRadio> {
  DepositsRadioFormState formState = DepositsRadioFormState.normal;
  var outerRingColor = AppColors.neutral100Color;
  var outerRingBorderColor = AppColors.neutral300Color;
  var innerRingColor = AppColors.neutral100Color;
  var titleColor = AppColors.neutral700Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        resetValues();
      });
    });
  }

  resetValues() {
    titleColor = widget.titleColor;
    if (formState == DepositsRadioFormState.active) {
      innerRingColor = AppColors.whiteColor;
      outerRingColor = AppColors.primaryColor;
      outerRingBorderColor = outerRingColor;
    } else if (formState == DepositsRadioFormState.activeDisabled) {
      innerRingColor = AppColors.whiteColor;
      outerRingColor = AppColors.blue200Color;
      outerRingBorderColor = outerRingColor;

      titleColor = AppColors.neutral500Color;
    } else if (formState == DepositsRadioFormState.disabled) {
      innerRingColor = AppColors.neutral100Color;
      outerRingColor = AppColors.neutral100Color;
      outerRingBorderColor = const Color.fromRGBO(0, 0, 0, 0.04);

      titleColor = AppColors.neutral500Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = GestureDetector(
      onTap: () {
        if (formState == DepositsRadioFormState.normal ||
            formState == DepositsRadioFormState.active) {
          setState(() {
            formState = DepositsRadioFormState.active;
            resetValues();
          });
        }
        widget.onTapped();
      },
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 16.0,
                    height: 16.0,
                    decoration: BoxDecoration(
                      color: outerRingColor,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 1.0,
                        color: outerRingBorderColor,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: 6.0,
                        height: 6.0,
                        decoration: BoxDecoration(
                          color: innerRingColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextCustom(
                        text: widget.title,
                        textFontSize: AppDimens.fontSize14,
                        color: titleColor,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
    return result;
  }
}

class DepositsCheckbox extends StatefulWidget {
  final String title;
  final String? errorText;
  final DepositsCheckboxFormState formState;
  final Color titleColor;
  final Color selectedColor;
  final Function onTapped;

  const DepositsCheckbox(
      {super.key,
      required this.title,
      this.errorText,
      this.formState = DepositsCheckboxFormState.normal,
      this.titleColor = AppColors.neutral700Color,
      this.selectedColor = AppColors.primaryColor,
      required this.onTapped});

  @override
  DepositsCheckboxState createState() {
    return DepositsCheckboxState();
  }
}

class DepositsCheckboxState extends State<DepositsCheckbox> {
  DepositsCheckboxFormState formState = DepositsCheckboxFormState.normal;
  var outerRingColor = AppColors.neutral100Color;
  var outerRingBorderColor = AppColors.neutral300Color;
  var innerRingColor = AppColors.neutral100Color;
  var titleColor = AppColors.neutral700Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        resetValues();
      });
    });
  }

  resetValues() {
    titleColor = widget.titleColor;
    if (formState == DepositsCheckboxFormState.active) {
      innerRingColor = AppColors.whiteColor;
      outerRingColor = widget.selectedColor;
      outerRingBorderColor = widget.selectedColor;
    } else if (formState == DepositsCheckboxFormState.activeDisabled) {
      innerRingColor = AppColors.whiteColor;
      outerRingColor = AppColors.blue200Color;
      outerRingBorderColor = outerRingColor;

      titleColor = AppColors.neutral500Color;
    } else if (formState == DepositsCheckboxFormState.disabled) {
      innerRingColor = AppColors.neutral100Color;
      outerRingColor = AppColors.neutral100Color;
      outerRingBorderColor = const Color.fromRGBO(0, 0, 0, 0.04);

      titleColor = AppColors.neutral500Color;
    } else {
      innerRingColor = AppColors.neutral100Color;
      outerRingColor = AppColors.neutral100Color;
      outerRingBorderColor = AppColors.neutral300Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = GestureDetector(
      onTap: () {
        if (formState == DepositsCheckboxFormState.normal) {
          setState(() {
            formState = DepositsCheckboxFormState.active;
            resetValues();
          });
        } else if (formState == DepositsCheckboxFormState.active) {
          setState(() {
            formState = DepositsCheckboxFormState.normal;
            resetValues();
          });
        }
        widget.onTapped();
      },
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 16.0,
                    height: 16.0,
                    decoration: BoxDecoration(
                      color: outerRingColor,
                      borderRadius: BorderRadius.circular(2.0),
                      border: Border.all(
                        width: 1.0,
                        color: outerRingBorderColor,
                      ),
                    ),
                    child: Center(
                      child: formState == DepositsCheckboxFormState.normal
                          ? Container()
                          : const Icon(
                              Icons.check_rounded,
                              size: 10.0,
                              color: AppColors.whiteColor,
                            ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextCustom(
                        text: widget.title,
                        textFontSize: AppDimens.fontSize14,
                        color: titleColor,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
    return result;
  }
}

class DepositsIndeterminant extends StatefulWidget {
  final String title;
  final String? errorText;
  final DepositsIndeterminantFormState formState;
  final Color titleColor;
  final Color selectedColor;
  final Function onTapped;

  const DepositsIndeterminant(
      {super.key,
      required this.title,
      this.errorText,
      this.formState = DepositsIndeterminantFormState.normal,
      this.titleColor = AppColors.neutral700Color,
      this.selectedColor = AppColors.primaryColor,
      required this.onTapped});

  @override
  DepositsIndeterminantState createState() {
    return DepositsIndeterminantState();
  }
}

class DepositsIndeterminantState extends State<DepositsIndeterminant> {
  DepositsIndeterminantFormState formState =
      DepositsIndeterminantFormState.normal;
  var outerRingColor = AppColors.neutral100Color;
  var outerRingBorderColor = AppColors.neutral300Color;
  var innerRingColor = AppColors.neutral100Color;
  var titleColor = AppColors.neutral700Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        resetValues();
      });
    });
  }

  resetValues() {
    titleColor = widget.titleColor;
    if (formState == DepositsIndeterminantFormState.active) {
      innerRingColor = AppColors.whiteColor;
      outerRingColor = AppColors.primaryColor;
      outerRingBorderColor = outerRingColor;
    } else if (formState == DepositsIndeterminantFormState.activeDisabled) {
      innerRingColor = AppColors.whiteColor;
      outerRingColor = AppColors.blue200Color;
      outerRingBorderColor = outerRingColor;

      titleColor = AppColors.neutral500Color;
    } else if (formState == DepositsIndeterminantFormState.disabled) {
      innerRingColor = AppColors.neutral100Color;
      outerRingColor = AppColors.neutral100Color;
      outerRingBorderColor = const Color.fromRGBO(0, 0, 0, 0.04);

      titleColor = AppColors.neutral500Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = GestureDetector(
      onTap: () {
        if (formState == DepositsIndeterminantFormState.normal ||
            formState == DepositsIndeterminantFormState.active) {
          setState(() {
            formState = DepositsIndeterminantFormState.active;
            resetValues();
          });
        }
        widget.onTapped;
      },
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 16.0,
                    height: 16.0,
                    decoration: BoxDecoration(
                        color: outerRingColor,
                        borderRadius: BorderRadius.circular(2.0),
                        border: Border.all(
                            width: 1.0, color: outerRingBorderColor)),
                    child: const Center(
                      child: Icon(
                        Icons.remove,
                        size: 10.0,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextCustom(
                        text: widget.title,
                        textFontSize: AppDimens.fontSize14,
                        color: titleColor,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
    return result;
  }
}
