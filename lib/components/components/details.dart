import 'package:clipboard/clipboard.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:flutter/material.dart';

class DepositsDetailsCopyOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final Color copyIconColor;
  final Color visibleIconColor;
  final bool showVisibleIcon;
  final bool isVisible;
  final bool showCenterWidget;
  final Widget centerWidget;
  final Color borderBottomColor;
  final Color bgColor;
  final Function onCopyIconTapped;

  const DepositsDetailsCopyOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textSecondaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textPrimaryColor,
    this.copyIconColor = AppColors.neutral500Color,
    this.visibleIconColor = AppColors.neutral500Color,
    this.showVisibleIcon = true,
    this.isVisible = true,
    this.showCenterWidget = false,
    required this.centerWidget,
    this.bgColor = AppColors.neutral100Color,
    this.borderBottomColor = AppColors.transparentColor,
    required this.onCopyIconTapped,
  });

  @override
  DepositsDetailsCopyOneState createState() {
    return DepositsDetailsCopyOneState();
  }
}

class DepositsDetailsCopyOneState extends State<DepositsDetailsCopyOne> {
  bool showVisibleIcon = true;
  bool isVisible = true;
  var subtitle = "";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isVisible = widget.isVisible;
        showVisibleIcon = widget.showVisibleIcon;
        manageSubtitle();
      });
    });
  }

  manageSubtitle() {
    if (isVisible == false) {
      subtitle = "";
      var subtitleString = widget.subtitle.toString().replaceAll(" ", "");
      for (var i = 0; i < subtitleString.length; i++) {
        subtitle = "$subtitle*";
      }
    } else {
      subtitle = widget.subtitle;
    }
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
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: widget.borderBottomColor,
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: Row(
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 120.0),
                  child: DepositsBodyText(
                    text: widget.title,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: widget.showCenterWidget == false ? 9 : 6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: DepositsH5Text(
                        text: subtitle,
                      ),
                    ),
                  ],
                ),
              ),
              widget.showCenterWidget == false
                  ? Container()
                  : Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          widget.centerWidget,
                        ],
                      ),
                    ),
              widget.showVisibleIcon == false
                  ? Container()
                  : Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (isVisible == true) {
                                isVisible = false;
                              } else {
                                isVisible = true;
                              }
                              setState(() {
                                manageSubtitle();
                              });
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: isVisible == true
                                  ? Icon(
                                      Icons.visibility,
                                      color: widget.visibleIconColor,
                                      size: 15.0,
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: widget.visibleIconColor,
                                      size: 15.0,
                                    ),
                            ),
                          )
                        ],
                      ),
                    ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        FlutterClipboard.copy(widget.subtitle).then((value) {});
                        widget.onCopyIconTapped();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Icon(
                          Icons.copy,
                          color: widget.visibleIconColor,
                          size: 15.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DepositsDetailsCopyTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final Color copyIconColor;
  final Color visibleIconColor;
  final bool showVisibleIcon;
  final bool isVisible;
  final Color bgColor;
  final Function onCopyIconTapped;

  const DepositsDetailsCopyTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.textSecondaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textPrimaryColor,
    this.copyIconColor = AppColors.neutral500Color,
    this.visibleIconColor = AppColors.neutral500Color,
    this.showVisibleIcon = true,
    this.isVisible = true,
    this.bgColor = AppColors.neutral100Color,
    required this.onCopyIconTapped,
  });

  @override
  DepositsDetailsCopyTwoState createState() {
    return DepositsDetailsCopyTwoState();
  }
}

class DepositsDetailsCopyTwoState extends State<DepositsDetailsCopyTwo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsListCopyField(
      title: widget.title,
      titleColor: widget.titleColor,
      subtitle: widget.subtitle,
      subtitleColor: widget.subtitleColor,
      copyIconColor: widget.copyIconColor,
      visibleIconColor: widget.visibleIconColor,
      showVisibleIcon: widget.showVisibleIcon,
      isVisible: widget.isVisible,
      bgColor: widget.bgColor,
      onCopyIconTapped: () {
        widget.onCopyIconTapped();
      },
    );
  }
}

class DepositsDetailsCardOne extends StatefulWidget {
  final List<DepositsCardDetailModel> items;
  final Color bgColor;
  final Color borderBottomColor;

  const DepositsDetailsCardOne({
    super.key,
    required this.items,
    this.bgColor = AppColors.whiteColor,
    this.borderBottomColor = const Color(0xffE2E8F0),
  });

  @override
  DepositsDetailsCardOneState createState() {
    return DepositsDetailsCardOneState();
  }
}

class DepositsDetailsCardOneState extends State<DepositsDetailsCardOne> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          for (var thisItem in widget.items)
            thisItem.title.isEmpty || thisItem.subtitle.isEmpty
                ? Container()
                : DepositsDetailsCopyOne(
                    title: thisItem.title,
                    titleColor: AppColors.neutral500Color,
                    subtitle: thisItem.subtitle,
                    subtitleColor: AppColors.neutral700Color,
                    showVisibleIcon: thisItem.showVisibleIcon,
                    isVisible: thisItem.isVisible,
                    showCenterWidget: thisItem.showCenterWidget,
                    centerWidget: thisItem.centerWidget,
                    bgColor: widget.bgColor,
                    borderBottomColor: widget.borderBottomColor,
                    onCopyIconTapped: () {},
                  ),
        ],
      ),
    );
  }
}

