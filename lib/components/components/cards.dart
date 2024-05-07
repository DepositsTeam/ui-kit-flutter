import 'package:deposits_ui_kit_v2/components/components/all.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DepositsCardPerk extends StatefulWidget {
  final String image;
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String bottomTitle;
  final Color bottomTitleColor;
  final Color bgColor;
  final Color borderColor;

  const DepositsCardPerk({
    super.key,
    required this.image,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.blue500Color,
    required this.bottomTitle,
    this.bottomTitleColor = AppColors.textSecondaryColor,
    this.bgColor = AppColors.whiteColor,
    this.borderColor = AppColors.neutral200Color,
  });

  @override
  DepositsCardPerkState createState() {
    return DepositsCardPerkState();
  }
}

class DepositsCardPerkState extends State<DepositsCardPerk> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: widget.borderColor,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageWidget(
                imageUrl: widget.image,
                imageHeight: 50.0,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 5.0,
                ),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.3,
                ),
                child: DepositsH5Text(
                  text: widget.title,
                  color: widget.titleColor,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 20.0,
                ),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.3,
                ),
                child: DepositsH5Text(
                  text: widget.subtitle,
                  color: widget.subtitleColor,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 10.0,
                ),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.3,
                ),
                child: DepositsFootnoteText(
                  text: widget.bottomTitle,
                  color: widget.bottomTitleColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DepositsCardSummary extends StatefulWidget {
  final String heading;
  final Color headingColor;
  final String title;
  final Color titleColor;
  final String subtitleOne;
  final Color subtitleOneColor;
  final String subtitleTwo;
  final Color subtitleTwoColor;
  final String bottomTitle;
  final Color bottomTitleColor;
  final String bottomSubtitle;
  final Color bottomSubtitleColor;
  final Color bgColor;
  final Color borderColor;

  const DepositsCardSummary({
    super.key,
    required this.heading,
    this.headingColor = AppColors.textPrimaryColor,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitleOne,
    this.subtitleOneColor = AppColors.neutral600Color,
    required this.subtitleTwo,
    this.subtitleTwoColor = AppColors.errorColor,
    required this.bottomTitle,
    this.bottomTitleColor = AppColors.neutral700Color,
    required this.bottomSubtitle,
    this.bottomSubtitleColor = AppColors.neutral700Color,
    this.bgColor = AppColors.whiteColor,
    this.borderColor = AppColors.neutral200Color,
  });

  @override
  DepositsCardSummaryState createState() {
    return DepositsCardSummaryState();
  }
}

class DepositsCardSummaryState extends State<DepositsCardSummary> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 5.0,
                ),
                child: DepositsH4Text(
                  text: widget.heading,
                  color: widget.headingColor,
                ),
              )
            ],
          ),
          Hr(
            color: widget.borderColor,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 7.0,
                  bottom: 10.0,
                ),
                child: DepositsButtonText(
                  text: widget.title,
                  color: widget.titleColor,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    bottom: 10.0,
                  ),
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
                              fontFamily:
                                  DepositsFontFamilies.SFProText.toString(),
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: widget.subtitleTwo,
                                style: TextStyle(
                                  fontSize: AppDimens.fontSize14,
                                  color: widget.subtitleTwoColor,
                                  fontWeight: FontWeight.w400,
                                  fontFamily:
                                      DepositsFontFamilies.SFProText.toString(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Hr(
            color: widget.borderColor,
          ),
          const VSpacerWidget(
            size: 2.0,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    DepositsH5Text(
                      text: widget.bottomTitle,
                      color: widget.bottomTitleColor,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DepositsH5Text(
                      text: widget.bottomSubtitle,
                      color: widget.bottomSubtitleColor,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DepositsCardSummaryFull extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String bottomTitle;
  final Color bottomTitleColor;
  final String bottomCardOneTitle;
  final Color bottomCardOneTitleColor;
  final Color bottomCardOneBgColor;
  final List<DepositsCardSummaryFullModel> bottomCardOneItems;
  final String bottomCardTwoTitle;
  final Color bottomCardTwoTitleColor;
  final Color bottomCardTwoBgColor;
  final List<DepositsCardSummaryFullModel> bottomCardTwoItems;
  final Color bgColor;
  final Color borderColor;

  const DepositsCardSummaryFull({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.neutral600Color,
    required this.bottomTitle,
    this.bottomTitleColor = AppColors.neutral700Color,
    required this.bottomCardOneTitle,
    this.bottomCardOneTitleColor = AppColors.neutral700Color,
    this.bottomCardOneBgColor = AppColors.neutral200Color,
    required this.bottomCardOneItems,
    required this.bottomCardTwoTitle,
    this.bottomCardTwoTitleColor = AppColors.neutral700Color,
    this.bottomCardTwoBgColor = AppColors.neutral200Color,
    required this.bottomCardTwoItems,
    this.bgColor = AppColors.whiteColor,
    this.borderColor = AppColors.neutral200Color,
  });

  @override
  DepositsCardSummaryFullState createState() {
    return DepositsCardSummaryFullState();
  }
}

class DepositsCardSummaryFullState extends State<DepositsCardSummaryFull> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 5.0,
                ),
                child: DepositsH4Text(
                  text: widget.title,
                  color: widget.titleColor,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 2.0,
                    bottom: 10.0,
                  ),
                  child: DepositsSubheadText(
                    text: widget.subtitle,
                    color: widget.subtitleColor,
                  ),
                ),
              )
            ],
          ),
          Hr(
            color: widget.borderColor,
          ),
          const VSpacerWidget(
            size: 2.0,
          ),
          Row(
            children: [
              DepositsButtonText(
                text: widget.bottomTitle,
                color: widget.bottomTitleColor,
              ),
            ],
          ),
          const VSpacerWidget(
            size: 2.0,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: widget.bottomCardOneBgColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: [
                      const VSpacerWidget(
                        size: 2.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DepositsButtonText(
                            text: widget.bottomCardOneTitle,
                            color: widget.bottomCardOneTitleColor,
                          ),
                        ],
                      ),
                      for (var cardOneItem in widget.bottomCardOneItems)
                        Container(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        DepositsSubheadText(
                                          text: cardOneItem.title,
                                          color: cardOneItem.titleColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        DepositsButtonText(
                                          text: cardOneItem.subtitle,
                                          color: cardOneItem.subtitleColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const VSpacerWidget(
            size: 7.0,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: widget.bottomCardTwoBgColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: [
                      const VSpacerWidget(
                        size: 2.0,
                      ),
                      Row(
                        children: [
                          DepositsButtonText(
                            text: widget.bottomCardTwoTitle,
                            color: widget.bottomCardTwoTitleColor,
                          ),
                        ],
                      ),
                      for (var cardOneItem in widget.bottomCardOneItems)
                        Container(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        DepositsSubheadText(
                                          text: cardOneItem.title,
                                          color: cardOneItem.titleColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        DepositsButtonText(
                                          text: cardOneItem.subtitle,
                                          color: cardOneItem.subtitleColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const VSpacerWidget(
            size: 7.0,
          ),
        ],
      ),
    );
  }
}

class DepositsCardTargetProgressCard extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final int percent;
  final String amountOne;
  final Color amountOneColor;
  final String amountTwo;
  final Color amountTwoColor;
  final Color progressColor;
  final Color progressActiveColor;
  final Color bgColor;
  final Color borderColor;

  const DepositsCardTargetProgressCard({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.neutral600Color,
    required this.percent,
    required this.amountOne,
    this.amountOneColor = AppColors.textPrimaryColor,
    required this.amountTwo,
    this.amountTwoColor = AppColors.neutral500Color,
    this.progressColor = AppColors.blue100Color,
    this.progressActiveColor = AppColors.primaryColor,
    this.bgColor = AppColors.whiteColor,
    this.borderColor = AppColors.neutral200Color,
  });

  @override
  DepositsCardTargetProgressCardState createState() {
    return DepositsCardTargetProgressCardState();
  }
}

class DepositsCardTargetProgressCardState
    extends State<DepositsCardTargetProgressCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: widget.borderColor,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 5.0,
                ),
                child: DepositsH4Text(
                  text: widget.title,
                  color: widget.titleColor,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 2.0,
                    bottom: 10.0,
                  ),
                  child: DepositsSubheadText(
                    text: widget.subtitle,
                    color: widget.subtitleColor,
                  ),
                ),
              )
            ],
          ),
          const VSpacerWidget(
            size: 2.0,
          ),
          Row(
            children: [
              Expanded(
                child: DepositsProgressbar(
                  percent: widget.percent,
                  color: widget.progressColor,
                  activeColor: widget.progressActiveColor,
                ),
              ),
            ],
          ),
          const VSpacerWidget(
            size: 5.0,
          ),
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
                              text: widget.amountOne,
                              style: TextStyle(
                                fontSize: AppDimens.fontSize26,
                                color: widget.amountOneColor,
                                fontWeight: FontWeight.w600,
                                fontFamily: DepositsFontFamilies.SFProDisplay
                                    .toString(),
                              ),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: " / ${widget.amountTwo}",
                                  style: TextStyle(
                                    fontSize: AppDimens.fontSize16,
                                    color: widget.amountTwoColor,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: DepositsFontFamilies
                                        .SFProDisplay.toString(),
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
              )
            ],
          ),
          const VSpacerWidget(
            size: 3.0,
          ),
        ],
      ),
    );
  }
}

