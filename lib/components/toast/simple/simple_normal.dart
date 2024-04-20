import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class DepositsSimpleToastNormal extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleToastNormal(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleToastNormalState createState() {
    return DepositsSimpleToastNormalState();
  }
}

class DepositsSimpleToastNormalState extends State<DepositsSimpleToastNormal> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsToast(
        title: widget.title,
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

class DepositsSimpleToastInfo extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleToastInfo(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleToastInfoState createState() {
    return DepositsSimpleToastInfoState();
  }
}

class DepositsSimpleToastInfoState extends State<DepositsSimpleToastInfo> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsToast(
        title: widget.title,
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

class DepositsSimpleToastWarning extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleToastWarning(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleToastWarningState createState() {
    return DepositsSimpleToastWarningState();
  }
}

class DepositsSimpleToastWarningState
    extends State<DepositsSimpleToastWarning> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsToast(
        title: widget.title,
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

class DepositsSimpleToastError extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleToastError(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleToastErrorState createState() {
    return DepositsSimpleToastErrorState();
  }
}

class DepositsSimpleToastErrorState extends State<DepositsSimpleToastError> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsToast(
        title: widget.title,
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

class DepositsSimpleToastSuccess extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleToastSuccess(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleToastSuccessState createState() {
    return DepositsSimpleToastSuccessState();
  }
}

class DepositsSimpleToastSuccessState
    extends State<DepositsSimpleToastSuccess> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsToast(
        title: widget.title,
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
