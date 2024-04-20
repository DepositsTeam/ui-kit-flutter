import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class DepositsFullToastNormal extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullToastNormal(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullToastNormalState createState() {
    return DepositsFullToastNormalState();
  }
}

class DepositsFullToastNormalState extends State<DepositsFullToastNormal> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsToast(
        title: widget.title,
        description: widget.description,
        toastState: DepositsToastStates.normal,
        titleColor: AppColors.neutral700Color,
        bgColor: AppColors.neutral100Color,
        borderColor: AppColors.neutral200Color,
        iconColor: AppColors.neutral700Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullToastInfo extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullToastInfo(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullToastInfoState createState() {
    return DepositsFullToastInfoState();
  }
}

class DepositsFullToastInfoState extends State<DepositsFullToastInfo> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsToast(
        title: widget.title,
        description: widget.description,
        toastState: DepositsToastStates.info,
        titleColor: AppColors.whiteColor,
        bgColor: AppColors.blue500Color,
        borderColor: AppColors.blue500Color,
        iconColor: AppColors.whiteColor,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullToastWarning extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullToastWarning(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullToastWarningState createState() {
    return DepositsFullToastWarningState();
  }
}

class DepositsFullToastWarningState extends State<DepositsFullToastWarning> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsToast(
        title: widget.title,
        description: widget.description,
        toastState: DepositsToastStates.warning,
        titleColor: AppColors.blackColor,
        bgColor: AppColors.orange500Color,
        borderColor: AppColors.orange500Color,
        iconColor: AppColors.blackColor,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullToastError extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullToastError(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullToastErrorState createState() {
    return DepositsFullToastErrorState();
  }
}

class DepositsFullToastErrorState extends State<DepositsFullToastError> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsToast(
        title: widget.title,
        description: widget.description,
        toastState: DepositsToastStates.error,
        titleColor: AppColors.whiteColor,
        bgColor: AppColors.red500Color,
        borderColor: AppColors.red500Color,
        iconColor: AppColors.whiteColor,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullToastSuccess extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullToastSuccess(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullToastSuccessState createState() {
    return DepositsFullToastSuccessState();
  }
}

class DepositsFullToastSuccessState extends State<DepositsFullToastSuccess> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsToast(
        title: widget.title,
        description: widget.description,
        toastState: DepositsToastStates.success,
        titleColor: AppColors.whiteColor,
        bgColor: AppColors.green600Color,
        borderColor: AppColors.green600Color,
        iconColor: AppColors.whiteColor,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}
