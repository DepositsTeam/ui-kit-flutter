import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class AlertsIosWidget extends StatefulWidget {
  final String title;
  final String description;
  final Widget actions;
  final Function onTapped;

  const AlertsIosWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.actions,
      required this.onTapped});

  @override
  AlertsIosWidgetState createState() {
    return AlertsIosWidgetState();
  }
}

class AlertsIosWidgetState extends State<AlertsIosWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Container(
      width: MediaQuery.of(context).size.width * 0.7,
      constraints: const BoxConstraints(maxWidth: 500.0),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(width: 0.5, color: AppColors.neutral400Color),
          borderRadius: BorderRadius.circular(14.0)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
                child: TextCustom(
                  text: widget.title,
                  textFontSize: AppDimens.fontSize17,
                  color: AppColors.neutral700Color,
                  fontWeight: FontWeight.w600,
                  fontFamily: DepositsFontFamilies.SFProText,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 15.0),
                constraints: BoxConstraints(
                  maxWidth: (MediaQuery.of(context).size.width * 0.7) - 2,
                ),
                child: TextCustom(
                  text: widget.description,
                  textFontSize: AppDimens.fontSize13,
                  color: AppColors.neutral700Color,
                  fontWeight: FontWeight.w400,
                  fontFamily: DepositsFontFamilies.SFProText,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(
                        width: 0.5, color: AppColors.neutral300Color))),
            child: Column(
              children: [widget.actions],
            ),
          )
        ],
      ),
    );
    return result;
  }
}

class AlertsIosSingleActionWidget extends StatefulWidget {
  final String title;
  final String description;
  final String actionText;
  final Function onActionTapped;

  const AlertsIosSingleActionWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.actionText,
      required this.onActionTapped});

  @override
  AlertsIosSingleActionWidgetState createState() {
    return AlertsIosSingleActionWidgetState();
  }
}

class AlertsIosSingleActionWidgetState
    extends State<AlertsIosSingleActionWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget actions = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            widget.onActionTapped();
          },
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: TextCustom(
              text: widget.actionText,
              textFontSize: AppDimens.fontSize17,
              color: AppColors.secondaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
    Widget result = AlertsIosWidget(
        title: widget.title,
        description: widget.description,
        actions: actions,
        onTapped: () {});
    return result;
  }
}

class AlertsIosDoubleActionWidget extends StatefulWidget {
  final String title;
  final String description;
  final String actionTextLeft;
  final String actionTextRight;
  final Function onLeftActionTapped;
  final Function onRightActionTapped;

  const AlertsIosDoubleActionWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.actionTextLeft,
      required this.actionTextRight,
      required this.onLeftActionTapped,
      required this.onRightActionTapped});

  @override
  AlertsIosDoubleActionWidgetState createState() {
    return AlertsIosDoubleActionWidgetState();
  }
}

class AlertsIosDoubleActionWidgetState
    extends State<AlertsIosDoubleActionWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget actions = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                widget.onLeftActionTapped();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: TextCustom(
                  text: widget.actionTextLeft,
                  textFontSize: AppDimens.fontSize17,
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        )),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                widget.onRightActionTapped();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: TextCustom(
                  text: widget.actionTextRight,
                  textFontSize: AppDimens.fontSize17,
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ))
      ],
    );
    Widget result = AlertsIosWidget(
        title: widget.title,
        description: widget.description,
        actions: actions,
        onTapped: () {});
    return result;
  }
}

class AlertsIosDoubleActionVerticalWidget extends StatefulWidget {
  final String title;
  final String description;
  final String actionTextTop;
  final String actionTextBottom;
  final Function onTopActionTapped;
  final Function onBottomActionTapped;

  const AlertsIosDoubleActionVerticalWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.actionTextTop,
      required this.actionTextBottom,
      required this.onTopActionTapped,
      required this.onBottomActionTapped});

  @override
  AlertsIosDoubleActionVerticalWidgetState createState() {
    return AlertsIosDoubleActionVerticalWidgetState();
  }
}

class AlertsIosDoubleActionVerticalWidgetState
    extends State<AlertsIosDoubleActionVerticalWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget actions = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: GestureDetector(
              onTap: () {
                widget.onTopActionTapped();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: TextCustom(
                      text: widget.actionTextTop,
                      textFontSize: AppDimens.fontSize17,
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                width: 0.5, color: AppColors.neutral400Color))),
                    child: GestureDetector(
                      onTap: () {
                        widget.onBottomActionTapped();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: TextCustom(
                              text: widget.actionTextBottom,
                              textFontSize: AppDimens.fontSize17,
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    )))
          ],
        )
      ],
    );
    Widget result = AlertsIosWidget(
        title: widget.title,
        description: widget.description,
        actions: actions,
        onTapped: () {});
    return result;
  }
}

class AlertsIosTripleActionVerticalWidget extends StatefulWidget {
  final String title;
  final String description;
  final String actionTextTop;
  final String actionTextMiddle;
  final String actionTextBottom;
  final Function onTopActionTapped;
  final Function onMiddleActionTapped;
  final Function onBottomActionTapped;

  const AlertsIosTripleActionVerticalWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.actionTextTop,
      required this.actionTextMiddle,
      required this.actionTextBottom,
      required this.onTopActionTapped,
      required this.onMiddleActionTapped,
      required this.onBottomActionTapped});

  @override
  AlertsIosTripleActionVerticalWidgetState createState() {
    return AlertsIosTripleActionVerticalWidgetState();
  }
}

class AlertsIosTripleActionVerticalWidgetState
    extends State<AlertsIosTripleActionVerticalWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget actions = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: GestureDetector(
              onTap: () {
                widget.onTopActionTapped();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: TextCustom(
                      text: widget.actionTextTop,
                      textFontSize: AppDimens.fontSize17,
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                width: 0.5, color: AppColors.neutral400Color))),
                    child: GestureDetector(
                      onTap: () {
                        widget.onMiddleActionTapped();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: TextCustom(
                              text: widget.actionTextMiddle,
                              textFontSize: AppDimens.fontSize17,
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    )))
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                width: 0.5, color: AppColors.neutral400Color))),
                    child: GestureDetector(
                      onTap: () {
                        widget.onBottomActionTapped();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: TextCustom(
                              text: widget.actionTextBottom,
                              textFontSize: AppDimens.fontSize17,
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    )))
          ],
        )
      ],
    );
    Widget result = AlertsIosWidget(
        title: widget.title,
        description: widget.description,
        actions: actions,
        onTapped: () {});
    return result;
  }
}
