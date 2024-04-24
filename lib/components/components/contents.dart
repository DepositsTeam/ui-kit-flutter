import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsContentCardOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color imageColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentCardOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.imageColor = AppColors.blue100Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentCardOneState createState() {
    return DepositsContentCardOneState();
  }
}

class DepositsContentCardOneState extends State<DepositsContentCardOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: widget.bgColor, borderRadius: BorderRadius.circular(6.0)),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 48.0,
                        width: 48.0,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        constraints: const BoxConstraints(
                            maxHeight: 40.0, maxWidth: 40.0),
                        decoration: BoxDecoration(
                            color: widget.imageColor,
                            borderRadius: BorderRadius.circular(40.0)),
                        child: Center(
                          child: ImageWidget(imageUrl: widget.image),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: DepositsH5Text(
                                        text: widget.title,
                                        color: widget.titleColor,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 0.0),
                                      child: DepositsSubheadText(
                                        text: widget.subtitle,
                                        color: widget.subtitleColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: const Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.neutral500Color,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DepositsContentCardTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String badgeTitle;
  final Color badgeBgColor;
  final String image;
  final Color imageColor;
  final Color arrowColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentCardTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.badgeTitle,
    this.badgeBgColor = AppColors.textSecondaryColor,
    required this.image,
    this.imageColor = AppColors.blue100Color,
    this.arrowColor = AppColors.neutral500Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentCardTwoState createState() {
    return DepositsContentCardTwoState();
  }
}

class DepositsContentCardTwoState extends State<DepositsContentCardTwo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: widget.bgColor, borderRadius: BorderRadius.circular(6.0)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 32.0,
                        width: 32.0,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        constraints: const BoxConstraints(
                            maxHeight: 40.0, maxWidth: 40.0),
                        decoration: BoxDecoration(
                            color: widget.imageColor,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: ImageWidget(imageUrl: widget.image),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: DepositsH5Text(
                              text: widget.title,
                              color: widget.titleColor,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: DepositsBadge(
                              text: widget.badgeTitle,
                              textColor: AppColors.whiteColor,
                              bgColor: widget.badgeBgColor,
                              fontSize: AppDimens.fontSize10,
                            ),
                          )
                        ],
                      ),
                      ClipRect(
                        child: Wrap(
                          clipBehavior: Clip.antiAlias,
                          children: [
                            DepositsSubheadText(
                              text: widget.subtitle,
                              color: widget.subtitleColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: widget.arrowColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DepositsContentLabelOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final Color arrowColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentLabelOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    this.arrowColor = AppColors.neutral500Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentLabelOneState createState() {
    return DepositsContentLabelOneState();
  }
}

class DepositsContentLabelOneState extends State<DepositsContentLabelOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: widget.bgColor, borderRadius: BorderRadius.circular(6.0)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: DepositsH4Text(
                              text: widget.title,
                              color: widget.titleColor,
                            ),
                          ),
                        ],
                      ),
                      ClipRect(
                        child: Wrap(
                          clipBehavior: Clip.antiAlias,
                          children: [
                            DepositsSubheadText(
                              text: widget.subtitle,
                              color: widget.subtitleColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: widget.arrowColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DepositsContentLabelTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String actionText;
  final Color actionTextColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentLabelTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    this.actionText = "See all",
    this.actionTextColor = AppColors.primaryColor,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentLabelTwoState createState() {
    return DepositsContentLabelTwoState();
  }
}

class DepositsContentLabelTwoState extends State<DepositsContentLabelTwo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: widget.bgColor, borderRadius: BorderRadius.circular(6.0)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 10,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: DepositsH4Text(
                              text: widget.title,
                              color: widget.titleColor,
                            ),
                          ),
                        ],
                      ),
                      ClipRect(
                        child: Wrap(
                          clipBehavior: Clip.antiAlias,
                          children: [
                            Row(
                              children: [
                                DepositsSubheadText(
                                  text: widget.subtitle,
                                  color: widget.subtitleColor,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: DepositsSubheadText(
                          text: widget.actionText,
                          color: widget.actionTextColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DepositsContentLabelThree extends StatefulWidget {
  final String title;
  final Color titleColor;
  final Color arrowColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentLabelThree({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    this.arrowColor = AppColors.neutral500Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentLabelThreeState createState() {
    return DepositsContentLabelThreeState();
  }
}

class DepositsContentLabelThreeState extends State<DepositsContentLabelThree> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRect(
                        child: Wrap(
                          clipBehavior: Clip.antiAlias,
                          children: [
                            DepositsSubheadText(
                              text: widget.title,
                              color: widget.titleColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: widget.arrowColor,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DepositsContentLabelFour extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitleOne;
  final Color subtitleOneColor;
  final String subtitleTwo;
  final Color subtitleTwoColor;
  final Color arrowColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentLabelFour({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitleOne,
    this.subtitleOneColor = AppColors.textSecondaryColor,
    required this.subtitleTwo,
    this.subtitleTwoColor = AppColors.primaryColor,
    this.arrowColor = AppColors.neutral500Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentLabelFourState createState() {
    return DepositsContentLabelFourState();
  }
}

class DepositsContentLabelFourState extends State<DepositsContentLabelFour> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: widget.bgColor, borderRadius: BorderRadius.circular(6.0)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: DepositsH2Text(
                              text: widget.title,
                              color: widget.titleColor,
                            ),
                          ),
                        ],
                      ),
                      ClipRect(
                        child: Wrap(
                          clipBehavior: Clip.hardEdge,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: widget.subtitleOne,
                                style: TextStyle(
                                  fontSize: AppDimens.fontSize14,
                                  color: widget.subtitleOneColor,
                                  fontWeight: FontWeight.normal,
                                  fontFamily:
                                      DepositsFontFamilies.SFProText.toString(),
                                ),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: widget.subtitleTwo,
                                    style: TextStyle(
                                      fontSize: AppDimens.fontSize16,
                                      color: widget.subtitleTwoColor,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: DepositsFontFamilies.SFProText
                                          .toString(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: widget.arrowColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DepositsContentListMain extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color imageColor;
  final Color bgColor;
  final Widget rightWidget;
  final bool showLeftWidget;
  final bool showRightWidget;
  final int rightWidgetExpandSize;
  final int leftWidgetExpandSize;
  final double rightWidgetTopPadding;
  final bool allowHorinzontalPadding;
  final Function onTapped;

  const DepositsContentListMain({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.imageColor = AppColors.blue100Color,
    this.bgColor = AppColors.whiteColor,
    required this.rightWidget,
    this.showLeftWidget = true,
    this.showRightWidget = true,
    this.rightWidgetExpandSize = 1,
    this.leftWidgetExpandSize = 2,
    this.rightWidgetTopPadding = 20.0,
    this.allowHorinzontalPadding = true,
    required this.onTapped,
  });

  @override
  DepositsContentListMainState createState() {
    return DepositsContentListMainState();
  }
}

class DepositsContentListMainState extends State<DepositsContentListMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: widget.allowHorinzontalPadding == false ? 0.0 : 10.0,
        ),
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.showLeftWidget == true
                    ? Expanded(
                        flex: widget.leftWidgetExpandSize,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 48.0,
                              width: 48.0,
                              padding: EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal:
                                    widget.allowHorinzontalPadding == false
                                        ? 0.0
                                        : 5.0,
                              ),
                              constraints: const BoxConstraints(
                                maxHeight: 40.0,
                                maxWidth: 40.0,
                              ),
                              decoration: BoxDecoration(
                                color: widget.imageColor,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Center(
                                child: ImageWidget(imageUrl: widget.image),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
                Expanded(
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: DepositsH5Text(
                              text: widget.title,
                              color: widget.titleColor,
                            ),
                          ),
                        ],
                      ),
                      ClipRect(
                        child: Wrap(
                          clipBehavior: Clip.antiAlias,
                          children: [
                            DepositsSubheadText(
                              text: widget.subtitle,
                              color: widget.subtitleColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                widget.showRightWidget == true
                    ? Expanded(
                        flex: widget.rightWidgetExpandSize,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  right: 1.0,
                                  top: widget.rightWidgetTopPadding),
                              child: widget.rightWidget,
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DepositsContentListMainHorinzontal extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String image;
  final Color imageColor;
  final Color bgColor;
  final Widget rightWidget;
  final bool showLeftWidget;
  final bool showRightWidget;
  final int rightWidgetExpandSize;
  final Function onTapped;

  const DepositsContentListMainHorinzontal({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.image,
    this.imageColor = AppColors.blue100Color,
    this.bgColor = AppColors.whiteColor,
    required this.rightWidget,
    this.showLeftWidget = true,
    this.showRightWidget = true,
    this.rightWidgetExpandSize = 1,
    required this.onTapped,
  });

  @override
  DepositsContentListMainHorinzontalState createState() {
    return DepositsContentListMainHorinzontalState();
  }
}

class DepositsContentListMainHorinzontalState
    extends State<DepositsContentListMainHorinzontal> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: widget.bgColor, borderRadius: BorderRadius.circular(6.0)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.showLeftWidget == true
                    ? Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Container(
                              height: 48.0,
                              width: 48.0,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 5.0),
                              constraints: const BoxConstraints(
                                  maxHeight: 40.0, maxWidth: 40.0),
                              decoration: BoxDecoration(
                                  color: widget.imageColor,
                                  borderRadius: BorderRadius.circular(40.0)),
                              child: Center(
                                child: ImageWidget(imageUrl: widget.image),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
                Expanded(
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: DepositsH5Text(
                              text: widget.title,
                              color: widget.titleColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                widget.showRightWidget == true
                    ? Expanded(
                        flex: widget.rightWidgetExpandSize,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(right: 1.0, top: 0.0),
                              child: widget.rightWidget,
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DepositsContentListMainTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitleOne;
  final Color subtitleOneColor;
  final String subtitleTwo;
  final Color subtitleTwoColor;
  final String image;
  final Color imageColor;
  final Color bgColor;
  final Widget rightWidget;
  final bool showLeftWidget;
  final bool showRightWidget;
  final int rightWidgetExpandSize;
  final Function onTapped;

  const DepositsContentListMainTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitleOne,
    this.subtitleOneColor = AppColors.textPrimaryColor,
    required this.subtitleTwo,
    this.subtitleTwoColor = AppColors.textPrimaryColor,
    required this.image,
    this.imageColor = AppColors.blue100Color,
    this.bgColor = AppColors.whiteColor,
    required this.rightWidget,
    this.showLeftWidget = true,
    this.showRightWidget = true,
    this.rightWidgetExpandSize = 1,
    required this.onTapped,
  });

  @override
  DepositsContentListMainTwoState createState() {
    return DepositsContentListMainTwoState();
  }
}

class DepositsContentListMainTwoState
    extends State<DepositsContentListMainTwo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: widget.bgColor, borderRadius: BorderRadius.circular(6.0)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.showLeftWidget == true
                    ? Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Container(
                              height: 48.0,
                              width: 48.0,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 5.0),
                              constraints: const BoxConstraints(
                                  maxHeight: 40.0, maxWidth: 40.0),
                              decoration: BoxDecoration(
                                  color: widget.imageColor,
                                  borderRadius: BorderRadius.circular(40.0)),
                              child: Center(
                                child: ImageWidget(imageUrl: widget.image),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
                Expanded(
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 2.0),
                            child: DepositsH5Text(
                              text: widget.title,
                              color: widget.titleColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: ClipRect(
                              child: Wrap(
                                clipBehavior: Clip.hardEdge,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      text: widget.subtitleOne,
                                      style: TextStyle(
                                        fontSize: AppDimens.fontSize14,
                                        color: widget.subtitleOneColor,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: DepositsFontFamilies
                                            .SFProText.toString(),
                                      ),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: widget.subtitleTwo,
                                          style: TextStyle(
                                            fontSize: AppDimens.fontSize16,
                                            color: widget.subtitleTwoColor,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: DepositsFontFamilies
                                                .SFProText.toString(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                widget.showRightWidget == true
                    ? Expanded(
                        flex: widget.rightWidgetExpandSize,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(right: 1.0, top: 0.0),
                              child: widget.rightWidget,
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DepositsContentListOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color imageColor;
  final Color arrowColor;
  final Color bgColor;
  final bool allowHorinzontalPadding;
  final Function onTapped;

  const DepositsContentListOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.imageColor = AppColors.blue100Color,
    this.arrowColor = AppColors.neutral500Color,
    this.bgColor = AppColors.whiteColor,
    this.allowHorinzontalPadding = true,
    required this.onTapped,
  });

  @override
  DepositsContentListOneState createState() {
    return DepositsContentListOneState();
  }
}

class DepositsContentListOneState extends State<DepositsContentListOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsContentListMain(
        title: widget.title,
        subtitle: widget.subtitle,
        image: widget.image,
        imageColor: AppColors.transparentColor,
        allowHorinzontalPadding: widget.allowHorinzontalPadding,
        rightWidgetExpandSize: 2,
        rightWidget: Icon(
          Icons.keyboard_arrow_right,
          color: widget.arrowColor,
        ),
        onTapped: widget.onTapped);
  }
}

class DepositsContentListTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color imageColor;
  final Color activeRadioColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentListTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.imageColor = AppColors.blue100Color,
    this.activeRadioColor = AppColors.neutral500Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentListTwoState createState() {
    return DepositsContentListTwoState();
  }
}

class DepositsContentListTwoState extends State<DepositsContentListTwo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsContentListMain(
        title: widget.title,
        subtitle: widget.subtitle,
        image: widget.image,
        imageColor: AppColors.transparentColor,
        rightWidgetExpandSize: 2,
        rightWidget: DepositsRadio(
          title: "",
          selectedColor: widget.activeRadioColor,
          onTapped: () {},
        ),
        onTapped: widget.onTapped);
  }
}

class DepositsContentListThree extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color imageColor;
  final String arrowText;
  final Color arrowColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentListThree({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.imageColor = AppColors.blue100Color,
    required this.arrowText,
    this.arrowColor = AppColors.neutral500Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentListThreeState createState() {
    return DepositsContentListThreeState();
  }
}

class DepositsContentListThreeState extends State<DepositsContentListThree> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsContentListMain(
        title: widget.title,
        subtitle: widget.subtitle,
        image: widget.image,
        imageColor: AppColors.transparentColor,
        rightWidgetExpandSize: 5,
        rightWidget: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 10.0),
              child: DepositsSubheadText(text: widget.arrowText),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: widget.arrowColor,
            )
          ],
        ),
        onTapped: widget.onTapped);
  }
}

class DepositsContentListFour extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String image;
  final Color imageColor;
  final String badgeText;
  final Color badgeTextColor;
  final Color badgeBgColor;
  final Color arrowColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentListFour({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.image,
    this.imageColor = AppColors.blue100Color,
    required this.badgeText,
    this.badgeTextColor = AppColors.whiteColor,
    this.badgeBgColor = AppColors.red500Color,
    this.arrowColor = AppColors.neutral500Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentListFourState createState() {
    return DepositsContentListFourState();
  }
}

class DepositsContentListFourState extends State<DepositsContentListFour> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsContentListMainHorinzontal(
        title: widget.title,
        image: widget.image,
        imageColor: AppColors.transparentColor,
        rightWidgetExpandSize: 5,
        rightWidget: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 2.0),
              child: DepositsBadge(
                  text: widget.badgeText,
                  bgColor: widget.badgeBgColor,
                  textColor: widget.badgeTextColor),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: widget.arrowColor,
            )
          ],
        ),
        onTapped: widget.onTapped);
  }
}

class DepositsContentListFive extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color activeCheckboxColor;
  final Color bgColor;
  final DepositsSwitchFormState formState;
  final Function onTapped;

  const DepositsContentListFive({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    this.image = "",
    this.activeCheckboxColor = AppColors.successColor,
    this.bgColor = AppColors.whiteColor,
    this.formState = DepositsSwitchFormState.off,
    required this.onTapped,
  });

  @override
  DepositsContentListFiveState createState() {
    return DepositsContentListFiveState();
  }
}

class DepositsContentListFiveState extends State<DepositsContentListFive> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsContentListMain(
        title: widget.title,
        subtitle: widget.subtitle,
        image: widget.image,
        imageColor: AppColors.transparentColor,
        showLeftWidget: false,
        rightWidgetExpandSize: 3,
        rightWidget: DepositsSwitch(
          formState: widget.formState,
          onChanged: (a) {
            widget.onTapped(a);
          },
        ),
        onTapped: () {});
  }
}

class DepositsContentListSix extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color activeRadioColor;
  final Color bgColor;
  final DepositsRadioFormState formState;
  final Function onTapped;

  const DepositsContentListSix({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    this.image = "",
    this.activeRadioColor = AppColors.blue100Color,
    this.bgColor = AppColors.whiteColor,
    this.formState = DepositsRadioFormState.normal,
    required this.onTapped,
  });

  @override
  DepositsContentListSixState createState() {
    return DepositsContentListSixState();
  }
}

class DepositsContentListSixState extends State<DepositsContentListSix> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsContentListMain(
        title: widget.title,
        subtitle: widget.subtitle,
        image: widget.image,
        imageColor: AppColors.transparentColor,
        showLeftWidget: false,
        rightWidgetExpandSize: 3,
        rightWidget: DepositsRadio(
          title: "",
          selectedColor: widget.activeRadioColor,
          formState: widget.formState,
          onTapped: () {},
        ),
        onTapped: widget.onTapped);
  }
}

