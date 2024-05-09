import 'package:clipboard/clipboard.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DepositsListTransaction extends StatefulWidget {
  final String image;
  final String title;
  final Color titleTextColor;
  final String subtitle;
  final Color subtitleTextColor;
  final String amount;
  final Color amountTextColor;
  final bool showBorderBottom;
  final Color borderColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsListTransaction({
    super.key,
    required this.image,
    required this.title,
    this.titleTextColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleTextColor = AppColors.textSecondaryColor,
    required this.amount,
    this.amountTextColor = AppColors.textPrimaryColor,
    this.showBorderBottom = true,
    this.borderColor = AppColors.neutral200Color,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsListTransactionState createState() {
    return DepositsListTransactionState();
  }
}

class DepositsListTransactionState extends State<DepositsListTransaction> {
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
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          color: widget.bgColor,
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: widget.borderColor,
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: DepositsImageAvatar(
                      imagePath: widget.image,
                      size: DepositsAvatarSizes.medium,
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: const EdgeInsets.only(
                      right: 3.0,
                      left: 5.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: DepositsH5Text(
                              text: widget.title,
                              color: widget.titleTextColor,
                            )),
                          ],
                        ),
                        const VSpacerWidget(size: 0.0),
                        Row(
                          children: [
                            DepositsSubheadText(
                              text: widget.subtitle,
                              color: widget.subtitleTextColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DepositsH5Text(
                        text: widget.amount,
                        color: widget.amountTextColor,
                      ),
                    ],
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

class DepositsListTransactionItem extends StatefulWidget {
  final String amount;
  final String accountName;
  final String bankName;
  final String accountNumber;
  final String recipientName;
  final String recipientEmail;
  final String recipientAccountNumber;
  final String routingNumber;
  final String phoneNumber;
  final String note;
  final String fee;
  final Color leftTextColor;
  final Color rightTextColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsListTransactionItem({
    super.key,
    this.amount = "",
    this.accountName = "",
    this.bankName = "",
    this.accountNumber = "",
    this.recipientName = "",
    this.recipientEmail = "",
    this.recipientAccountNumber = "",
    this.routingNumber = "",
    this.phoneNumber = "",
    this.note = "",
    this.fee = "",
    this.leftTextColor = AppColors.textSecondaryColor,
    this.rightTextColor = AppColors.textPrimaryColor,
    this.bgColor = AppColors.neutral100Color,
    required this.onTapped,
  });

  @override
  DepositsListTransactionItemState createState() {
    return DepositsListTransactionItemState();
  }
}

class DepositsListTransactionItemState
    extends State<DepositsListTransactionItem> {
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
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        decoration: BoxDecoration(
          color: widget.bgColor,
        ),
        child: Column(
          children: [
            widget.amount == ""
                ? Container()
                : TransactionItem(title: "Amount", subtitle: widget.amount),
            widget.accountName == ""
                ? Container()
                : TransactionItem(
                    title: "Account name", subtitle: widget.accountName),
            widget.bankName == ""
                ? Container()
                : TransactionItem(
                    title: "Bank Name", subtitle: widget.bankName),
            widget.accountNumber == ""
                ? Container()
                : TransactionItem(
                    title: "Account number", subtitle: widget.accountNumber),
            widget.recipientName == ""
                ? Container()
                : TransactionItem(
                    title: "Recipient", subtitle: widget.recipientName),
            widget.recipientAccountNumber == ""
                ? Container()
                : TransactionItem(
                    title: "Recipient Account number",
                    subtitle: widget.recipientAccountNumber),
            widget.routingNumber == ""
                ? Container()
                : TransactionItem(
                    title: "Routing Number", subtitle: widget.routingNumber),
            widget.phoneNumber == ""
                ? Container()
                : TransactionItem(
                    title: "Phone number", subtitle: widget.phoneNumber),
            widget.note == ""
                ? Container()
                : TransactionItem(title: "Note", subtitle: widget.note),
            widget.fee == ""
                ? Container()
                : TransactionItem(title: "Fee", subtitle: widget.fee),
          ],
        ),
      ),
    );
  }
}

