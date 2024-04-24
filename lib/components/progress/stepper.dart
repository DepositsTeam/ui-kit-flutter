import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsStepper extends StatefulWidget {
  final String title;
  final Color titleColor;
  final int currentStep;
  final int totalSteps;
  final Color stepTextColor;
  final Color stepColor;
  final Color stepActiveColor;
  final double maxWidth;

  const DepositsStepper({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.currentStep,
    required this.totalSteps,
    this.stepTextColor = AppColors.neutral500Color,
    this.stepColor = AppColors.neutral300Color,
    this.stepActiveColor = AppColors.primaryColor,
    this.maxWidth = 300.0,
  });

  @override
  DepositsStepperState createState() {
    return DepositsStepperState();
  }
}

class DepositsStepperState extends State<DepositsStepper> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double stepPercent = widget.currentStep / widget.totalSteps;
    Widget result = Column(
      children: [
        Row(
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: stepPercent,
                backgroundColor: widget.stepColor,
                valueColor: AlwaysStoppedAnimation<Color>(
                  widget.stepActiveColor,
                ),
                borderRadius: BorderRadius.circular(30.0),
                minHeight: 6.0,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: TextCustom(
                  text: "Step ${widget.currentStep} of ${widget.totalSteps}",
                  textFontSize: AppDimens.fontSize14,
                  color: widget.stepTextColor,
                  fontWeight: FontWeight.w400,
                  fontFamily: DepositsFontFamilies.SFProText),
            ),
          ],
        ),
        Row(
          children: [
            TextCustom(
              text: widget.title,
              textFontSize: AppDimens.fontSize16,
              color: widget.titleColor,
              fontWeight: FontWeight.w600,
              fontFamily: DepositsFontFamilies.SFProDisplay,
            ),
          ],
        ),
      ],
    );
    return result;
  }
}
