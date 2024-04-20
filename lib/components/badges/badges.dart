import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsBadge extends StatefulWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final double fontSize;

  const DepositsBadge({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
    this.fontSize = AppDimens.fontSize12,
  });

  @override
  DepositsBadgeState createState() {
    return DepositsBadgeState();
  }
}

class DepositsBadgeState extends State<DepositsBadge> {
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
    Widget result = Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      decoration: BoxDecoration(
          color: widget.bgColor, borderRadius: BorderRadius.circular(18.0)),
      child: TextCustom(
          text: widget.text,
          textFontSize: widget.fontSize,
          color: widget.textColor,
          fontWeight: FontWeight.w400),
    );
    return result;
  }
}

class DepositsSubtleBadgeNeutral extends StatefulWidget {
  final String text;

  const DepositsSubtleBadgeNeutral({super.key, required this.text});

  @override
  DepositsSubtleBadgeNeutralState createState() {
    return DepositsSubtleBadgeNeutralState();
  }
}

class DepositsSubtleBadgeNeutralState
    extends State<DepositsSubtleBadgeNeutral> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.neutral200Color,
        textColor: AppColors.neutral700Color);
    return result;
  }
}

class DepositsSubtleBadgeGreen extends StatefulWidget {
  final String text;

  const DepositsSubtleBadgeGreen({super.key, required this.text});

  @override
  DepositsSubtleBadgeGreenState createState() {
    return DepositsSubtleBadgeGreenState();
  }
}

class DepositsSubtleBadgeGreenState extends State<DepositsSubtleBadgeGreen> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.green200Color,
        textColor: AppColors.green800Color);
    return result;
  }
}

class DepositsSubtleBadgeRed extends StatefulWidget {
  final String text;

  const DepositsSubtleBadgeRed({super.key, required this.text});

  @override
  DepositsSubtleBadgeRedState createState() {
    return DepositsSubtleBadgeRedState();
  }
}

class DepositsSubtleBadgeRedState extends State<DepositsSubtleBadgeRed> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.red200Color,
        textColor: AppColors.red600Color);
    return result;
  }
}

class DepositsSubtleBadgeYellow extends StatefulWidget {
  final String text;

  const DepositsSubtleBadgeYellow({super.key, required this.text});

  @override
  DepositsSubtleBadgeYellowState createState() {
    return DepositsSubtleBadgeYellowState();
  }
}

class DepositsSubtleBadgeYellowState extends State<DepositsSubtleBadgeYellow> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.orange200Color,
        textColor: AppColors.orange900Color);
    return result;
  }
}

class DepositsSubtleBadgeCyan extends StatefulWidget {
  final String text;

  const DepositsSubtleBadgeCyan({super.key, required this.text});

  @override
  DepositsSubtleBadgeCyanState createState() {
    return DepositsSubtleBadgeCyanState();
  }
}

class DepositsSubtleBadgeCyanState extends State<DepositsSubtleBadgeCyan> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.cyan200Color,
        textColor: AppColors.cyan800Color);
    return result;
  }
}

class DepositsSubtleBadgeBlue extends StatefulWidget {
  final String text;

  const DepositsSubtleBadgeBlue({super.key, required this.text});

  @override
  DepositsSubtleBadgeBlueState createState() {
    return DepositsSubtleBadgeBlueState();
  }
}

class DepositsSubtleBadgeBlueState extends State<DepositsSubtleBadgeBlue> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.blue200Color,
        textColor: AppColors.blue700Color);
    return result;
  }
}

class DepositsSolidBadgeNeutral extends StatefulWidget {
  final String text;

  const DepositsSolidBadgeNeutral({super.key, required this.text});

  @override
  DepositsSolidBadgeNeutralState createState() {
    return DepositsSolidBadgeNeutralState();
  }
}

