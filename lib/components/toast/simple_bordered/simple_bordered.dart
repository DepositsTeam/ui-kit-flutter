import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class DepositsSimpleBorderedToastNormal extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleBorderedToastNormal(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleBorderedToastNormalState createState() {
    return DepositsSimpleBorderedToastNormalState();
  }
}

class DepositsSimpleBorderedToastNormalState
    extends State<DepositsSimpleBorderedToastNormal> {
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
        bgColor: AppColors.whiteColor,
        borderColor: AppColors.neutral200Color,
        iconColor: AppColors.neutral200Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsSimpleBorderedToastInfo extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleBorderedToastInfo(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleBorderedToastInfoState createState() {
    return DepositsSimpleBorderedToastInfoState();
  }
}

class DepositsSimpleBorderedToastInfoState
    extends State<DepositsSimpleBorderedToastInfo> {
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
        titleColor: AppColors.neutral700Color,
        bgColor: AppColors.whiteColor,
        borderColor: AppColors.blue500Color,
        iconColor: AppColors.blue500Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsSimpleBorderedToastWarning extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleBorderedToastWarning(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleBorderedToastWarningState createState() {
    return DepositsSimpleBorderedToastWarningState();
  }
}

class DepositsSimpleBorderedToastWarningState
    extends State<DepositsSimpleBorderedToastWarning> {
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
        titleColor: AppColors.neutral700Color,
        bgColor: AppColors.whiteColor,
        borderColor: AppColors.orange500Color,
        iconColor: AppColors.orange500Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsSimpleBorderedToastError extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleBorderedToastError(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleBorderedToastErrorState createState() {
    return DepositsSimpleBorderedToastErrorState();
  }
}

class DepositsSimpleBorderedToastErrorState
    extends State<DepositsSimpleBorderedToastError> {
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
        titleColor: AppColors.neutral700Color,
        bgColor: AppColors.whiteColor,
        borderColor: AppColors.red500Color,
        iconColor: AppColors.red500Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsSimpleBorderedToastSuccess extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleBorderedToastSuccess(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleBorderedToastSuccessState createState() {
    return DepositsSimpleBorderedToastSuccessState();
  }
}

class DepositsSimpleBorderedToastSuccessState
    extends State<DepositsSimpleBorderedToastSuccess> {
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
        titleColor: AppColors.neutral700Color,
        bgColor: AppColors.whiteColor,
        borderColor: AppColors.green600Color,
        iconColor: AppColors.green600Color,
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}
