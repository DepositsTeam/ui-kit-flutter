import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsToast extends StatefulWidget {
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

  const DepositsToast(
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
  DepositsToastState createState() {
    return DepositsToastState();
  }
}

class DepositsToastState extends State<DepositsToast> {
  DepositsToastStates toastState = DepositsToastStates.normal;

  bool visible = true;
  IconData icon = Icons.info;

  BoxBorder border = Border.all(width: 1.0);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      toastState = widget.toastState;
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
        border = Border.all(width: 1.0, color: widget.borderColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = GestureDetector(
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
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
                        ? Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Icon(
                                    icon,
                                    color: widget.iconColor,
                                    size: 14.0,
                                  ),
                                )
                              ],
                            ))
                        : Container(),
                    Expanded(
                        flex: 13,
                        child: Column(children: [
                          Row(
                            children: [
                              TextCustom(
                                  text: widget.title,
                                  textFontSize: AppDimens.fontSize14,
                                  color: widget.titleColor,
                                  fontWeight: FontWeight.w500)
                            ],
                          ),
                          widget.description != null && widget.description != ""
                              ? Container(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: TextCustom(
                                      text: "${widget.description}",
                                      textFontSize: AppDimens.fontSize14,
                                      color: widget.titleColor,
                                      fontFamily:
                                          DepositsFontFamilies.SFProDisplay,
                                      fontWeight: FontWeight.w400),
                                )
                              : Container()
                        ]))
                  ],
                )
              ],
            ),
          )),
    );
    return result;
  }
}
