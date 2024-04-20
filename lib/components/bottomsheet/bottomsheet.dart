import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsBottomsheet extends StatefulWidget {
  final Widget titleWidget;
  final Widget titleLeftWidget;
  final Widget titleRightWidget;
  final Widget bodyWidget;
  final Color bgColor;

  const DepositsBottomsheet({
    super.key,
    required this.titleWidget,
    required this.titleLeftWidget,
    required this.titleRightWidget,
    required this.bodyWidget,
    this.bgColor = AppColors.whiteColor,
  });

  @override
  DepositsBottomsheetState createState() {
    return DepositsBottomsheetState();
  }
}

class DepositsBottomsheetState extends State<DepositsBottomsheet> {
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
      decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0))),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 36.0,
                  height: 5.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      color: AppColors.neutral300Color,
                      borderRadius: BorderRadius.circular(100)),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: widget.titleLeftWidget),
                    Expanded(child: widget.titleWidget),
                    Expanded(child: widget.titleRightWidget),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [widget.bodyWidget],
          )
        ],
      ),
    );
    return result;
  }
}

class DepositsBottomsheetOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final bool showLeftSection;
  final Function onLeftTitleTapped;
  final String backTitle;
  final Color backTitleColor;
  final Color backIconColor;
  final bool showRightSection;
  final Function onCancelButtonTapped;
  final Widget body;
  final Color bgColor;

  const DepositsBottomsheetOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    this.showLeftSection = true,
    required this.onLeftTitleTapped,
    required this.backTitle,
    this.backTitleColor = AppColors.secondaryColor,
    this.backIconColor = AppColors.secondaryColor,
    this.showRightSection = true,
    required this.onCancelButtonTapped,
    required this.body,
    this.bgColor = AppColors.whiteColor,
  });

  @override
  DepositsBottomsheetOneState createState() {
    return DepositsBottomsheetOneState();
  }
}

class DepositsBottomsheetOneState extends State<DepositsBottomsheetOne> {
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
    Widget titleWidget = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextCustom(
          text: widget.title,
          textFontSize: AppDimens.fontSize17,
          color: widget.titleColor,
          fontWeight: FontWeight.w600,
          fontFamily: DepositsFontFamilies.SFProText,
        )
      ],
    );
    Widget titleLeftWidget = widget.showLeftSection == true
        ? Container(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(children: [
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.secondaryColor,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      TextCustom(
                        text: widget.backTitle,
                        textFontSize: AppDimens.fontSize17,
                        color: widget.backTitleColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: DepositsFontFamilies.SFProText,
                      )
                    ],
                  )
                ],
              )
            ]),
          )
        : Container();
    Widget titleRightWidget = widget.showRightSection == true
        ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  widget.onCancelButtonTapped();
                },
                child: Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                        color: AppColors.neutral100Color,
                        borderRadius: BorderRadius.circular(100.0)),
                    child: const Icon(
                      Icons.close,
                      color: AppColors.neutral500Color,
                    ),
                  ),
                ),
              )
            ],
          )
        : Container();
    Widget bodyWidget = widget.body;
    Widget result = DepositsBottomsheet(
        titleWidget: titleWidget,
        titleLeftWidget: titleLeftWidget,
        titleRightWidget: titleRightWidget,
        bodyWidget: bodyWidget,
        bgColor: widget.bgColor);
    // Widget result = Column(
    //   children: [
    //     Container(
    //       padding: const EdgeInsets.symmetric(vertical: 2.0),
    //       child: Row(
    //         children: [
    //           Container(
    //             width: 36.0,
    //             height: 5.0,
    //             decoration: BoxDecoration(
    //                 color: AppColors.neutral300Color,
    //                 borderRadius: BorderRadius.circular(100)),
    //           )
    //         ],
    //       ),
    //     ),
    //     Container(
    //       padding: const EdgeInsets.symmetric(vertical: 2.0),
    //       child: Column(
    //         children: [
    //           Row(
    //             children: [
    //               Row(
    //                 children: [
    //                   Container(
    //                     child: Column(children: [
    //                       Row(
    //                         children: [
    //                           Row(
    //                             children: [
    //                               Container(
    //                                 padding: const EdgeInsets.only(right: 3.0),
    //                                 child: const Icon(
    //                                   Icons.arrow_back_ios,
    //                                   color: AppColors.secondaryColor,
    //                                 ),
    //                               )
    //                             ],
    //                           ),
    //                           const Row(
    //                             children: [
    //                               TextCustom(
    //                                 text: "Left Title",
    //                                 textFontSize: AppDimens.fontSize17,
    //                                 color: AppColors.secondaryColor,
    //                                 fontWeight: FontWeight.w400,
    //                                 fontFamily: DepositsFontFamilies.SFProText,
    //                               )
    //                             ],
    //                           )
    //                         ],
    //                       )
    //                     ]),
    //                   )
    //                 ],
    //               ),
    //               const Expanded(
    //                   child: TextCustom(
    //                 text: "Title",
    //                 textFontSize: AppDimens.fontSize17,
    //                 color: AppColors.secondaryColor,
    //                 fontWeight: FontWeight.w600,
    //                 fontFamily: DepositsFontFamilies.SFProText,
    //               )),
    //               Row(
    //                 children: [
    //                   Container(
    //                     padding: const EdgeInsets.only(left: 0.0),
    //                     child: const Icon(
    //                       Icons.cancel,
    //                       color: AppColors.neutral100Color,
    //                     ),
    //                   )
    //                 ],
    //               )
    //             ],
    //           )
    //         ],
    //       ),
    //     ),
    //     Column(
    //       children: [widget.body],
    //     )
    //   ],
    // );
    return result;
  }
}
