import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/widgets.dart';

class TabTextItem extends StatelessWidget {
  final String thisTitle;
  final bool isActive;
  final Color titleColor;
  final Color activeTitleColor;
  final Color activeBorderColor;
  final int index;
  final int activeIndex;
  final int titlesLength;
  const TabTextItem(
      {super.key,
      required this.thisTitle,
      required this.isActive,
      required this.titleColor,
      required this.activeBorderColor,
      required this.index,
      required this.activeIndex,
      required this.titlesLength,
      required this.activeTitleColor});

  @override
  Widget build(BuildContext context) {
    var borderColor = AppColors.transparentColor;
    if (isActive == true) {
      borderColor = activeBorderColor;
    }
    Widget result = Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 46.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Center(
                        child: TextCustom(
                          text: thisTitle,
                          textFontSize: AppDimens.fontSize14,
                          color:
                              isActive == true ? activeTitleColor : titleColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: DepositsFontFamilies.Roboto,
                        ),
                      )
                    ],
                  )
                ],
              )),
          Row(
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 3.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        color: borderColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(100.0),
                            topRight: Radius.circular(100.0))),
                  )
                ],
              ))
            ],
          )
        ],
      ),
    );
    return result;
  }
}

class TabIconTextVerticalItem extends StatelessWidget {
  final String thisTitle;
  final IconData thisIcon;
  final bool isActive;
  final Color titleColor;
  final Color activeTitleColor;
  final Color activeBorderColor;
  final int index;
  final int activeIndex;
  final int titlesLength;
  const TabIconTextVerticalItem(
      {super.key,
      required this.thisTitle,
      required this.thisIcon,
      required this.isActive,
      required this.titleColor,
      required this.activeBorderColor,
      required this.index,
      required this.activeIndex,
      required this.titlesLength,
      required this.activeTitleColor});

  @override
  Widget build(BuildContext context) {
    var borderColor = AppColors.transparentColor;
    if (isActive == true) {
      borderColor = activeBorderColor;
    }
    Widget result = Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 46.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Icon(
                              thisIcon,
                              size: 12.0,
                              color: isActive == true
                                  ? activeTitleColor
                                  : titleColor,
                            ),
                          ),
                          TextCustom(
                            text: thisTitle,
                            textFontSize: AppDimens.fontSize14,
                            color: isActive == true
                                ? activeTitleColor
                                : titleColor,
                            fontWeight: FontWeight.w600,
                            fontFamily: DepositsFontFamilies.Roboto,
                          )
                        ],
                      )
                    ],
                  )
                ],
              )),
          Row(
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 3.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        color: borderColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(100.0),
                            topRight: Radius.circular(100.0))),
                  )
                ],
              ))
            ],
          )
        ],
      ),
    );
    return result;
  }
}

class TabIconItem extends StatelessWidget {
  final IconData thisIcon;
  final bool isActive;
  final Color titleColor;
  final Color activeTitleColor;
  final Color activeBorderColor;
  final int index;
  final int activeIndex;
  final int titlesLength;
  const TabIconItem(
      {super.key,
      required this.thisIcon,
      required this.isActive,
      required this.titleColor,
      required this.activeBorderColor,
      required this.index,
      required this.activeIndex,
      required this.titlesLength,
      required this.activeTitleColor});

  @override
  Widget build(BuildContext context) {
    var borderColor = AppColors.transparentColor;
    if (isActive == true) {
      borderColor = activeBorderColor;
    }
    Widget result = Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 46.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Icon(
                              thisIcon,
                              size: 20.0,
                              color: isActive == true
                                  ? activeTitleColor
                                  : titleColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )),
          Row(
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 3.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        color: borderColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(100.0),
                            topRight: Radius.circular(100.0))),
                  )
                ],
              ))
            ],
          )
        ],
      ),
    );
    return result;
  }
}

class TabTextFullItem extends StatelessWidget {
  final String thisTitle;
  final bool isActive;
  final Color titleColor;
  final Color activeTitleColor;
  final Color activeBorderColor;
  final int index;
  final int activeIndex;
  final int titlesLength;
  const TabTextFullItem(
      {super.key,
      required this.thisTitle,
      required this.isActive,
      required this.titleColor,
      required this.activeBorderColor,
      required this.index,
      required this.activeIndex,
      required this.titlesLength,
      required this.activeTitleColor});

  @override
  Widget build(BuildContext context) {
    Widget result = Container();
    if (isActive == false) {
      result = Container(
        padding: const EdgeInsets.symmetric(vertical: 3.0),
        margin: const EdgeInsets.symmetric(vertical: 2.0),
        decoration: const BoxDecoration(
          color: AppColors.transparentColor,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Center(
                      child: TextCustom(
                        text: thisTitle,
                        textFontSize: AppDimens.fontSize14,
                        color: titleColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: DepositsFontFamilies.Roboto,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    } else {
      result = Container(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Column(
          children: [
            SizedBox(
                height: 47.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Center(
                          child: TextCustom(
                            text: thisTitle,
                            textFontSize: AppDimens.fontSize14,
                            color: activeTitleColor,
                            fontWeight: FontWeight.w600,
                            fontFamily: DepositsFontFamilies.Roboto,
                          ),
                        )
                      ],
                    )
                  ],
                )),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 2.0,
                  color: activeBorderColor,
                ))
              ],
            )
          ],
        ),
      );
    }
    return result;
  }
}

class TabIconTextHorizontalItem extends StatelessWidget {
  final String thisTitle;
  final IconData thisIcon;
  final bool isActive;
  final Color titleColor;
  final Color activeTitleColor;
  final Color activeBorderColor;
  final int index;
  final int activeIndex;
  final int titlesLength;
  const TabIconTextHorizontalItem(
      {super.key,
      required this.thisTitle,
      required this.thisIcon,
      required this.isActive,
      required this.titleColor,
      required this.activeBorderColor,
      required this.index,
      required this.activeIndex,
      required this.titlesLength,
      required this.activeTitleColor});

  @override
  Widget build(BuildContext context) {
    Widget result = Container();
    if (isActive == false) {
      result = Container(
        padding: const EdgeInsets.symmetric(vertical: 3.0),
        margin: const EdgeInsets.symmetric(vertical: 2.0),
        decoration: const BoxDecoration(
          color: AppColors.transparentColor,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        thisIcon,
                        size: 12.0,
                        color: titleColor,
                      ),
                    ),
                    Center(
                      child: TextCustom(
                        text: thisTitle,
                        textFontSize: AppDimens.fontSize14,
                        color: titleColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: DepositsFontFamilies.Roboto,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    } else {
      result = Container(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Column(
          children: [
            SizedBox(
                height: 47.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            thisIcon,
                            size: 12.0,
                            color: titleColor,
                          ),
                        ),
                        Center(
                          child: TextCustom(
                            text: thisTitle,
                            textFontSize: AppDimens.fontSize14,
                            color: activeTitleColor,
                            fontWeight: FontWeight.w600,
                            fontFamily: DepositsFontFamilies.Roboto,
                          ),
                        )
                      ],
                    )
                  ],
                )),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 2.0,
                  color: activeBorderColor,
                ))
              ],
            )
          ],
        ),
      );
    }
    return result;
  }
}
