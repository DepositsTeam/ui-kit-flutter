import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsIosTabs extends StatefulWidget {
  final List titles;
  final String? activeTitle;
  final Color titleColor;
  final Color activeTitleColor;
  final Color bgColor;
  final Color activeBgColor;
  final Function onTapped;

  const DepositsIosTabs({
    super.key,
    required this.titles,
    this.activeTitle,
    this.titleColor = AppColors.textPrimaryColor,
    this.activeTitleColor = AppColors.textPrimaryColor,
    this.bgColor = AppColors.neutral100Color,
    this.activeBgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsIosTabsState createState() {
    return DepositsIosTabsState();
  }
}

class DepositsIosTabsState extends State<DepositsIosTabs> {
  var activeTab = "";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (widget.activeTitle != null) {
          activeTab = "${widget.activeTitle}";
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Container(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
      constraints: const BoxConstraints(maxHeight: 33.0),
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          widget.titles.isNotEmpty
              ? Row(
                  children: [
                    for (var i = 0; i < widget.titles.length; i++)
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              activeTab = widget.titles[i];
                            });
                            widget.onTapped(widget.titles[i]);
                          },
                          child: TabItem(
                            thisTitle: widget.titles[i],
                            isActive:
                                activeTab == widget.titles[i] ? true : false,
                            titleColor: widget.titleColor,
                            activeBgColor: widget.activeBgColor,
                            activeTitleColor: widget.activeTitleColor,
                            index: i,
                            activeIndex: widget.titles.indexOf(activeTab),
                            titlesLength: widget.titles.length,
                          ),
                        ),
                      ),
                  ],
                )
              : Container()
        ],
      ),
    );
    return result;
  }
}

class TabItem extends StatelessWidget {
  final String thisTitle;
  final bool isActive;
  final Color titleColor;
  final Color activeTitleColor;
  final Color activeBgColor;
  final int index;
  final int activeIndex;
  final int titlesLength;
  const TabItem(
      {super.key,
      required this.thisTitle,
      required this.isActive,
      required this.titleColor,
      required this.activeBgColor,
      required this.index,
      required this.activeIndex,
      required this.titlesLength,
      required this.activeTitleColor});

  @override
  Widget build(BuildContext context) {
    Widget result = Container();
    var showLeftBorder = true;
    if (index == 0) {
      showLeftBorder = false;
    }
    if (titlesLength == 2) {
      showLeftBorder = false;
    }
    if (index > 0 && index - 1 == activeIndex) {
      showLeftBorder = false;
    }
    if (isActive == false) {
      result = Container(
        padding: const EdgeInsets.symmetric(vertical: 3.0),
        margin: const EdgeInsets.symmetric(vertical: 2.0),
        decoration: const BoxDecoration(
          color: AppColors.transparentColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 16.0,
                padding: const EdgeInsets.only(
                  right: 0.0,
                ),
                decoration: BoxDecoration(
                  border: showLeftBorder == true
                      ? const Border(
                          left: BorderSide(
                            width: 0.5,
                            color: AppColors.neutral300Color,
                          ),
                        )
                      : const Border(),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Center(
                child: TextCustom(
                  text: thisTitle,
                  textFontSize: AppDimens.fontSize13,
                  color: titleColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: DepositsFontFamilies.SFProText,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      result = Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          color: activeBgColor,
          borderRadius: BorderRadius.circular(7.0),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.12),
              blurRadius: 8.0,
              offset: Offset(
                0.0,
                3.0,
              ),
            )
          ],
        ),
        child: Center(
          child: TextCustom(
            text: thisTitle,
            textFontSize: AppDimens.fontSize13,
            color: activeTitleColor,
            fontWeight: FontWeight.w600,
            fontFamily: DepositsFontFamilies.SFProText,
          ),
        ),
      );
    }
    return result;
  }
}