class DepositsContentListSeven extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String badgeText;
  final Color badgeTextColor;
  final Color badgeBgColor;
  final Color arrowColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentListSeven({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.badgeText,
    this.badgeTextColor = AppColors.whiteColor,
    this.badgeBgColor = AppColors.red500Color,
    this.arrowColor = AppColors.neutral500Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentListSevenState createState() {
    return DepositsContentListSevenState();
  }
}

class DepositsContentListSevenState extends State<DepositsContentListSeven> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsContentListMain(
        title: widget.title,
        subtitle: widget.subtitle,
        image: "",
        showLeftWidget: false,
        rightWidgetExpandSize: 5,
        rightWidget: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 2.0),
              child: DepositsBadge(
                  text: widget.badgeText,
                  bgColor: widget.badgeBgColor,
                  textColor: widget.badgeTextColor),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: widget.arrowColor,
            )
          ],
        ),
        onTapped: widget.onTapped);
  }
}

class DepositsContentListEight extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color imageBgColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentListEight({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.imageBgColor = AppColors.whiteColor,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentListEightState createState() {
    return DepositsContentListEightState();
  }
}

class DepositsContentListEightState extends State<DepositsContentListEight> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsContentListMain(
        title: widget.title,
        subtitle: widget.subtitle,
        image: widget.image,
        imageColor: widget.imageBgColor,
        showRightWidget: false,
        rightWidgetExpandSize: 0,
        rightWidget: Container(),
        onTapped: widget.onTapped);
  }
}