class DepositsDetailsCardTwo extends StatefulWidget {
  final List<DepositsCardDetailModel> items;
  final String title;
  final Color titleColor;
  final Color bgColor;
  final Color borderBottomColor;

  const DepositsDetailsCardTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.whiteColor,
    required this.items,
    this.bgColor = AppColors.whiteColor,
    this.borderBottomColor = const Color(0xffE2E8F0),
  });

  @override
  DepositsDetailsCardTwoState createState() {
    return DepositsDetailsCardTwoState();
  }
}

class DepositsDetailsCardTwoState extends State<DepositsDetailsCardTwo> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              DepositsH5Text(
                text: widget.title,
                color: widget.titleColor,
              )
            ],
          ),
          const VSpacerWidget(
            size: 7.0,
          ),
          for (var thisItem in widget.items)
            thisItem.title.isEmpty || thisItem.subtitle.isEmpty
                ? Container()
                : Column(
                    children: [
                      DepositsDetailsCopyTwo(
                        title: thisItem.title,
                        titleColor: AppColors.neutral500Color,
                        subtitle: thisItem.subtitle,
                        subtitleColor: AppColors.neutral700Color,
                        showVisibleIcon: thisItem.showVisibleIcon,
                        isVisible: thisItem.isVisible,
                        bgColor: AppColors.neutral100Color,
                        onCopyIconTapped: () {},
                      ),
                      const VSpacerWidget(size: 8.0),
                    ],
                  ),
        ],
      ),
    );
  }
}

class DepositsDetailsMobileTable extends StatefulWidget {
  final List<DepositsCardMobileTableModel> items;
  final List<String> heading;
  final String title;
  final Color titleColor;
  final Color bgColor;
  final Color headTextColor;
  final Color itemTextColor;
  final Color borderBottomColor;
  final IconData icon;
  final Color iconColor;

  const DepositsDetailsMobileTable({
    super.key,
    required this.title,
    this.titleColor = AppColors.neutral700Color,
    required this.items,
    required this.heading,
    this.icon = Icons.credit_card,
    this.iconColor = AppColors.neutral500Color,
    this.bgColor = AppColors.whiteColor,
    this.headTextColor = AppColors.neutral500Color,
    this.itemTextColor = AppColors.neutral700Color,
    this.borderBottomColor = AppColors.neutral200Color,
  });

  @override
  DepositsDetailsMobileTableState createState() {
    return DepositsDetailsMobileTableState();
  }
}

class DepositsDetailsMobileTableState
    extends State<DepositsDetailsMobileTable> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              DepositsH4Text(
                text: widget.title,
                color: widget.titleColor,
              )
            ],
          ),
          const VSpacerWidget(
            size: 7.0,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.5,
                      color: widget.borderBottomColor,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    for (var thisHead in widget.heading)
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment:
                              widget.heading.indexOf(thisHead) == 0
                                  ? MainAxisAlignment.start
                                  : widget.heading.indexOf(thisHead) ==
                                          widget.heading.length - 1
                                      ? MainAxisAlignment.end
                                      : MainAxisAlignment.center,
                          children: [
                            DepositsSubheadText(
                              text: thisHead,
                              color: widget.headTextColor,
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              const VSpacerWidget(size: 8.0),
            ],
          ),
          for (var thisItem in widget.items)
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 0.5,
                        color: widget.borderBottomColor,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 3.0),
                              child: Icon(
                                widget.icon,
                                color: widget.iconColor,
                              ),
                            ),
                            DepositsBodyText(
                              text: thisItem.card,
                              color: widget.itemTextColor,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DepositsBodyText(
                              text: thisItem.type,
                              color: widget.itemTextColor,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            DepositsBodyText(
                              text: thisItem.balance,
                              color: widget.itemTextColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const VSpacerWidget(size: 7.0),
              ],
            ),
        ],
      ),
    );
  }
}

class DepositsDetailsStackMain extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitleOne;
  final Color subtitleOneColor;
  final String subtitleTwo;
  final Color subtitleTwoColor;
  final String image;
  final Color borderColor;
  final Color bgColor;
  final Widget rightWidget;
  final int rightWidgetExpandSize;
  final bool allowHorinzontalPadding;
  final Function onTapped;

  const DepositsDetailsStackMain({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitleOne,
    this.subtitleOneColor = AppColors.textSecondaryColor,
    required this.subtitleTwo,
    this.subtitleTwoColor = AppColors.textSecondaryColor,
    required this.image,
    this.borderColor = AppColors.neutral200Color,
    this.bgColor = AppColors.whiteColor,
    required this.rightWidget,
    this.rightWidgetExpandSize = 6,
    this.allowHorinzontalPadding = true,
    required this.onTapped,
  });

  @override
  DepositsDetailsStackMainState createState() {
    return DepositsDetailsStackMainState();
  }
}