class DepositsCardBorderedMain extends StatefulWidget {
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
  final bool showImageDecoration;
  final Color imageBorderColor;
  final Function onTapped;

  const DepositsCardBorderedMain({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.imageColor = AppColors.transparentColor,
    this.bgColor = AppColors.whiteColor,
    required this.rightWidget,
    this.showLeftWidget = true,
    this.showRightWidget = true,
    this.rightWidgetExpandSize = 1,
    this.leftWidgetExpandSize = 2,
    this.rightWidgetTopPadding = 0.0,
    this.allowHorinzontalPadding = true,
    this.imageBorderColor = const Color(0xffF1F5F9),
    this.showImageDecoration = false,
    required this.onTapped,
  });

  @override
  DepositsCardBorderedMainState createState() {
    return DepositsCardBorderedMainState();
  }
}

class DepositsCardBorderedMainState extends State<DepositsCardBorderedMain> {
  int centerWidgetSize = 10;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    if (widget.showLeftWidget == false) {
      centerWidgetSize = centerWidgetSize + 1;
    }
    if (widget.showRightWidget == false) {
      centerWidgetSize = centerWidgetSize + 1;
    }
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 1.0,
                                horizontal:
                                    widget.allowHorinzontalPadding == false
                                        ? 0.0
                                        : 5.0,
                              ),
                              constraints: BoxConstraints(
                                maxHeight: 42.w,
                                maxWidth: 42.w,
                              ),
                              decoration: widget.showImageDecoration == false
                                  ? null
                                  : BoxDecoration(
                                      color: widget.imageColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        width: 1.0,
                                        color: widget.imageBorderColor,
                                      ),
                                    ),
                              child: Center(
                                child: ImageWidget(
                                  imageUrl: widget.image,
                                  imageHeight: 42.w,
                                  imageWidth: 42.w,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
                Expanded(
                  flex: centerWidgetSize,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          bottom: 5.0,
                          left: 8.0,
                        ),
                        child: DepositsH5Text(
                          text: widget.title,
                          color: widget.titleColor,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: ClipRect(
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
                                right: 0.0,
                                top: widget.rightWidgetTopPadding,
                              ),
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

class DepositsCardBorderedOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final Color activeRadioColor;
  final Color bgColor;
  final Color borderColor;
  final DepositsRadioFormState formState;
  final Function onTapped;

  const DepositsCardBorderedOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.neutral600Color,
    this.activeRadioColor = AppColors.primaryColor,
    this.bgColor = AppColors.whiteColor,
    this.borderColor = const Color(0xffE2EDF6),
    this.formState = DepositsRadioFormState.normal,
    required this.onTapped,
  });

  @override
  DepositsCardBorderedOneState createState() {
    return DepositsCardBorderedOneState();
  }
}

