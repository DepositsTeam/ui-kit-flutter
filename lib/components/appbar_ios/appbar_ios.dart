import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsIosAppbarOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final bool showLeftSection;
  final Function onLeftTitleTapped;
  final String backTitle;
  final Color backTitleColor;
  final Color backIconColor;
  final bool showRightSection;
  final String rightTitle;
  final Color rightTitleColor;
  final Function onRightTitleTapped;

  const DepositsIosAppbarOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    this.showLeftSection = true,
    required this.onLeftTitleTapped,
    required this.backTitle,
    this.backTitleColor = AppColors.secondaryColor,
    this.backIconColor = AppColors.secondaryColor,
    this.showRightSection = true,
    required this.rightTitle,
    this.rightTitleColor = AppColors.secondaryColor,
    required this.onRightTitleTapped,
  });

  @override
  DepositsIosAppbarOneState createState() {
    return DepositsIosAppbarOneState();
  }
}

class DepositsIosAppbarOneState extends State<DepositsIosAppbarOne> {
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
    Widget result = AppBar(
      title: TextCustom(
        text: widget.title,
        textFontSize: AppDimens.fontSize22,
        color: widget.titleColor,
        fontWeight: FontWeight.w600,
        fontFamily: DepositsFontFamilies.Roboto,
      ),
      centerTitle: true,
      backgroundColor: AppColors.whiteColor,
      leading: widget.showLeftSection == true
          ? GestureDetector(
              onTap: () {
                widget.onLeftTitleTapped();
              },
              child: Container(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: widget.backIconColor,
                              size: 20.0,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 2.0),
                              constraints:
                                  const BoxConstraints(maxWidth: 100.0),
                              child: TextCustom(
                                text: widget.backTitle,
                                textFontSize: AppDimens.fontSize17,
                                color: widget.backTitleColor,
                                fontWeight: FontWeight.w400,
                                fontFamily: DepositsFontFamilies.SFProText,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          : Container(),
      leadingWidth: 110,
      actions: [
        widget.showRightSection == true
            ? Container(
                padding: const EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  onTap: () {
                    widget.onRightTitleTapped();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: TextCustom(
                      text: widget.rightTitle,
                      textFontSize: AppDimens.fontSize17,
                      color: widget.rightTitleColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: DepositsFontFamilies.SFProText,
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
    return result;
  }
}

class DepositsIosAppbarTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final bool showLeftSection;
  final Function onLeftTitleTapped;
  final String backTitle;
  final Color backTitleColor;
  final Color backIconColor;
  final bool showRightSection;
  final String rightTitle;
  final Color rightTitleColor;
  final Function onRightTitleTapped;

  const DepositsIosAppbarTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    this.showLeftSection = true,
    required this.onLeftTitleTapped,
    required this.backTitle,
    this.backTitleColor = AppColors.secondaryColor,
    this.backIconColor = AppColors.secondaryColor,
    this.showRightSection = true,
    required this.rightTitle,
    this.rightTitleColor = AppColors.secondaryColor,
    required this.onRightTitleTapped,
  });

  @override
  DepositsIosAppbarTwoState createState() {
    return DepositsIosAppbarTwoState();
  }
}

class DepositsIosAppbarTwoState extends State<DepositsIosAppbarTwo> {
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
    Widget result = AppBar(
      title: TextCustom(
        text: widget.title,
        textFontSize: AppDimens.fontSize22,
        color: widget.titleColor,
        fontWeight: FontWeight.w600,
        fontFamily: DepositsFontFamilies.Roboto,
      ),
      centerTitle: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0))),
      backgroundColor: AppColors.whiteColor,
      leading: widget.showLeftSection == true
          ? GestureDetector(
              onTap: () {
                widget.onLeftTitleTapped();
              },
              child: Container(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: widget.backIconColor,
                              size: 20.0,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 2.0),
                              constraints:
                                  const BoxConstraints(maxWidth: 100.0),
                              child: TextCustom(
                                text: widget.backTitle,
                                textFontSize: AppDimens.fontSize17,
                                color: widget.backTitleColor,
                                fontWeight: FontWeight.w400,
                                fontFamily: DepositsFontFamilies.SFProText,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          : Container(),
      leadingWidth: 110,
      actions: [
        widget.showRightSection == true
            ? Container(
                padding: const EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  onTap: () {
                    widget.onRightTitleTapped();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: TextCustom(
                      text: widget.rightTitle,
                      textFontSize: AppDimens.fontSize17,
                      color: widget.rightTitleColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: DepositsFontFamilies.SFProText,
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
    return result;
  }
}