class DepositsContentListNine extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String badgeText;
  final Color badgeTextColor;
  final Color badgeBgColor;
  final String amount;
  final Color amountColor;
  final String image;
  final Color imageBgColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentListNine({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.badgeText,
    this.badgeTextColor = AppColors.whiteColor,
    this.badgeBgColor = AppColors.red500Color,
    this.amount = "",
    this.amountColor = AppColors.neutral500Color,
    this.image = "",
    this.imageBgColor = AppColors.brand100Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentListNineState createState() {
    return DepositsContentListNineState();
  }
}

class DepositsContentListNineState extends State<DepositsContentListNine> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsContentListMain(
        title: widget.title,
        subtitle: widget.subtitle,
        image: widget.image,
        imageColor: widget.imageBgColor,
        leftWidgetExpandSize: 3,
        rightWidgetExpandSize: 4,
        rightWidgetTopPadding: 0.0,
        rightWidget: Column(
          children: [
            DepositsH5Text(text: widget.amount),
            Container(
              padding: const EdgeInsets.only(right: 0.0, top: 3.0),
              child: DepositsBadge(
                  text: widget.badgeText,
                  bgColor: widget.badgeBgColor,
                  textColor: widget.badgeTextColor),
            ),
          ],
        ),
        onTapped: widget.onTapped);
  }
}