class DepositsListCardAccountMain extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color bgColor;
  final Widget rightWidget;
  final int rightWidgetExpandSize;
  final int leftWidgetSize;
  final double maxHeight;
  final double maxWidth;
  final bool allowHorinzontalPadding;
  final Function onTapped;

  const DepositsListCardAccountMain({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.bgColor = AppColors.whiteColor,
    required this.rightWidget,
    this.rightWidgetExpandSize = 6,
    this.leftWidgetSize = 2,
    this.maxHeight = 42.0,
    this.maxWidth = 42.0,
    this.allowHorinzontalPadding = true,
    required this.onTapped,
  });

  @override
  DepositsListCardAccountMainState createState() {
    return DepositsListCardAccountMainState();
  }
}

class DepositsListCardAccountMainState
    extends State<DepositsListCardAccountMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
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
                Expanded(
                  flex: widget.leftWidgetSize,
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
                        constraints: BoxConstraints(
                          maxHeight: widget.maxHeight,
                          maxWidth: widget.maxWidth,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Center(
                          child: ImageWidget(
                            imageUrl: widget.image,
                          ),
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
                            padding: const EdgeInsets.only(bottom: 1.0),
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

class DepositsListCardAccountOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color bgColor;
  final String badgeText;
  final Color badgeTextColor;
  final Color badgeBgColor;
  final Function onTapped;

  const DepositsListCardAccountOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.bgColor = AppColors.whiteColor,
    required this.badgeText,
    this.badgeTextColor = AppColors.whiteColor,
    this.badgeBgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsListCardAccountOneState createState() {
    return DepositsListCardAccountOneState();
  }
}

class DepositsListCardAccountOneState
    extends State<DepositsListCardAccountOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsListCardAccountMain(
      title: widget.title,
      titleColor: widget.titleColor,
      subtitle: widget.subtitle,
      subtitleColor: widget.subtitleColor,
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
                    DepositsBadge(
                      text: widget.badgeText,
                      bgColor: widget.badgeBgColor,
                      textColor: widget.badgeTextColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.neutral500Color,
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

class DepositsListCardAccountTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final Color bgColor;
  final Function onTapped;

  const DepositsListCardAccountTwo({
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
  DepositsListCardAccountTwoState createState() {
    return DepositsListCardAccountTwoState();
  }
}

class DepositsListCardAccountTwoState
    extends State<DepositsListCardAccountTwo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsListCardAccountMain(
      title: widget.title,
      titleColor: widget.titleColor,
      subtitle: widget.subtitle,
      subtitleColor: widget.subtitleColor,
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
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.neutral500Color,
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

class DepositsListCardAccountThree extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final DepositsRadioFormState formState;
  final Color radioSelectedColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsListCardAccountThree({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.formState = DepositsRadioFormState.normal,
    this.radioSelectedColor = AppColors.primaryColor,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsListCardAccountThreeState createState() {
    return DepositsListCardAccountThreeState();
  }
}

class DepositsListCardAccountThreeState
    extends State<DepositsListCardAccountThree> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsListCardAccountMain(
      title: widget.title,
      titleColor: widget.titleColor,
      subtitle: widget.subtitle,
      subtitleColor: widget.subtitleColor,
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
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: DepositsRadio(
                        title: "",
                        formState: widget.formState,
                        selectedColor: widget.radioSelectedColor,
                        onTapped: () {
                          widget.onTapped();
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

class DepositsListCardAccountFour extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final DepositsCheckboxFormState formState;
  final Color bgColor;
  final Function onTapped;

  const DepositsListCardAccountFour({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    this.formState = DepositsCheckboxFormState.normal,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsListCardAccountFourState createState() {
    return DepositsListCardAccountFourState();
  }
}

class DepositsListCardAccountFourState
    extends State<DepositsListCardAccountFour> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsListCardAccountMain(
      title: widget.title,
      titleColor: widget.titleColor,
      subtitle: widget.subtitle,
      subtitleColor: widget.subtitleColor,
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
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: DepositsCheckbox(
                        title: "",
                        formState: widget.formState,
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

class DepositsListCardAccountFive extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final List<DepositsBankAccountListModel> items;
  final DepositsRadioFormState formState;
  final Color bgColor;
  final bool allowHorinzontalPadding;
  final int leftWidgetSize;
  final Function onTapped;

  const DepositsListCardAccountFive({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    required this.items,
    this.formState = DepositsRadioFormState.normal,
    this.bgColor = AppColors.whiteColor,
    this.allowHorinzontalPadding = true,
    this.leftWidgetSize = 2,
    required this.onTapped,
  });

  @override
  DepositsListCardAccountFiveState createState() {
    return DepositsListCardAccountFiveState();
  }
}

class DepositsListCardAccountFiveState
    extends State<DepositsListCardAccountFive> {
  List<String> items = [];
  var title = "";
  var subtitle = "";
  var image = "";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // setState(
      //   () {
      //     title = widget.title;
      //     subtitle = widget.subtitle;
      //     image = widget.image;
      //   },
      // );
    });
    // for (var i = 0; i < widget.items.length; i++) {
    //   items.add(widget.items[i].description);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return DepositsListCardAccountMain(
      title: widget.title,
      titleColor: widget.titleColor,
      subtitle: widget.subtitle,
      subtitleColor: widget.subtitleColor,
      image: widget.image,
      allowHorinzontalPadding: widget.allowHorinzontalPadding,
      leftWidgetSize: widget.leftWidgetSize,
      rightWidgetExpandSize: 6,
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
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      width: 96.0,
                      child: GestureDetector(
                        onTap: () {
                          widget.onTapped();
                        },
                        child: const DepositsMiniDropdownTwo(
                          title: "Change",
                        ),
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

class DepositsListCardAccountSix extends StatefulWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final String image;
  final String badgeText;
  final Color badgeTextColor;
  final Color badgeBgColor;
  final DepositsRadioFormState formState;
  final Color radioSelectedColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsListCardAccountSix({
    super.key,
    required this.title,
    this.titleColor = AppColors.textPrimaryColor,
    required this.subtitle,
    this.subtitleColor = AppColors.textSecondaryColor,
    required this.image,
    required this.badgeText,
    this.badgeTextColor = AppColors.whiteColor,
    this.badgeBgColor = AppColors.whiteColor,
    this.formState = DepositsRadioFormState.normal,
    this.radioSelectedColor = AppColors.primaryColor,
    this.bgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsListCardAccountSixState createState() {
    return DepositsListCardAccountSixState();
  }
}

class DepositsListCardAccountSixState
    extends State<DepositsListCardAccountSix> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsListCardAccountMain(
      title: widget.title,
      titleColor: widget.titleColor,
      subtitle: widget.subtitle,
      subtitleColor: widget.subtitleColor,
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
                    DepositsBadge(
                      text: widget.badgeText,
                      bgColor: widget.badgeBgColor,
                      textColor: widget.badgeTextColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: DepositsRadio(
                        title: "",
                        formState: widget.formState,
                        selectedColor: widget.radioSelectedColor,
                        onTapped: (a) {
                          widget.onTapped(a);
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.neutral500Color,
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

class DepositsListCopyField extends StatefulWidget {
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

  const DepositsListCopyField({
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
  DepositsListCopyFieldState createState() {
    return DepositsListCopyFieldState();
  }
}

class DepositsListCopyFieldState extends State<DepositsListCopyField> {
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
      subtitle = "******";
    } else {
      subtitle = widget.subtitle;
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
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
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Container(
                      constraints: const BoxConstraints(maxWidth: 120.0),
                      child: DepositsBodyText(text: widget.title),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 138.w),
                      child: DepositsH5Text(text: subtitle),
                    ),
                  ],
                ),
              ),
              widget.showVisibleIcon == false
                  ? Container()
                  : Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
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

class DepositsListChecklistOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final List<DepositsChecklistModel> items;

  const DepositsListChecklistOne({
    super.key,
    required this.title,
    this.titleColor = AppColors.textSecondaryColor,
    required this.items,
  });

  @override
  DepositsListChecklistOneState createState() {
    return DepositsListChecklistOneState();
  }
}

class DepositsListChecklistOneState extends State<DepositsListChecklistOne> {
  bool showVisibleIcon = true;
  var subtitle = "";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 15.0,
                ),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.8,
                ),
                child: DepositsBodyText(
                  text: widget.title,
                  color: widget.titleColor,
                ),
              ),
            ],
          ),
          Column(
            children: [
              for (var i = 0; i < widget.items.length; i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 24.0,
                      width: 24.0,
                      padding: const EdgeInsets.all(1.0),
                      margin: const EdgeInsets.only(
                        right: 6.0,
                        bottom: 5.0,
                        top: 5.0,
                      ),
                      decoration: BoxDecoration(
                        color: widget.items[i].iconBgColor,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Center(
                        child: Icon(
                          widget.items[i].icon,
                          color: widget.items[i].iconColor,
                          size: 15.0,
                        ),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.75,
                      ),
                      child: DepositsBodyText(
                        text: widget.items[i].title,
                        color: widget.items[i].titleColor,
                      ),
                    ),
                  ],
                ),
            ],
          )
        ],
      ),
    );
  }
}

class DepositsListChecklistTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final List<DepositsChecklistModel> items;
  final String buttonText;
  final Color buttonTextColor;
  final Color buttonBgColor;
  final Color buttonBorderColor;
  final String footnoteText;
  final Color footnoteColor;
  final Function onButtonClicked;

  const DepositsListChecklistTwo({
    super.key,
    required this.title,
    this.titleColor = AppColors.textSecondaryColor,
    required this.items,
    required this.footnoteText,
    this.footnoteColor = AppColors.neutral500Color,
    required this.buttonText,
    this.buttonTextColor = AppColors.gwTextColor,
    this.buttonBgColor = AppColors.gwGreen100Color,
    this.buttonBorderColor = AppColors.gwGreen100Color,
    required this.onButtonClicked,
  });

  @override
  DepositsListChecklistTwoState createState() {
    return DepositsListChecklistTwoState();
  }
}

class DepositsListChecklistTwoState extends State<DepositsListChecklistTwo> {
  bool showVisibleIcon = true;
  var subtitle = "";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 15.0,
                ),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.8,
                ),
                child: DepositsH5Text(
                  text: widget.title,
                  color: widget.titleColor,
                ),
              ),
            ],
          ),
          Column(
            children: [
              for (var i = 0; i < widget.items.length; i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 20.0,
                      width: 20.0,
                      padding: const EdgeInsets.all(1.0),
                      margin: const EdgeInsets.only(
                        right: 6.0,
                        bottom: 10.0,
                        top: 4.0,
                      ),
                      decoration: BoxDecoration(
                        color: widget.items[i].iconBgColor,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Center(
                        child: Icon(
                          widget.items[i].icon,
                          color: widget.items[i].iconColor,
                          size: 11.0,
                        ),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.75,
                      ),
                      padding: EdgeInsets.only(
                        bottom: 7.0,
                      ),
                      child: DepositsBodyText(
                        text: widget.items[i].title,
                        color: widget.items[i].titleColor,
                      ),
                    ),
                  ],
                ),
            ],
          ),
          const VSpacerWidget(size: 10.0),
          Row(
            children: [
              Expanded(
                child: DepositsButtonWidget(
                  text: widget.buttonText,
                  textColor: widget.buttonTextColor,
                  bgColor: widget.buttonBgColor,
                  borderColor: widget.buttonBorderColor,
                  onPressed: () {
                    widget.onButtonClicked();
                  },
                ),
              ),
            ],
          ),
          const VSpacerWidget(size: 10.0),
          Row(
            children: [
              Expanded(
                child: DepositsFootnoteText(
                  text: widget.footnoteText,
                  color: widget.footnoteColor,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
