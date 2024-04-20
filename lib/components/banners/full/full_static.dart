import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class DepositsFullStaticBannerNormal extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullStaticBannerNormal(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullStaticBannerNormalState createState() {
    return DepositsFullStaticBannerNormalState();
  }
}

class DepositsFullStaticBannerNormalState
    extends State<DepositsFullStaticBannerNormal> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsBanner(
        title: widget.title,
        description: widget.description,
        toastState: DepositsToastStates.normal,
        titleColor: AppColors.neutral700Color,
        descriptionColor: AppColors.neutral700Color,
        bgColor: AppColors.neutral100Color,
        borderColor: AppColors.neutral100Color,
        iconColor: AppColors.neutral700Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullStaticBannerInfo extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullStaticBannerInfo(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullStaticBannerInfoState createState() {
    return DepositsFullStaticBannerInfoState();
  }
}

class DepositsFullStaticBannerInfoState
    extends State<DepositsFullStaticBannerInfo> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsBanner(
        title: widget.title,
        description: widget.description,
        toastState: DepositsToastStates.info,
        titleColor: AppColors.blue900Color,
        descriptionColor: AppColors.neutral700Color,
        bgColor: AppColors.info100Color,
        borderColor: AppColors.info100Color,
        iconColor: AppColors.blue500Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullStaticBannerWarning extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullStaticBannerWarning(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullStaticBannerWarningState createState() {
    return DepositsFullStaticBannerWarningState();
  }
}

class DepositsFullStaticBannerWarningState
    extends State<DepositsFullStaticBannerWarning> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsBanner(
        title: widget.title,
        description: widget.description,
        toastState: DepositsToastStates.warning,
        titleColor: AppColors.orange800Color,
        descriptionColor: AppColors.neutral700Color,
        bgColor: AppColors.caution100Color,
        borderColor: AppColors.caution100Color,
        iconColor: AppColors.orange800Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullStaticBannerError extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullStaticBannerError(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullStaticBannerErrorState createState() {
    return DepositsFullStaticBannerErrorState();
  }
}

class DepositsFullStaticBannerErrorState
    extends State<DepositsFullStaticBannerError> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsBanner(
        title: widget.title,
        description: widget.description,
        toastState: DepositsToastStates.error,
        titleColor: AppColors.orange900Color,
        descriptionColor: AppColors.neutral700Color,
        bgColor: AppColors.danger100Color,
        borderColor: AppColors.danger100Color,
        iconColor: AppColors.red500Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullStaticBannerSuccess extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullStaticBannerSuccess(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullStaticBannerSuccessState createState() {
    return DepositsFullStaticBannerSuccessState();
  }
}

class DepositsFullStaticBannerSuccessState
    extends State<DepositsFullStaticBannerSuccess> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsBanner(
        title: widget.title,
        description: widget.description,
        toastState: DepositsToastStates.success,
        titleColor: AppColors.green900Color,
        descriptionColor: AppColors.neutral700Color,
        bgColor: AppColors.success100Color,
        borderColor: AppColors.success100Color,
        iconColor: AppColors.green600Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}