class DepositsSolidBadgeNeutralState extends State<DepositsSolidBadgeNeutral> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.neutral500Color,
        textColor: AppColors.whiteColor);
    return result;
  }
}

class DepositsSolidBadgeGreen extends StatefulWidget {
  final String text;

  const DepositsSolidBadgeGreen({super.key, required this.text});

  @override
  DepositsSolidBadgeGreenState createState() {
    return DepositsSolidBadgeGreenState();
  }
}

class DepositsSolidBadgeGreenState extends State<DepositsSolidBadgeGreen> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.green600Color,
        textColor: AppColors.whiteColor);
    return result;
  }
}

class DepositsSolidBadgeRed extends StatefulWidget {
  final String text;

  const DepositsSolidBadgeRed({super.key, required this.text});

  @override
  DepositsSolidBadgeRedState createState() {
    return DepositsSolidBadgeRedState();
  }
}

class DepositsSolidBadgeRedState extends State<DepositsSolidBadgeRed> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.red500Color,
        textColor: AppColors.whiteColor);
    return result;
  }
}

class DepositsSolidBadgeYellow extends StatefulWidget {
  final String text;

  const DepositsSolidBadgeYellow({super.key, required this.text});

  @override
  DepositsSolidBadgeYellowState createState() {
    return DepositsSolidBadgeYellowState();
  }
}

class DepositsSolidBadgeYellowState extends State<DepositsSolidBadgeYellow> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.orange600Color,
        textColor: AppColors.whiteColor);
    return result;
  }
}

class DepositsSolidBadgeCyan extends StatefulWidget {
  final String text;

  const DepositsSolidBadgeCyan({super.key, required this.text});

  @override
  DepositsSolidBadgeCyanState createState() {
    return DepositsSolidBadgeCyanState();
  }
}

class DepositsSolidBadgeCyanState extends State<DepositsSolidBadgeCyan> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.cyan600Color,
        textColor: AppColors.whiteColor);
    return result;
  }
}

class DepositsSolidBadgeBlue extends StatefulWidget {
  final String text;

  const DepositsSolidBadgeBlue({super.key, required this.text});

  @override
  DepositsSolidBadgeBlueState createState() {
    return DepositsSolidBadgeBlueState();
  }
}

class DepositsSolidBadgeBlueState extends State<DepositsSolidBadgeBlue> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.blue500Color,
        textColor: AppColors.whiteColor);
    return result;
  }
}

class DepositsPaymentSuccessBadge extends StatefulWidget {
  final String text;

  const DepositsPaymentSuccessBadge({super.key, this.text = "success"});

  @override
  DepositsPaymentSuccessBadgeState createState() {
    return DepositsPaymentSuccessBadgeState();
  }
}

class DepositsPaymentSuccessBadgeState
    extends State<DepositsPaymentSuccessBadge> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.success200Color,
        textColor: AppColors.success300Color);
    return result;
  }
}

class DepositsPaymentPendingBadge extends StatefulWidget {
  final String text;

  const DepositsPaymentPendingBadge({super.key, this.text = "Pending"});

  @override
  DepositsPaymentPendingBadgeState createState() {
    return DepositsPaymentPendingBadgeState();
  }
}

class DepositsPaymentPendingBadgeState
    extends State<DepositsPaymentPendingBadge> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.caution200Color,
        textColor: AppColors.caution300Color);
    return result;
  }
}

class DepositsPaymentCancelledBadge extends StatefulWidget {
  final String text;

  const DepositsPaymentCancelledBadge({super.key, this.text = "Canceled"});

  @override
  DepositsPaymentCancelledBadgeState createState() {
    return DepositsPaymentCancelledBadgeState();
  }
}

class DepositsPaymentCancelledBadgeState
    extends State<DepositsPaymentCancelledBadge> {
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
    Widget result = DepositsBadge(
        text: widget.text,
        bgColor: AppColors.error200Color,
        textColor: AppColors.error300Color);
    return result;
  }
}
