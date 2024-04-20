import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class DepositsSimpleRemovableBannerNormal extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleRemovableBannerNormal(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleRemovableBannerNormalState createState() {
    return DepositsSimpleRemovableBannerNormalState();
  }
}

class DepositsSimpleRemovableBannerNormalState
    extends State<DepositsSimpleRemovableBannerNormal> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsBanner(
        title: widget.title,
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

class DepositsSimpleRemovableBannerInfo extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleRemovableBannerInfo(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleRemovableBannerInfoState createState() {
    return DepositsSimpleRemovableBannerInfoState();
  }
}

class DepositsSimpleRemovableBannerInfoState
    extends State<DepositsSimpleRemovableBannerInfo> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsBanner(
        title: widget.title,
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

class DepositsSimpleRemovableBannerWarning extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleRemovableBannerWarning(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleRemovableBannerWarningState createState() {
    return DepositsSimpleRemovableBannerWarningState();
  }
}

class DepositsSimpleRemovableBannerWarningState
    extends State<DepositsSimpleRemovableBannerWarning> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsBanner(
        title: widget.title,
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

class DepositsSimpleRemovableBannerError extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleRemovableBannerError(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleRemovableBannerErrorState createState() {
    return DepositsSimpleRemovableBannerErrorState();
  }
}

class DepositsSimpleRemovableBannerErrorState
    extends State<DepositsSimpleRemovableBannerError> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsBanner(
        title: widget.title,
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

class DepositsSimpleRemovableBannerSuccess extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleRemovableBannerSuccess(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleRemovableBannerSuccessState createState() {
    return DepositsSimpleRemovableBannerSuccessState();
  }
}

class DepositsSimpleRemovableBannerSuccessState
    extends State<DepositsSimpleRemovableBannerSuccess> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    Widget result = DepositsBanner(
        title: widget.title,
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