class DepositsDetailsStackMainState extends State<DepositsDetailsStackMain> {
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
          vertical: 5.0,
          horizontal: widget.allowHorinzontalPadding == false ? 0.0 : 5.0,
        ),
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            width: 1.0,
            color: widget.borderColor,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Container(
                        height: 48.0,
                        width: 48.0,
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: widget.allowHorinzontalPadding == false
                              ? 0.0
                              : 5.0,
                        ),
                        constraints: const BoxConstraints(
                            maxHeight: 40.0, maxWidth: 40.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Center(
                          child: ImageWidget(imageUrl: widget.image),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 8,
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
                          Row(
                            children: [
                              ClipRect(
                                child: Wrap(
                                  clipBehavior: Clip.antiAlias,
                                  children: [
                                    DepositsSubheadText(
                                      text: widget.subtitleOne,
                                      color: widget.subtitleOneColor,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          widget.subtitleTwo == ""
                              ? Container()
                              : Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0,
                                      ),
                                      child: const Icon(
                                        Icons.circle,
                                        size: 5.0,
                                        color: AppColors.textSecondaryColor,
                                      ),
                                    )
                                  ],
                                ),
                          widget.subtitleTwo == ""
                              ? Container()
                              : Row(
                                  children: [
                                    ClipRect(
                                      child: Wrap(
                                        clipBehavior: Clip.antiAlias,
                                        children: [
                                          DepositsSubheadText(
                                            text: widget.subtitleTwo,
                                            color: widget.subtitleTwoColor,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: widget.rightWidgetExpandSize,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        // constraints: BoxConstraints(
                        //     maxWidth: MediaQuery.of(context).size.width * 0.3),
                        padding: EdgeInsets.only(
                          right: widget.allowHorinzontalPadding == false
                              ? 5.0
                              : 1.0,
                        ),
                        child: widget.rightWidget,
                      ),
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

class DepositsDetailsStackOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitleOne;
  final Color subtitleOneColor;
  final String subtitleTwo;
  final Color subtitleTwoColor;
  final String image;
  final Color bgColor;
  final Function onTapped;

  const DepositsDetailsStackOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitleOne,
    this.subtitleOneColor = AppColors.textSecondaryColor,
    required this.subtitleTwo,
    this.subtitleTwoColor = AppColors.textSecondaryColor,
    required this.image,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsDetailsStackOneState createState() {
    return DepositsDetailsStackOneState();
  }
}

class DepositsDetailsStackOneState extends State<DepositsDetailsStackOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsDetailsStackMain(
      title: widget.title,
      titleColor: widget.titleColor,
      subtitleOne: widget.subtitleOne,
      subtitleOneColor: widget.subtitleOneColor,
      subtitleTwo: widget.subtitleTwo,
      subtitleTwoColor: widget.subtitleTwoColor,
      image: widget.image,
      rightWidget: Container(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 0.0,
                        vertical: 0.0,
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.neutral500Color,
                        size: 20.0,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      onTapped: widget.onTapped,
    );
  }
}

class DepositsDetailsStackTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color bgColor;
  final Function onTapped;

  const DepositsDetailsStackTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsDetailsStackTwoState createState() {
    return DepositsDetailsStackTwoState();
  }
}

class DepositsDetailsStackTwoState extends State<DepositsDetailsStackTwo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsDetailsStackMain(
      title: widget.title,
      titleColor: widget.titleColor,
      subtitleOne: widget.subtitle,
      subtitleOneColor: widget.subtitleColor,
      subtitleTwo: "",
      image: widget.image,
      rightWidget: Container(
        padding: const EdgeInsets.only(top: 0.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 0.0,
                        vertical: 3.0,
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.neutral500Color,
                        size: 20.0,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      onTapped: widget.onTapped,
    );
  }
}

class DepositsDetailsStackFormMain extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String image;
  final Color borderColor;
  final Color bgColor;
  final Widget rightWidget;
  final int rightWidgetExpandSize;
  final bool isBold;
  final bool allowHorinzontalPadding;
  final Function onTapped;

  const DepositsDetailsStackFormMain({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.image,
    this.borderColor = AppColors.neutral200Color,
    this.bgColor = AppColors.whiteColor,
    required this.rightWidget,
    this.rightWidgetExpandSize = 6,
    this.isBold = true,
    this.allowHorinzontalPadding = true,
    required this.onTapped,
  });

  @override
  DepositsDetailsStackFormMainState createState() {
    return DepositsDetailsStackFormMainState();
  }
}

class DepositsDetailsStackFormMainState
    extends State<DepositsDetailsStackFormMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: widget.allowHorinzontalPadding == false ? 0.0 : 5.0,
        ),
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            width: 1.0,
            color: widget.borderColor,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Container(
                        height: 48.0,
                        width: 48.0,
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: widget.allowHorinzontalPadding == false
                              ? 0.0
                              : 5.0,
                        ),
                        constraints: const BoxConstraints(
                            maxHeight: 40.0, maxWidth: 40.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Center(
                          child: ImageWidget(imageUrl: widget.image),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: widget.isBold == true
                                ? DepositsH5Text(
                                    text: widget.title,
                                    color: widget.titleColor,
                                  )
                                : DepositsBodyText(
                                    text: widget.title,
                                    color: widget.titleColor,
                                  ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: widget.rightWidgetExpandSize,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        // constraints: BoxConstraints(
                        //     maxWidth: MediaQuery.of(context).size.width * 0.3),
                        padding: EdgeInsets.only(
                          right: widget.allowHorinzontalPadding == false
                              ? 5.0
                              : 1.0,
                        ),
                        child: widget.rightWidget,
                      ),
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

class DepositsDetailsStackFormOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String image;
  final Color bgColor;
  final Function onTapped;

  const DepositsDetailsStackFormOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.image,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsDetailsStackFormOneState createState() {
    return DepositsDetailsStackFormOneState();
  }
}

class DepositsDetailsStackFormOneState
    extends State<DepositsDetailsStackFormOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsDetailsStackFormMain(
      title: widget.title,
      titleColor: widget.titleColor,
      image: widget.image,
      isBold: true,
      rightWidget: Container(
        padding: const EdgeInsets.only(top: 0.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: DepositsRadio(
                        title: "",
                        onTapped: (a) {
                          widget.onTapped(a);
                        },
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      onTapped: () {},
    );
  }
}

class DepositsDetailsStackFormTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String image;
  final Color iconColor;
  final Color borderColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsDetailsStackFormTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.whiteColor,
    required this.image,
    this.iconColor = AppColors.whiteColor,
    this.borderColor = AppColors.cyan500Color,
    this.bgColor = AppColors.cyan600Color,
    required this.onTapped,
  });

  @override
  DepositsDetailsStackFormTwoState createState() {
    return DepositsDetailsStackFormTwoState();
  }
}

class DepositsDetailsStackFormTwoState
    extends State<DepositsDetailsStackFormTwo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsDetailsStackFormMain(
      title: widget.title,
      titleColor: widget.titleColor,
      borderColor: widget.borderColor,
      bgColor: widget.bgColor,
      image: widget.image,
      isBold: false,
      rightWidget: Container(
        padding: const EdgeInsets.only(top: 0.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: widget.iconColor,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      onTapped: widget.onTapped,
    );
  }
}

class DepositsDetailsCardIndicator extends StatefulWidget {
  final int totalIndex;
  final int activeIndex;
  final Color activeColor;
  final Color nonactiveColor;
  final Function onChanged;

  const DepositsDetailsCardIndicator({
    super.key,
    required this.totalIndex,
    required this.activeIndex,
    this.activeColor = AppColors.cyan500Color,
    this.nonactiveColor = AppColors.cyan200Color,
    required this.onChanged,
  });

  @override
  DepositsDetailsCardIndicatorState createState() {
    return DepositsDetailsCardIndicatorState();
  }
}

class DepositsDetailsCardIndicatorState
    extends State<DepositsDetailsCardIndicator> {
  int activeIndex = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        activeIndex = widget.activeIndex;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            for (var i = 0; i < widget.totalIndex; i++)
              i == activeIndex
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activeIndex = i;
                          });
                          widget.onChanged(i);
                        },
                        child: Container(
                          width: 20.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color: widget.activeColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activeIndex = i;
                          });
                          widget.onChanged(i);
                        },
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color: widget.nonactiveColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
          ],
        )
      ],
    );
  }
}

class DepositsDetailsBalanceCardOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String amount;
  final Color amountColor;
  final String subtitle;
  final Color subtitleColor;
  final Color subtitleBgColor;
  final Color borderColor;
  final Color bgColor;
  final Function? onTapped;

  const DepositsDetailsBalanceCardOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.neutral600Color,
    required this.amount,
    this.amountColor = AppColors.neutral700Color,
    required this.subtitle,
    this.subtitleColor = AppColors.neutral500Color,
    this.subtitleBgColor = AppColors.neutral100Color,
    this.borderColor = AppColors.textPrimaryColor,
    this.bgColor = AppColors.whiteColor,
    this.onTapped,
  });

  @override
  DepositsDetailsBalanceCardOneState createState() {
    return DepositsDetailsBalanceCardOneState();
  }
}

class DepositsDetailsBalanceCardOneState
    extends State<DepositsDetailsBalanceCardOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            width: 0.7,
            color: widget.borderColor,
          ),
        ),
        child: Column(
          children: [
            const VSpacerWidget(size: 10.0),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DepositsSubheadText(
                        text: widget.title,
                        color: widget.titleColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const VSpacerWidget(size: 2.0),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DepositsH1Text(
                        text: widget.amount,
                        color: widget.amountColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const VSpacerWidget(size: 4.0),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: widget.subtitleBgColor,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                          horizontal: 10.0,
                        ),
                        child: DepositsSubheadText(
                          text: widget.subtitle,
                          color: widget.subtitleColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const VSpacerWidget(size: 10.0),
          ],
        ),
      ),
    );
  }
}

class DepositsDetailsBalanceCardTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final bool isVisible;
  final String subtitle;
  final Color subtitleColor;
  final Function? onTapped;

  const DepositsDetailsBalanceCardTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.neutral600Color,
    this.isVisible = true,
    required this.subtitle,
    this.subtitleColor = AppColors.neutral500Color,
    this.onTapped,
  });

  @override
  DepositsDetailsBalanceCardTwoState createState() {
    return DepositsDetailsBalanceCardTwoState();
  }
}