class DepositsCardBorderedOneState extends State<DepositsCardBorderedOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 5.0,
      ),
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: widget.borderColor,
        ),
      ),
      child: DepositsContentListSix(
        title: widget.title,
        titleColor: widget.titleColor,
        subtitle: widget.subtitle,
        subtitleColor: widget.subtitleColor,
        activeRadioColor: widget.activeRadioColor,
        bgColor: widget.bgColor,
        formState: widget.formState,
        onTapped: () {
          widget.onTapped();
        },
      ),
    );
  }
}

class DepositsCardBorderedTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color imageColor;
  final Color arrowColor;
  final Color bgColor;
  final Color borderColor;
  final double rightWidgetTopPadding;
  final bool showImageDecoration;
  final Function onTapped;

  const DepositsCardBorderedTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.neutral600Color,
    this.arrowColor = AppColors.neutral700Color,
    this.bgColor = AppColors.whiteColor,
    this.borderColor = const Color(0xffE2EDF6),
    this.imageColor = AppColors.neutral200Color,
    this.rightWidgetTopPadding = 20.0,
    this.showImageDecoration = false,
    required this.image,
    required this.onTapped,
  });

  @override
  DepositsCardBorderedTwoState createState() {
    return DepositsCardBorderedTwoState();
  }
}