class DepositsContentListTen extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitleOne;
  final Color subtitleOneColor;
  final String subtitleTwo;
  final Color subtitleTwoColor;
  final String bottomTitleOne;
  final Color bottomTitleOneColor;
  final String bottomTitleTwo;
  final Color bottomTitleTwoColor;
  final String arrowText;
  final Color arrowColor;
  final DepositsSwitchFormState formState;
  final Color bgColor;
  final Function onTapped;
  final Function onChanged;

  const DepositsContentListTen({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitleOne,
    this.subtitleOneColor = AppColors.textSecondaryColor,
    required this.subtitleTwo,
    this.subtitleTwoColor = AppColors.textSecondaryColor,
    required this.bottomTitleOne,
    this.bottomTitleOneColor = AppColors.textSecondaryColor,
    required this.bottomTitleTwo,
    this.bottomTitleTwoColor = AppColors.textSecondaryColor,
    required this.arrowText,
    this.arrowColor = AppColors.textSecondaryColor,
    this.formState = DepositsSwitchFormState.on,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
    required this.onChanged,
  });

  @override
  DepositsContentListTenState createState() {
    return DepositsContentListTenState();
  }
}

class DepositsContentListTenState extends State<DepositsContentListTen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.bgColor,
      ),
      child: Column(
        children: [
          DepositsContentListMainTwo(
            title: widget.title,
            subtitleOne: widget.subtitleOne,
            subtitleOneColor: widget.subtitleOneColor,
            subtitleTwo: widget.subtitleTwo,
            subtitleTwoColor: widget.subtitleTwoColor,
            showLeftWidget: false,
            image: "",
            rightWidgetExpandSize: 6,
            rightWidget: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: DepositsSubheadText(
                    text: widget.arrowText,
                    color: widget.arrowColor,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: widget.arrowColor,
                )
              ],
            ),
            onTapped: widget.onTapped,
          ),
          const Hr(
            color: AppColors.neutral200Color,
            size: DepositsHrSizes.small,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          ClipRect(
                            child: Wrap(
                              clipBehavior: Clip.hardEdge,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: widget.bottomTitleOne,
                                    style: TextStyle(
                                      fontSize: AppDimens.fontSize16,
                                      color: widget.bottomTitleOneColor,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: DepositsFontFamilies.SFProText
                                          .toString(),
                                    ),
                                    children: <InlineSpan>[
                                      TextSpan(
                                        text: " ${widget.bottomTitleTwo}",
                                        style: TextStyle(
                                          fontSize: AppDimens.fontSize14,
                                          color: widget.bottomTitleTwoColor,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: DepositsFontFamilies
                                              .SFProText.toString(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DepositsSwitch(
                            formState: widget.formState,
                            onChanged: (a) {
                              widget.onChanged(a);
                            },
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DepositsContentListEleven extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String bottomTitleOne;
  final Color bottomTitleOneColor;
  final String bottomTitleTwo;
  final Color bottomTitleTwoColor;
  final String image;
  final Color imageBgColor;
  final Color bgColor;
  final DepositsSwitchFormState formState;
  final Function onTapped;

  const DepositsContentListEleven({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.bottomTitleOne,
    this.bottomTitleOneColor = AppColors.textSecondaryColor,
    required this.bottomTitleTwo,
    this.bottomTitleTwoColor = AppColors.textSecondaryColor,
    this.image = "",
    this.imageBgColor = AppColors.brand100Color,
    this.bgColor = AppColors.whiteColor,
    this.formState = DepositsSwitchFormState.off,
    required this.onTapped,
  });

  @override
  DepositsContentListElevenState createState() {
    return DepositsContentListElevenState();
  }
}

class DepositsContentListElevenState extends State<DepositsContentListEleven> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: AppColors.neutral200Color,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 32.0,
                      width: 32.0,
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: DepositsImageAvatar(
                          imagePath: widget.image,
                          size: DepositsAvatarSizes.medium,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: DepositsBodyText(
                        text: widget.title,
                        color: widget.titleColor,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DepositsSwitch(
                      onChanged: (a) {
                        widget.onTapped(a);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: const Hr(
                    color: AppColors.neutral300Color,
                    size: DepositsHrSizes.small,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Row(
                      children: [
                        DepositsFootnoteText(
                          text: widget.bottomTitleOne,
                          color: widget.bottomTitleOneColor,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        DepositsFootnoteText(
                          text: ".",
                          color: widget.bottomTitleOneColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DepositsFootnoteText(
                      text: widget.bottomTitleTwo,
                      color: widget.bottomTitleTwoColor,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DepositsContentStarterMain extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color imageColor;
  final double imageHeight;
  final Color bgColor;
  final Widget bottomWidget;
  final bool showBottomWidget;
  final Function onTapped;

  const DepositsContentStarterMain({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.imageColor = AppColors.blue100Color,
    this.imageHeight = 45.0,
    this.bgColor = AppColors.whiteColor,
    required this.bottomWidget,
    this.showBottomWidget = true,
    required this.onTapped,
  });

  @override
  DepositsContentStarterMainState createState() {
    return DepositsContentStarterMainState();
  }
}

class DepositsContentStarterMainState
    extends State<DepositsContentStarterMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: widget.bgColor, borderRadius: BorderRadius.circular(6.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        constraints:
                            BoxConstraints(maxHeight: widget.imageHeight),
                        decoration: BoxDecoration(
                            color: widget.imageColor,
                            borderRadius: BorderRadius.circular(40.0)),
                        child: Center(
                          child: ImageWidget(imageUrl: widget.image),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 5.0, top: 10.0),
                  child: DepositsH3Text(
                    text: widget.title,
                    color: widget.titleColor,
                  ),
                ),
              ],
            ),
            ClipRect(
              child: Wrap(
                clipBehavior: Clip.antiAlias,
                children: [
                  DepositsSubheadText(
                    text: widget.subtitle,
                    color: widget.subtitleColor,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            widget.showBottomWidget == false
                ? Container()
                : Column(
                    children: [widget.bottomWidget],
                  )
          ],
        ),
      ),
    );
  }
}

class DepositsContentStarterOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final double imageHeight;
  final Color imageBgColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentStarterOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textPrimaryColor,
    required this.image,
    this.imageHeight = 45.0,
    this.imageBgColor = AppColors.brand100Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentStarterOneState createState() {
    return DepositsContentStarterOneState();
  }
}

class DepositsContentStarterOneState extends State<DepositsContentStarterOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsContentStarterMain(
        title: widget.title,
        titleColor: widget.titleColor,
        subtitle: widget.subtitle,
        subtitleColor: widget.subtitleColor,
        image: widget.image,
        imageColor: widget.imageBgColor,
        imageHeight: widget.imageHeight,
        bottomWidget: Container(),
        onTapped: widget.onTapped);
  }
}

class DepositsContentStarterTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final double imageHeight;
  final Color imageBgColor;
  final String buttonOneText;
  final IconData buttonOneIcon;
  final Color buttonOneTextColor;
  final Color buttonOneBgColor;
  final Color buttonOneBorderColor;
  final String buttonTwoText;
  final Color buttonTwoTextColor;
  final Color buttonTwoBgColor;
  final Color buttonTwoBorderColor;
  final Color bgColor;
  final Function onTapped;
  final Function onButtonOneTapped;
  final Function onButtonTwoTapped;

  const DepositsContentStarterTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textPrimaryColor,
    required this.buttonOneText,
    required this.buttonOneIcon,
    this.buttonOneBgColor = AppColors.primaryColor,
    this.buttonOneTextColor = AppColors.textPrimaryColor,
    this.buttonOneBorderColor = AppColors.primaryColor,
    required this.buttonTwoText,
    this.buttonTwoBgColor = AppColors.neutral100Color,
    this.buttonTwoTextColor = AppColors.textPrimaryColor,
    this.buttonTwoBorderColor = AppColors.neutral100Color,
    required this.image,
    this.imageHeight = 45.0,
    this.imageBgColor = AppColors.brand100Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
    required this.onButtonOneTapped,
    required this.onButtonTwoTapped,
  });

  @override
  DepositsContentStarterTwoState createState() {
    return DepositsContentStarterTwoState();
  }
}

class DepositsContentStarterTwoState extends State<DepositsContentStarterTwo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsContentStarterMain(
        title: widget.title,
        titleColor: widget.titleColor,
        subtitle: widget.subtitle,
        subtitleColor: widget.subtitleColor,
        image: widget.image,
        imageColor: widget.imageBgColor,
        imageHeight: widget.imageHeight,
        bottomWidget: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: DepositsButtonWithIconWidget(
                      text: widget.buttonOneText,
                      textColor: widget.buttonOneTextColor,
                      bgColor: widget.buttonOneBgColor,
                      borderColor: widget.buttonOneBorderColor,
                      iconWidget: Icon(
                        widget.buttonOneIcon,
                        color: widget.buttonOneTextColor,
                        size: 17.0,
                      ),
                      onPressed: () {
                        widget.onButtonOneTapped();
                      },
                    ),
                  )
                ],
              ),
              const VSpacerWidget(size: 5.0),
              Row(
                children: [
                  Expanded(
                    child: DepositsButtonWidget(
                      text: widget.buttonTwoText,
                      textColor: widget.buttonTwoTextColor,
                      bgColor: widget.buttonTwoBgColor,
                      borderColor: widget.buttonTwoBorderColor,
                      onPressed: () {
                        widget.onButtonTwoTapped();
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        onTapped: widget.onTapped);
  }
}

class DepositsContentFeedbackMain extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final Widget imageWidget;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentFeedbackMain({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.imageWidget,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentFeedbackMainState createState() {
    return DepositsContentFeedbackMainState();
  }
}

class DepositsContentFeedbackMainState
    extends State<DepositsContentFeedbackMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: widget.bgColor, borderRadius: BorderRadius.circular(6.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [widget.imageWidget],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 5.0, top: 10.0),
                  child: DepositsH4Text(
                    text: widget.title,
                    color: widget.titleColor,
                  ),
                ),
              ],
            ),
            ClipRect(
              child: Wrap(
                clipBehavior: Clip.antiAlias,
                children: [
                  DepositsSubheadText(
                    text: widget.subtitle,
                    color: widget.subtitleColor,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DepositsContentFeedbackOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color bgColor;
  final Function onTapped;

  const DepositsContentFeedbackOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textPrimaryColor,
    required this.image,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsContentFeedbackOneState createState() {
    return DepositsContentFeedbackOneState();
  }
}

class DepositsContentFeedbackOneState
    extends State<DepositsContentFeedbackOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsContentFeedbackMain(
        title: widget.title,
        titleColor: widget.titleColor,
        subtitle: widget.subtitle,
        subtitleColor: widget.subtitleColor,
        imageWidget: ImageWidget(imageUrl: widget.image),
        onTapped: widget.onTapped);
  }
}
