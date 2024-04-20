import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class DepositsFullBorderedToastNormal extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullBorderedToastNormal(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullBorderedToastNormalState createState() {
    return DepositsFullBorderedToastNormalState();
  }
}

class DepositsFullBorderedToastNormalState
    extends State<DepositsFullBorderedToastNormal> {
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
        descriptionColor: AppColors.neutral600Color,
        bgColor: AppColors.whiteColor,
        borderColor: AppColors.neutral200Color,
        iconColor: AppColors.neutral200Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullBorderedToastInfo extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullBorderedToastInfo(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullBorderedToastInfoState createState() {
    return DepositsFullBorderedToastInfoState();
  }
}

class DepositsFullBorderedToastInfoState
    extends State<DepositsFullBorderedToastInfo> {
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
        titleColor: AppColors.neutral700Color,
        descriptionColor: AppColors.neutral600Color,
        bgColor: AppColors.whiteColor,
        borderColor: AppColors.blue500Color,
        iconColor: AppColors.blue500Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullBorderedToastWarning extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullBorderedToastWarning(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullBorderedToastWarningState createState() {
    return DepositsFullBorderedToastWarningState();
  }
}

class DepositsFullBorderedToastWarningState
    extends State<DepositsFullBorderedToastWarning> {
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
        titleColor: AppColors.neutral700Color,
        descriptionColor: AppColors.neutral600Color,
        bgColor: AppColors.whiteColor,
        borderColor: AppColors.orange500Color,
        iconColor: AppColors.orange500Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullBorderedToastError extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullBorderedToastError(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullBorderedToastErrorState createState() {
    return DepositsFullBorderedToastErrorState();
  }
}

class DepositsFullBorderedToastErrorState
    extends State<DepositsFullBorderedToastError> {
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
        titleColor: AppColors.neutral700Color,
        descriptionColor: AppColors.neutral600Color,
        bgColor: AppColors.whiteColor,
        borderColor: AppColors.red500Color,
        iconColor: AppColors.red500Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsFullBorderedToastSuccess extends StatefulWidget {
  final String title;
  final String description;
  final Function? onTapped;

  const DepositsFullBorderedToastSuccess(
      {super.key,
      required this.title,
      required this.description,
      this.onTapped});

  @override
  DepositsFullBorderedToastSuccessState createState() {
    return DepositsFullBorderedToastSuccessState();
  }
}

class DepositsFullBorderedToastSuccessState
    extends State<DepositsFullBorderedToastSuccess> {
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
        titleColor: AppColors.neutral700Color,
        descriptionColor: AppColors.neutral600Color,
        bgColor: AppColors.whiteColor,
        borderColor: AppColors.green600Color,
        iconColor: AppColors.green600Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}