class DepositsCardBorderedTwoState extends State<DepositsCardBorderedTwo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 5.0,
      ),
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: widget.borderColor,
        ),
      ),
      child: DepositsCardBorderedMain(
        title: widget.title,
        titleColor: widget.titleColor,
        subtitle: widget.subtitle,
        subtitleColor: widget.subtitleColor,
        image: widget.image,
        imageColor: widget.imageColor,
        rightWidgetExpandSize: 1,
        rightWidgetTopPadding: widget.rightWidgetTopPadding,
        rightWidget: Icon(
          Icons.keyboard_arrow_right,
          color: widget.arrowColor,
        ),
        bgColor: widget.bgColor,
        allowHorinzontalPadding: false,
        showImageDecoration: widget.showImageDecoration,
        onTapped: () {
          widget.onTapped();
        },
      ),
    );
  }
}

class DepositsCardBorderedThree extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color imageColor;
  final String activeBankTitle;
  final Color activeBankTitleColor;
  final String activeBankSubtitle;
  final Color activeBankSubtitleColor;
  final String activeBankImage;
  final List<DepositsBankAccountListModel> bankList;
  final IconData processingFeeIcon;
  final Color processingFeeIconColor;
  final String processingFeeText;
  final Color processingFeeTextColor;
  final Color borderColor;
  final Color bgColor;
  final String buttonText;
  final Color buttonTextColor;
  final Color buttonBorderColor;
  final Color buttonBgColor;
  final Widget buttonIconWidget;
  final Color topWidgetArrowColor;
  final bool showProcessingWidget;
  final bool showListSection;
  final double rightWidgetTopPadding;
  final int leftWidgetExpandSize;
  final Function onPressed;
  final Function onAccountChanged;

  const DepositsCardBorderedThree({
    super.key,
    required this.title,
    this.titleColor = AppColors.neutral700Color,
    required this.subtitle,
    this.subtitleColor = AppColors.neutral600Color,
    required this.image,
    this.imageColor = AppColors.neutral200Color,
    this.bgColor = AppColors.whiteColor,
    this.borderColor = const Color(0xffE2EDF6),
    required this.activeBankTitle,
    this.activeBankTitleColor = AppColors.textPrimaryColor,
    required this.activeBankSubtitle,
    this.activeBankSubtitleColor = AppColors.textSecondaryColor,
    required this.activeBankImage,
    required this.bankList,
    required this.processingFeeIcon,
    this.processingFeeIconColor = const Color(0xff0D7FE9),
    required this.processingFeeText,
    this.processingFeeTextColor = AppColors.neutral700Color,
    required this.buttonText,
    this.buttonTextColor = AppColors.neutral700Color,
    this.buttonBorderColor = const Color(0xffDDF9F3),
    this.buttonBgColor = const Color(0xffDDF9F3),
    required this.buttonIconWidget,
    this.topWidgetArrowColor = AppColors.transparentColor,
    this.showProcessingWidget = true,
    this.showListSection = true,
    this.rightWidgetTopPadding = 0.0,
    this.leftWidgetExpandSize = 2,
    required this.onPressed,
    required this.onAccountChanged,
  });

  @override
  DepositsCardBorderedThreeState createState() {
    return DepositsCardBorderedThreeState();
  }
}