class DepositsDetailsBalanceCardTwoState
    extends State<DepositsDetailsBalanceCardTwo> {
  bool isVisible = true;
  var title = "";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isVisible = widget.isVisible;
        manageTitle();
      });
    });
  }

  manageTitle() {
    if (isVisible == false) {
      title = "";
      var titleString = widget.title.toString().replaceAll(" ", "");
      for (var i = 0; i < titleString.length; i++) {
        title = "$title*";
      }
    } else {
      title = widget.title;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 2.0,
        ),
        child: Column(
          children: [
            const VSpacerWidget(size: 10.0),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DepositsH1Text(
                        text: title,
                        color: widget.titleColor,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: IconButton(
                          onPressed: () {
                            setState(
                              () {
                                if (isVisible == true) {
                                  isVisible = false;
                                } else {
                                  isVisible = true;
                                }
                                manageTitle();
                              },
                            );
                          },
                          icon: isVisible == true
                              ? Icon(
                                  Icons.visibility_off,
                                  size: 24.0,
                                  color: widget.titleColor,
                                )
                              : Icon(
                                  Icons.visibility,
                                  size: 24.0,
                                  color: widget.titleColor,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const VSpacerWidget(size: 2.0),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DepositsSubheadText(
                        text: widget.subtitle,
                        color: widget.subtitleColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const VSpacerWidget(size: 10.0),
          ],
        ),
      ),
    );
  }
}

class DepositsDetailsBalanceCardThree extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String amount;
  final Color amountColor;
  final String bottomCardHeading;
  final Color bottomCardHeadingColor;
  final String bottomCardTitleOne;
  final Color bottomCardTitleOneColor;
  final String bottomCardSubtitleOne;
  final Color bottomCardSubtitleOneColor;
  final IconData bottomCardSubtitleOneIcon;
  final Color bottomCardSubtitleOneIconColor;
  final String bottomCardTitleTwo;
  final Color bottomCardTitleTwoColor;
  final String bottomCardSubtitleTwo;
  final Color bottomCardSubtitleTwoColor;
  final IconData bottomCardSubtitleTwoIcon;
  final Color bottomCardSubtitleTwoIconColor;
  final int bottomCardPercent;
  final Color bottomCardPercentColor;
  final Color bottomCardPercentActiveColor;
  final Color bottomCardBgColor;
  final Color borderColor;
  final Color bgColor;
  final Function? onTapped;

  const DepositsDetailsBalanceCardThree({
    super.key,
    required this.title,
    this.titleColor = AppColors.neutral600Color,
    required this.amount,
    this.amountColor = AppColors.neutral700Color,
    required this.bottomCardHeading,
    this.bottomCardHeadingColor = AppColors.neutral700Color,
    required this.bottomCardTitleOne,
    this.bottomCardTitleOneColor = AppColors.neutral700Color,
    required this.bottomCardSubtitleOne,
    this.bottomCardSubtitleOneColor = AppColors.neutral600Color,
    required this.bottomCardSubtitleOneIcon,
    this.bottomCardSubtitleOneIconColor = AppColors.neutral500Color,
    required this.bottomCardTitleTwo,
    this.bottomCardTitleTwoColor = AppColors.neutral700Color,
    required this.bottomCardSubtitleTwo,
    this.bottomCardSubtitleTwoColor = AppColors.neutral600Color,
    required this.bottomCardSubtitleTwoIcon,
    this.bottomCardSubtitleTwoIconColor = AppColors.neutral500Color,
    required this.bottomCardPercent,
    this.bottomCardPercentColor = AppColors.neutral200Color,
    this.bottomCardPercentActiveColor = AppColors.primaryColor,
    this.bottomCardBgColor = AppColors.neutral100Color,
    this.borderColor = AppColors.textPrimaryColor,
    this.bgColor = AppColors.whiteColor,
    this.onTapped,
  });

  @override
  DepositsDetailsBalanceCardThreeState createState() {
    return DepositsDetailsBalanceCardThreeState();
  }
}

class DepositsDetailsBalanceCardThreeState
    extends State<DepositsDetailsBalanceCardThree> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapped!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            width: 0.7,
            color: widget.borderColor,
          ),
        ),
        child: Column(
          children: [
            const VSpacerWidget(size: 10.0),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DepositsSubheadText(
                        text: widget.title,
                        color: widget.titleColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const VSpacerWidget(size: 2.0),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DepositsH1Text(
                        text: widget.amount,
                        color: widget.amountColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const VSpacerWidget(size: 10.0),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                color: widget.bottomCardBgColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            DepositsSubheadText(
                              text: widget.bottomCardHeading,
                              color: widget.bottomCardHeadingColor,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2.0,
                              ),
                              child: DepositsButtonText(
                                text: widget.bottomCardTitleOne,
                                color: widget.bottomCardTitleOneColor,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2.0,
                              ),
                              child: DepositsSubheadText(
                                text: widget.bottomCardSubtitleOne,
                                color: widget.bottomCardSubtitleOneColor,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2.0,
                              ),
                              child: Icon(
                                widget.bottomCardSubtitleOneIcon,
                                color: widget.bottomCardSubtitleOneIconColor,
                                size: 20.0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const VSpacerWidget(size: 3.0),
                  Row(
                    children: [
                      Expanded(
                        child: DepositsProgressbar(
                          percent: widget.bottomCardPercent,
                          color: widget.bottomCardPercentColor,
                          activeColor: widget.bottomCardPercentActiveColor,
                        ),
                      )
                    ],
                  ),
                  const VSpacerWidget(size: 3.0),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2.0,
                              ),
                              child: DepositsButtonText(
                                text: widget.bottomCardTitleTwo,
                                color: widget.bottomCardTitleTwoColor,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2.0,
                              ),
                              child: DepositsSubheadText(
                                text: widget.bottomCardSubtitleTwo,
                                color: widget.bottomCardSubtitleTwoColor,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2.0,
                              ),
                              child: Icon(
                                widget.bottomCardSubtitleTwoIcon,
                                color: widget.bottomCardSubtitleTwoIconColor,
                                size: 20.0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const VSpacerWidget(size: 5.0),
          ],
        ),
      ),
    );
  }
}

