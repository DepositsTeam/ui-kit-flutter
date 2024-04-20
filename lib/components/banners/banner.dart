import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsBanner extends StatefulWidget {
  final String title;
  final String? description;
  final DepositsToastStates toastState;
  final Color titleColor;
  final Color? descriptionColor;
  final Color bgColor;
  final Color borderColor;
  final Color iconColor;
  final bool? showCloseButton;
  final bool? closeOnTap;
  final Function? onTapped;

  const DepositsBanner(
      {super.key,
      required this.title,
      this.description,
      required this.toastState,
      required this.titleColor,
      this.descriptionColor,
      required this.bgColor,
      required this.borderColor,
      required this.iconColor,
      this.showCloseButton = false,
      this.closeOnTap = false,
      required this.onTapped});

  @override
  DepositsBannerState createState() {
    return DepositsBannerState();
  }
}

class DepositsBannerState extends State<DepositsBanner> {
  DepositsToastStates toastState = DepositsToastStates.normal;

  bool visible = true;
  IconData icon = Icons.info;
  Color closeIconColor = AppColors.neutral700Color;
  Color descriptionColor = AppColors.blackColor;

  BoxBorder border = Border.all(width: 1.0);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      toastState = widget.toastState;
      if (widget.descriptionColor != null) {
        descriptionColor = widget.descriptionColor!;
      }
      setState(() {
        setToastStateIcon();
      });
    });
  }

  setToastStateIcon() {
    border = Border(
      top: BorderSide(width: 1.0, color: widget.borderColor),
      right: BorderSide(width: 1.0, color: widget.borderColor),
      bottom: BorderSide(width: 1.0, color: widget.borderColor),
      left: BorderSide(width: 4.0, color: widget.borderColor),
    );

    switch (widget.toastState) {
      case DepositsToastStates.info:
        icon = Icons.info;
        break;
      case DepositsToastStates.warning:
        icon = Icons.warning_rounded;
        break;
      case DepositsToastStates.error:
        icon = Icons.error;
        break;
      case DepositsToastStates.success:
        icon = Icons.check_circle;
        break;
      default:
        closeIconColor = AppColors.neutral500Color;
        border = Border.all(width: 1.0, color: widget.borderColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (visible == true) {
                visible = false;
              } else {
                visible = true;
              }
            });
            widget.onTapped;
          },
          child: Visibility(
              visible: visible,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                decoration: BoxDecoration(
                    color: widget.bgColor,
                    borderRadius: BorderRadius.circular(4.0),
                    border: border),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        toastState != DepositsToastStates.normal
                            ? Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        right: 4.0, top: 2.0),
                                    child: Icon(
                                      icon,
                                      color: widget.iconColor,
                                      size: 14.0,
                                    ),
                                  )
                                ],
                              )
                            : Container(),
                        Row(
                          children: [
                            TextCustom(
                                text: widget.title,
                                textFontSize: AppDimens.fontSize14,
                                color: widget.titleColor,
                                fontWeight: FontWeight.w500)
                          ],
                        ),
                        Row(
                          children: [
                            widget.description != null &&
                                    widget.description != ""
                                ? Container(
                                    constraints: BoxConstraints(
                                        maxWidth:
                                            (MediaQuery.of(context).size.width *
                                                    0.7) -
                                                2),
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 7.0),
                                    child: AutoTextCustom(
                                        text: "${widget.description}",
                                        textFontSize: AppDimens.fontSize14,
                                        color: descriptionColor,
                                        fontWeight: FontWeight.w400),
                                  )
                                : Container()
                          ],
                        ),
                        widget.showCloseButton == true
                            ? Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(top: 2.0),
                                    child: Icon(
                                      Icons.close,
                                      color: closeIconColor,
                                      size: 14.0,
                                    ),
                                  )
                                ],
                              )
                            : Container(),
                      ],
                    )
                  ],
                ),
              )),
        )
      ],
    );
    return result;
  }
}