class DepositsCardBorderedThreeState extends State<DepositsCardBorderedThree> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: widget.borderColor,
        ),
      ),
      child: Column(
        children: [
          DepositsCardBorderedMain(
            title: widget.title,
            titleColor: widget.titleColor,
            subtitle: widget.subtitle,
            subtitleColor: widget.subtitleColor,
            image: widget.image,
            imageColor: widget.imageColor,
            rightWidgetExpandSize: 2,
            rightWidget: Icon(
              Icons.keyboard_arrow_right,
              color: widget.topWidgetArrowColor,
            ),
            rightWidgetTopPadding: widget.rightWidgetTopPadding,
            bgColor: widget.bgColor,
            allowHorinzontalPadding: false,
            onTapped: () {},
          ),
          const VSpacerWidget(size: 5.0),
          Hr(color: widget.borderColor),
          const VSpacerWidget(size: 4.0),
          widget.showListSection == false
              ? Container()
              : const Row(
                  children: [
                    DepositsSubheadText(
                      text: "Send to",
                      color: AppColors.neutral700Color,
                    ),
                  ],
                ),
          widget.showListSection == false
              ? Container()
              : const VSpacerWidget(size: 2.0),
          widget.showListSection == false
              ? Container()
              : Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 1.0,
                    horizontal: 1.0,
                  ),
                  decoration: BoxDecoration(
                    color: widget.bgColor,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      width: 1.0,
                      color: widget.borderColor,
                    ),
                  ),
                  child: DepositsListCardAccountFive(
                    title: widget.activeBankTitle,
                    titleColor: widget.activeBankTitleColor,
                    subtitle: widget.activeBankSubtitle,
                    subtitleColor: widget.activeBankSubtitleColor,
                    image: widget.activeBankImage,
                    allowHorinzontalPadding: false,
                    items: widget.bankList,
                    leftWidgetSize: widget.leftWidgetExpandSize,
                    onTapped: () {
                      widget.onAccountChanged();
                    },
                  ),
                ),
          const VSpacerWidget(size: 8.0),
          widget.showProcessingWidget == false
              ? Container()
              : Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Icon(
                            widget.processingFeeIcon,
                            color: widget.processingFeeIconColor,
                            size: 17.0,
                          ),
                        ),
                        Row(
                          children: [
                            DepositsSubheadText(
                              text: widget.processingFeeText,
                              color: widget.processingFeeTextColor,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
          const VSpacerWidget(size: 3.0),
          Row(
            children: [
              Expanded(
                child: DepositsButtonWithIconWidget(
                  text: widget.buttonText,
                  textColor: widget.buttonTextColor,
                  bgColor: widget.buttonBgColor,
                  borderColor: widget.buttonBorderColor,
                  iconWidget: widget.buttonIconWidget,
                  size: DepositsButtonSize.huge,
                  onPressed: () {
                    widget.onPressed();
                  },
                ),
              )
            ],
          ),
          const VSpacerWidget(size: 3.0),
        ],
      ),
    );
  }
}

class DepositsCardInvoice extends StatefulWidget {
  final String title;
  final Color titleColor;
  final Color bgColor;
  final String addText;
  final Color addTextColor;
  final String totalText;
  final Color totalTextColor;
  final Color borderBottomColor;
  final List<DepositsInvoiceItemModel> items;
  final Function onAddItemClicked;

  const DepositsCardInvoice({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.addText,
    this.addTextColor = AppColors.primaryColor,
    required this.totalText,
    this.totalTextColor = AppColors.textSecondaryColor,
    this.borderBottomColor = AppColors.neutral100Color,
    this.bgColor = AppColors.whiteColor,
    required this.items,
    required this.onAddItemClicked,
  });

  @override
  DepositsCardInvoiceState createState() {
    return DepositsCardInvoiceState();
  }
}