class DepositsDetailsCollapsibleMain extends StatefulWidget {
  final String title;
  final Color titleColor;
  final Color iconColor;
  final Color bgColor;
  final Color borderColor;
  final bool isOpen;
  final Widget bottomWidget;

  const DepositsDetailsCollapsibleMain({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    this.iconColor = AppColors.textPrimaryColor,
    this.bgColor = AppColors.whiteColor,
    this.borderColor = AppColors.neutral200Color,
    this.isOpen = false,
    required this.bottomWidget,
  });

  @override
  DepositsDetailsCollapsibleMainState createState() {
    return DepositsDetailsCollapsibleMainState();
  }
}

class DepositsDetailsCollapsibleMainState
    extends State<DepositsDetailsCollapsibleMain> {
  bool isOpen = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isOpen = widget.isOpen;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isOpen == true) {
            isOpen = false;
          } else {
            isOpen = true;
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 8.0,
        ),
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            width: 1.0,
            color: widget.borderColor,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 9,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 5.0,
                        ),
                        child: DepositsH4Text(
                          text: widget.title,
                          color: widget.titleColor,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        child: Icon(
                          isOpen == true
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_right,
                          size: 20.0,
                          color: widget.iconColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            isOpen == false
                ? Container()
                : Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 0.5,
                          color: widget.borderColor,
                        ),
                      ),
                    ),
                    child: widget.bottomWidget,
                  )
          ],
        ),
      ),
    );
  }
}

class DepositsDetailsCollapsibleOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final Color iconColor;
  final String subtitle;
  final Color subtitleColor;
  final String itemOneTitle;
  final Color itemOneTitleColor;
  final String itemOneSubtitle;
  final Color itemOneSubtitleColor;
  final String bottomTitle;
  final Color bottomTitleColor;
  final Color bgColor;
  final Color borderColor;
  final bool isOpen;

  const DepositsDetailsCollapsibleOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    this.iconColor = AppColors.neutral500Color,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.itemOneTitle,
    this.itemOneTitleColor = AppColors.textPrimaryColor,
    required this.itemOneSubtitle,
    this.itemOneSubtitleColor = AppColors.textPrimaryColor,
    required this.bottomTitle,
    this.bottomTitleColor = AppColors.textTertiaryColor,
    this.bgColor = AppColors.whiteColor,
    this.borderColor = AppColors.neutral200Color,
    this.isOpen = false,
  });

  @override
  DepositsDetailsCollapsibleOneState createState() {
    return DepositsDetailsCollapsibleOneState();
  }
}

