import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class DepositsSimpleStaticBannerNormal extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleStaticBannerNormal(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleStaticBannerNormalState createState() {
    return DepositsSimpleStaticBannerNormalState();
  }
}

class DepositsSimpleStaticBannerNormalState
    extends State<DepositsSimpleStaticBannerNormal> {
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
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsSimpleStaticBannerInfo extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleStaticBannerInfo(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleStaticBannerInfoState createState() {
    return DepositsSimpleStaticBannerInfoState();
  }
}

class DepositsSimpleStaticBannerInfoState
    extends State<DepositsSimpleStaticBannerInfo> {
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
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsSimpleStaticBannerWarning extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleStaticBannerWarning(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleStaticBannerWarningState createState() {
    return DepositsSimpleStaticBannerWarningState();
  }
}

class DepositsSimpleStaticBannerWarningState
    extends State<DepositsSimpleStaticBannerWarning> {
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
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsSimpleStaticBannerError extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleStaticBannerError(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleStaticBannerErrorState createState() {
    return DepositsSimpleStaticBannerErrorState();
  }
}

class DepositsSimpleStaticBannerErrorState
    extends State<DepositsSimpleStaticBannerError> {
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
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}

class DepositsSimpleStaticBannerSuccess extends StatefulWidget {
  final String title;
  final Function? onTapped;

  const DepositsSimpleStaticBannerSuccess(
      {super.key, required this.title, this.onTapped});

  @override
  DepositsSimpleStaticBannerSuccessState createState() {
    return DepositsSimpleStaticBannerSuccessState();
  }
}

class DepositsSimpleStaticBannerSuccessState
    extends State<DepositsSimpleStaticBannerSuccess> {
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
        onTapped: () {
          widget.onTapped;
        });
    return result;
  }
}