class DepositsCardInvoiceState extends State<DepositsCardInvoice> {
  double total = 0.0;
  var currency = "";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(
        () {
          calculateTotal();
        },
      );
    });
  }

  calculateTotal() {
    for (var i = 0; i < widget.items.length; i++) {
      total = total + widget.items[i].amount;
      currency = widget.items[i].currency;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.bgColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              DepositsH3Text(
                text: widget.title,
                color: widget.titleColor,
              ),
            ],
          ),
          const VSpacerWidget(size: 5.0),
          for (var thisItem in widget.items)
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 7.0,
                horizontal: 0.0,
              ),
              decoration: BoxDecoration(
                color: widget.bgColor,
                borderRadius: BorderRadius.circular(8.0),
                border: Border(
                  bottom: BorderSide(
                    width: 1.0,
                    color: widget.borderBottomColor,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: DepositsBodyText(
                      text: thisItem.title,
                      color: AppColors.textSecondaryColor,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DepositsH5Text(
                          text: "${thisItem.currency}${thisItem.amount}",
                          color: AppColors.textPrimaryColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          const VSpacerWidget(size: 8.0),
          Row(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Icon(
                      Icons.add,
                      color: widget.addTextColor,
                      size: 17.0,
                    ),
                  ),
                  Row(
                    children: [
                      DepositsSubheadText(
                        text: widget.addText,
                        color: widget.addTextColor,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          const VSpacerWidget(size: 10.0),
          widget.items.isEmpty
              ? Container()
              : Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(40.0),
                        decoration: BoxDecoration(
                            color: AppColors.neutral100Color,
                            border: Border.all(
                              width: 0.5,
                              color: AppColors.neutral100Color,
                            ),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                DepositsBodyText(
                                  text: widget.totalText,
                                  color: widget.totalTextColor,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                DepositsH1Text(
                                  text: "$currency$total",
                                  color: AppColors.textPrimaryColor,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
        ],
      ),
    );
  }
}

class DepositsCardScanOne extends StatefulWidget {
  final Widget centerWidget;
  final Color bgColor;
  final Color borderColor;
  final String buttonText;
  final Color buttonTextColor;
  final Color buttonBgColor;
  final Function onButtonPressed;

  const DepositsCardScanOne({
    super.key,
    required this.centerWidget,
    required this.buttonText,
    this.buttonTextColor = AppColors.blackColor,
    this.buttonBgColor = AppColors.cyan500Color,
    this.bgColor = AppColors.blackColor,
    this.borderColor = AppColors.whiteColor,
    required this.onButtonPressed,
  });

  @override
  DepositsCardScanOneState createState() {
    return DepositsCardScanOneState();
  }
}

class DepositsCardScanOneState extends State<DepositsCardScanOne> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      decoration: BoxDecoration(
        color: widget.bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.84,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        width: 1.0,
                        color: widget.borderColor,
                      ),
                    ),
                    child: widget.centerWidget,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: DepositsButtonWidget(
                    text: widget.buttonText,
                    textColor: widget.buttonTextColor,
                    bgColor: widget.buttonBgColor,
                    borderColor: widget.buttonBgColor,
                    onPressed: widget.onButtonPressed,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DepositsCardScanTwo extends StatefulWidget {
  final Widget centerWidget;
  final Color bgColor;
  final Color borderColor;
  final String buttonText;
  final Color buttonTextColor;
  final Color buttonBgColor;
  final Function onButtonPressed;

  const DepositsCardScanTwo({
    super.key,
    required this.centerWidget,
    required this.buttonText,
    this.buttonTextColor = AppColors.blackColor,
    this.buttonBgColor = AppColors.cyan500Color,
    this.bgColor = AppColors.blackColor,
    this.borderColor = AppColors.whiteColor,
    required this.onButtonPressed,
  });

  @override
  DepositsCardScanTwoState createState() {
    return DepositsCardScanTwoState();
  }
}

class DepositsCardScanTwoState extends State<DepositsCardScanTwo> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      decoration: BoxDecoration(
        color: widget.bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        width: 1.0,
                        color: widget.borderColor,
                      ),
                    ),
                    child: widget.centerWidget,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: DepositsButtonWidget(
                    text: widget.buttonText,
                    textColor: widget.buttonTextColor,
                    bgColor: widget.buttonBgColor,
                    borderColor: widget.buttonBgColor,
                    onPressed: widget.onButtonPressed,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DepositsCardScanThree extends StatefulWidget {
  final Widget centerWidget;
  final String title;
  final Color titleColor;
  final Color bgColor;
  final Color borderColor;
  final String buttonText;
  final Color buttonTextColor;
  final Color buttonBgColor;
  final Function onButtonPressed;

  const DepositsCardScanThree({
    super.key,
    required this.centerWidget,
    required this.title,
    this.titleColor = AppColors.whiteColor,
    required this.buttonText,
    this.buttonTextColor = AppColors.blackColor,
    this.buttonBgColor = AppColors.cyan500Color,
    this.bgColor = AppColors.blackColor,
    this.borderColor = AppColors.whiteColor,
    required this.onButtonPressed,
  });

  @override
  DepositsCardScanThreeState createState() {
    return DepositsCardScanThreeState();
  }
}

class DepositsCardScanThreeState extends State<DepositsCardScanThree> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      decoration: BoxDecoration(
        color: widget.bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(
                            width: 1.0,
                            color: widget.borderColor,
                          ),
                        ),
                        child: widget.centerWidget,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: DepositsH5Text(
                          text: widget.title,
                          color: widget.titleColor,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: DepositsButtonWidget(
                    text: widget.buttonText,
                    textColor: widget.buttonTextColor,
                    bgColor: widget.buttonBgColor,
                    borderColor: widget.buttonBgColor,
                    onPressed: widget.onButtonPressed,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