class DepositsDetailsCollapsibleOneState
    extends State<DepositsDetailsCollapsibleOne> {
  bool isOpen = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isOpen = widget.isOpen;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DepositsDetailsCollapsibleMain(
      title: widget.title,
      titleColor: widget.titleColor,
      iconColor: widget.iconColor,
      bgColor: widget.bgColor,
      borderColor: widget.borderColor,
      isOpen: widget.isOpen,
      bottomWidget: Column(
        children: [
          const VSpacerWidget(size: 5.0),
          Row(
            children: [
              Expanded(
                child: DepositsSubheadText(
                  text: widget.subtitle,
                  color: widget.subtitleColor,
                ),
              )
            ],
          ),
          const VSpacerWidget(size: 5.0),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    DepositsH5Text(
                      text: widget.itemOneTitle,
                      color: widget.itemOneTitleColor,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DepositsH5Text(
                      text: widget.itemOneSubtitle,
                      color: widget.itemOneSubtitleColor,
                    )
                  ],
                ),
              )
            ],
          ),
          const VSpacerWidget(size: 5.0),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 0.5,
                  color: widget.borderColor,
                ),
              ),
            ),
            child: Column(
              children: [
                const VSpacerWidget(size: 3.0),
                Row(
                  children: [
                    DepositsButtonText(
                      text: widget.bottomTitle,
                      color: widget.bottomTitleColor,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2.0,
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        size: 20.0,
                        color: widget.bottomTitleColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DepositsDetailsCollapsibleTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final Color iconColor;
  final String subtitle;
  final Color subtitleColor;
  final String itemOneTitle;
  final Color itemOneTitleColor;
  final String itemOneSubtitle;
  final Color itemOneSubtitleColor;
  final Color bgColor;
  final Color borderColor;
  final bool isOpen;

  const DepositsDetailsCollapsibleTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    this.iconColor = AppColors.neutral500Color,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.itemOneTitle,
    this.itemOneTitleColor = AppColors.textPrimaryColor,
    required this.itemOneSubtitle,
    this.itemOneSubtitleColor = AppColors.textPrimaryColor,
    this.bgColor = AppColors.whiteColor,
    this.borderColor = AppColors.neutral200Color,
    this.isOpen = false,
  });

  @override
  DepositsDetailsCollapsibleTwoState createState() {
    return DepositsDetailsCollapsibleTwoState();
  }
}

class DepositsDetailsCollapsibleTwoState
    extends State<DepositsDetailsCollapsibleTwo> {
  bool isOpen = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isOpen = widget.isOpen;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DepositsDetailsCollapsibleMain(
      title: widget.title,
      titleColor: widget.titleColor,
      iconColor: widget.iconColor,
      bgColor: widget.bgColor,
      borderColor: widget.borderColor,
      isOpen: widget.isOpen,
      bottomWidget: Column(
        children: [
          const VSpacerWidget(size: 5.0),
          Row(
            children: [
              Expanded(
                child: DepositsSubheadText(
                  text: widget.subtitle,
                  color: widget.subtitleColor,
                ),
              )
            ],
          ),
          const VSpacerWidget(size: 5.0),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    DepositsH5Text(
                      text: widget.itemOneTitle,
                      color: widget.itemOneTitleColor,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DepositsH5Text(
                      text: widget.itemOneSubtitle,
                      color: widget.itemOneSubtitleColor,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DepositsDetailsAccordion extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final Color iconColor;
  final Color bgColor;
  final Color borderColor;
  final Color openBgColor;
  final Color openBorderColor;
  final bool isOpen;

  const DepositsDetailsAccordion({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    this.iconColor = AppColors.textPrimaryColor,
    this.bgColor = AppColors.whiteColor,
    this.borderColor = AppColors.neutral200Color,
    this.openBgColor = AppColors.neutral100Color,
    this.openBorderColor = AppColors.neutral200Color,
    this.isOpen = false,
  });

  @override
  DepositsDetailsAccordionState createState() {
    return DepositsDetailsAccordionState();
  }
}

class DepositsDetailsAccordionState extends State<DepositsDetailsAccordion> {
  bool isOpen = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isOpen = widget.isOpen;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isOpen == true) {
            isOpen = false;
          } else {
            isOpen = true;
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 8.0,
        ),
        decoration: BoxDecoration(
          color: isOpen == true ? widget.openBgColor : widget.bgColor,
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            width: 1.0,
            color: isOpen == true ? widget.openBorderColor : widget.borderColor,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 9,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 5.0,
                        ),
                        child: DepositsH4Text(
                          text: widget.title,
                          color: widget.titleColor,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        child: Icon(
                          isOpen == false ? Icons.add : Icons.remove,
                          size: 20.0,
                          color: widget.iconColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            isOpen == false
                ? Container()
                : Row(
                    children: [
                      Expanded(
                        child: DepositsSubheadText(
                          text: widget.subtitle,
                          color: widget.subtitleColor,
                        ),
                      )
                    ],
                  )
          ],
        ),
      ),
    );
  }
}

class DepositsDetailsContentDivider extends StatefulWidget {
  final String text;
  final Color textColor;
  final Color dividerColor;

  const DepositsDetailsContentDivider({
    super.key,
    required this.text,
    this.textColor = AppColors.blackColor,
    this.dividerColor = AppColors.textSecondaryColor,
  });

  @override
  DepositsDetailsContentDividerState createState() {
    return DepositsDetailsContentDividerState();
  }
}

class DepositsDetailsContentDividerState
    extends State<DepositsDetailsContentDivider> {
  bool isOpen = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 5,
              child: HrWidget(
                borderColor: widget.dividerColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    bottom: 8.0,
                  ),
                  child: DepositsSubheadText(
                    text: widget.text,
                    color: widget.textColor,
                  ),
                )
              ],
            ),
            Expanded(
              flex: 5,
              child: HrWidget(
                borderColor: widget.dividerColor,
              ),
            )
          ],
        )
      ],
    );
  }
}

class DepositsDetailsSliderOne extends StatefulWidget {
  final String titleOne;
  final Color titleOneColor;
  final String titleTwo;
  final Color titleTwoColor;
  final String subtitle;
  final Color subtitleColor;
  final int percent;
  final Color sliderColor;
  final Color sliderActiveColor;
  final Color sliderRingColor;
  final Function onChanged;

  const DepositsDetailsSliderOne({
    super.key,
    required this.titleOne,
    this.titleOneColor = AppColors.textPrimaryColor,
    required this.titleTwo,
    this.titleTwoColor = AppColors.textSecondaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.percent,
    this.sliderColor = AppColors.neutral200Color,
    this.sliderActiveColor = AppColors.primaryColor,
    this.sliderRingColor = AppColors.neutral100Color,
    required this.onChanged,
  });

  @override
  DepositsDetailsSliderOneState createState() {
    return DepositsDetailsSliderOneState();
  }
}

