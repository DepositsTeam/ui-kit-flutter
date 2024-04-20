import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class DepositsFullRemovableBannerNormal extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullRemovableBannerNormal(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullRemovableBannerNormalState createState() {
    return DepositsFullRemovableBannerNormalState();
  }
}

class DepositsFullRemovableBannerNormalState
    extends State<DepositsFullRemovableBannerNormal> {
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
        showCloseButton: true,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullRemovableBannerInfo extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullRemovableBannerInfo(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullRemovableBannerInfoState createState() {
    return DepositsFullRemovableBannerInfoState();
  }
}

class DepositsFullRemovableBannerInfoState
    extends State<DepositsFullRemovableBannerInfo> {
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
        showCloseButton: true,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullRemovableBannerWarning extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullRemovableBannerWarning(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullRemovableBannerWarningState createState() {
    return DepositsFullRemovableBannerWarningState();
  }
}

class DepositsFullRemovableBannerWarningState
    extends State<DepositsFullRemovableBannerWarning> {
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
        showCloseButton: true,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullRemovableBannerError extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullRemovableBannerError(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullRemovableBannerErrorState createState() {
    return DepositsFullRemovableBannerErrorState();
  }
}

class DepositsFullRemovableBannerErrorState
    extends State<DepositsFullRemovableBannerError> {
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
        showCloseButton: true,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullRemovableBannerSuccess extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullRemovableBannerSuccess(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullRemovableBannerSuccessState createState() {
    return DepositsFullRemovableBannerSuccessState();
  }
}

class DepositsFullRemovableBannerSuccessState
    extends State<DepositsFullRemovableBannerSuccess> {
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
        showCloseButton: true,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}