class DepositsDetailsSliderOneState extends State<DepositsDetailsSliderOne> {
  int percent = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                            text: widget.titleOne,
                            style: TextStyle(
                              fontSize: AppDimens.fontSize16,
                              color: widget.titleOneColor,
                              fontWeight: FontWeight.w600,
                              fontFamily:
                                  DepositsFontFamilies.SFProText.toString(),
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: " ${widget.titleTwo}",
                                style: TextStyle(
                                  fontSize: AppDimens.fontSize14,
                                  color: widget.titleTwoColor,
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
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DepositsSubheadText(
                    text: widget.subtitle,
                    color: widget.subtitleColor,
                  )
                ],
              ),
            )
          ],
        ),
        const VSpacerWidget(size: 5.0),
        DepositsFormSlider(
          percent: widget.percent,
          sliderColor: widget.sliderColor,
          sliderActiveColor: widget.sliderActiveColor,
          sliderRingColor: widget.sliderRingColor,
          onChanged: widget.onChanged,
        ),
      ],
    );
  }
}

class DepositsDetailsSliderTwo extends StatefulWidget {
  final String titleOne;
  final Color titleOneColor;
  final String titleTwo;
  final Color titleTwoColor;
  final String subtitleOne;
  final Color subtitleOneColor;
  final String subtitleTwo;
  final Color subtitleTwoColor;
  final int percent;
  final Color sliderColor;
  final Color sliderActiveColor;
  final Color sliderRingColor;
  final Function onChanged;

  const DepositsDetailsSliderTwo({
    super.key,
    required this.titleOne,
    this.titleOneColor = AppColors.textPrimaryColor,
    required this.titleTwo,
    this.titleTwoColor = AppColors.textSecondaryColor,
    required this.subtitleOne,
    this.subtitleOneColor = AppColors.textSecondaryColor,
    required this.subtitleTwo,
    this.subtitleTwoColor = AppColors.textSecondaryColor,
    required this.percent,
    this.sliderColor = AppColors.neutral200Color,
    this.sliderActiveColor = AppColors.primaryColor,
    this.sliderRingColor = AppColors.neutral100Color,
    required this.onChanged,
  });

  @override
  DepositsDetailsSliderTwoState createState() {
    return DepositsDetailsSliderTwoState();
  }
}

class DepositsDetailsSliderTwoState extends State<DepositsDetailsSliderTwo> {
  int percent = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                            text: widget.titleOne,
                            style: TextStyle(
                              fontSize: AppDimens.fontSize16,
                              color: widget.titleOneColor,
                              fontWeight: FontWeight.w600,
                              fontFamily:
                                  DepositsFontFamilies.SFProText.toString(),
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: " ${widget.titleTwo}",
                                style: TextStyle(
                                  fontSize: AppDimens.fontSize14,
                                  color: widget.titleTwoColor,
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
                ],
              ),
            ),
          ],
        ),
        const VSpacerWidget(size: 5.0),
        DepositsFormSlider(
          percent: widget.percent,
          sliderColor: widget.sliderColor,
          sliderActiveColor: widget.sliderActiveColor,
          sliderRingColor: widget.sliderRingColor,
          onChanged: widget.onChanged,
        ),
        const VSpacerWidget(size: 5.0),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  DepositsSubheadText(
                    text: widget.subtitleOne,
                    color: widget.subtitleOneColor,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DepositsSubheadText(
                    text: widget.subtitleTwo,
                    color: widget.subtitleTwoColor,
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class DepositsDetailsTaskProgressOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final int percent;
  final Color sliderColor;
  final Color sliderActiveColor;

  const DepositsDetailsTaskProgressOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.percent,
    this.sliderColor = AppColors.neutral200Color,
    this.sliderActiveColor = AppColors.primaryColor,
  });

  @override
  DepositsDetailsTaskProgressOneState createState() {
    return DepositsDetailsTaskProgressOneState();
  }
}

class DepositsDetailsTaskProgressOneState
    extends State<DepositsDetailsTaskProgressOne> {
  int percent = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  DepositsH3Text(
                    text: widget.title,
                    color: widget.titleColor,
                  ),
                ],
              ),
            ),
          ],
        ),
        const VSpacerWidget(size: 4.0),
        Row(
          children: [
            Expanded(
              child: DepositsProgressbar(
                percent: widget.percent,
                color: widget.sliderColor,
                activeColor: widget.sliderActiveColor,
              ),
            ),
          ],
        ),
        const VSpacerWidget(size: 4.0),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  DepositsBodyText(
                    text: widget.subtitle,
                    color: widget.subtitleColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DepositsDetailsTaskProgressTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final int percent;
  final Color sliderColor;
  final Color sliderActiveColor;

  const DepositsDetailsTaskProgressTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.percent,
    this.sliderColor = AppColors.neutral200Color,
    this.sliderActiveColor = AppColors.primaryColor,
  });

  @override
  DepositsDetailsTaskProgressTwoState createState() {
    return DepositsDetailsTaskProgressTwoState();
  }
}

class DepositsDetailsTaskProgressTwoState
    extends State<DepositsDetailsTaskProgressTwo> {
  int percent = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: DepositsProgressbar(
                percent: widget.percent,
                color: widget.sliderColor,
                activeColor: widget.sliderActiveColor,
              ),
            ),
          ],
        ),
        const VSpacerWidget(size: 2.0),
        Row(
          children: [
            Expanded(
              child: Row(
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
        const VSpacerWidget(size: 2.0),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  DepositsH5Text(
                    text: widget.title,
                    color: widget.titleColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
