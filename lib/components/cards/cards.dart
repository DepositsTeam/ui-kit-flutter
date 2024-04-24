import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsCardWidgetUI extends StatefulWidget {
  final String name;
  final String balance;
  final String balanceTitle;
  final Color color;
  final String cardNumber;
  final String expiryMonth;
  final String expiryYear;
  final String cvv;
  final String programLogo;
  final CardBrand cardBrand;
  final Color cardNameColor;
  final Color cardBalanceColor;
  final Color cardBalanceTitleColor;
  final Color cardDetailsTitleColor;
  final Color cardDetailsColor;
  final Color borderTopColor;
  final bool showCardDetails;
  final Function onTapped;

  const DepositsCardWidgetUI(
      {super.key,
      required this.name,
      required this.balance,
      required this.balanceTitle,
      required this.color,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.cvv,
      required this.programLogo,
      required this.cardBrand,
      required this.cardNameColor,
      required this.cardBalanceColor,
      required this.cardBalanceTitleColor,
      required this.cardDetailsTitleColor,
      required this.cardDetailsColor,
      required this.borderTopColor,
      required this.showCardDetails,
      required this.onTapped});

  @override
  DepositsCardWidgetUIState createState() {
    return DepositsCardWidgetUIState();
  }
}

class DepositsCardWidgetUIState extends State<DepositsCardWidgetUI> {
  var cardNameColor = AppColors.neutral600Color;

  bool showCardDetails = false;

  var cardBrandLogo = "";

  var cardNumber = '';
  var cvv = '000';
  var expiryMonth = '00';
  var expiryYear = '00';
  var balance = '0.00';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      switch (widget.cardBrand) {
        case CardBrand.americaExpress:
          cardBrandLogo =
              "https://api.files.ondeposits.com/uploads/images/american-express-logo-1712844007.png";
          break;
        case CardBrand.bankOfAmerica:
          cardBrandLogo =
              "https://api.files.ondeposits.com/uploads/images/master-card-icon-1712828073.png";
          break;
        case CardBrand.chase:
          cardBrandLogo =
              "https://api.files.ondeposits.com/uploads/images/master-card-icon-1712828073.png";
          break;
        case CardBrand.citigroup:
          cardBrandLogo =
              "https://api.files.ondeposits.com/uploads/images/master-card-icon-1712828073.png";
          break;
        case CardBrand.discover:
          cardBrandLogo =
              "https://api.files.ondeposits.com/uploads/images/discover-logo-1712844117.png";
          break;
        case CardBrand.jcb:
          cardBrandLogo =
              "https://api.files.ondeposits.com/uploads/images/jcb-logo-1712844143.png";
          break;
        case CardBrand.mastercard:
          cardBrandLogo =
              "https://api.files.ondeposits.com/uploads/images/master-card-icon-1712828073.png";
          break;
        case CardBrand.unionPay:
          cardBrandLogo =
              "https://api.files.ondeposits.com/uploads/images/master-card-icon-1712828073.png";
          break;
        case CardBrand.visa:
          cardBrandLogo =
              "https://api.files.ondeposits.com/uploads/images/visa-logo-1712844181.png";
          break;
        case CardBrand.wellsFargo:
          cardBrandLogo =
              "https://api.files.ondeposits.com/uploads/images/master-card-icon-1712828073.png";
          break;
        default:
      }
      setState(() {
        showCardDetails = widget.showCardDetails;
        manageCardDetails();
      });
    });
  }

  manageCardDetails() {
    cardNumber = '';
    if (showCardDetails == true) {
      cardNumber = widget.cardNumber.replaceAll(" ", "");
      cvv = widget.cvv;
      expiryMonth = widget.expiryMonth;
      expiryYear = widget.expiryYear;
      balance = widget.balance;
    } else {
      var allCardNumbers = widget.cardNumber.replaceAll(" ", "").split("");
      for (var i = 0; i < allCardNumbers.length; i++) {
        if (i < 4 || i > allCardNumbers.length - 5) {
          cardNumber = "$cardNumber${allCardNumbers[i]}";
        } else {
          cardNumber = "$cardNumber*";
        }
      }
      var balanceSplit = widget.balance.split(".");
      balance = "";
      if (balanceSplit[0].isNotEmpty) {
        for (var i = 0; i < balanceSplit[0].length; i++) {
          balance = "$balance*";
        }
      }
      balance = "$balance.";
      if (balanceSplit[1].isNotEmpty) {
        for (var i = 0; i < balanceSplit[1].length; i++) {
          balance = "$balance*";
        }
      } else {
        balance = "$balance**";
      }
      cvv = "***";
      expiryMonth = "**";
      expiryYear = "**";
    }

    var cardNumberSplit = cardNumber.split("");
    cardNumber = "";
    for (var i = 0; i < cardNumberSplit.length; i++) {
      if (i > 1 && (i + 1) % 4 == 0) {
        cardNumber = "$cardNumber${cardNumberSplit[i]} ";
      } else {
        cardNumber = "$cardNumber${cardNumberSplit[i]}";
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget result = GestureDetector(
      onTap: () {
        setState(() {
          if (showCardDetails == true) {
            showCardDetails = false;
          } else {
            showCardDetails = true;
          }
          manageCardDetails();
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
        width: 366.0,
        height: 220.0,
        decoration: BoxDecoration(
            color: widget.color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextCustom(
                          text: widget.name,
                          textFontSize: AppDimens.fontSize14,
                          color: widget.cardNameColor,
                          fontWeight: FontWeight.w400)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.3),
                        child: ImageWidget(
                          imageUrl: widget.programLogo,
                          imageHeight: 17.0,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextCustom(
                          text: balance,
                          textFontSize: AppDimens.fontSize27,
                          color: widget.cardBalanceColor,
                          fontWeight: FontWeight.w500)
                    ],
                  ),
                  const VSpacerWidget(size: 0.0),
                  Row(
                    children: [
                      TextCustom(
                          text: widget.balanceTitle,
                          textFontSize: AppDimens.fontSize10,
                          color: widget.cardBalanceTitleColor,
                          fontWeight: FontWeight.w500)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 0.5,
                    color: widget.borderTopColor,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextCustom(
                              text: "Card number",
                              textFontSize: AppDimens.fontSize14,
                              color: widget.cardDetailsTitleColor,
                              fontWeight: FontWeight.w500,
                            ),
                            const VSpacerWidget(size: 2.0),
                            TextCustom(
                              text: cardNumber,
                              textFontSize: AppDimens.fontSize14,
                              color: widget.cardDetailsColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextCustom(
                              text: "EXP",
                              textFontSize: AppDimens.fontSize14,
                              color: widget.cardDetailsTitleColor,
                              fontWeight: FontWeight.w500,
                            ),
                            const VSpacerWidget(size: 2.0),
                            TextCustom(
                              text: "$expiryMonth / $expiryYear",
                              textFontSize: AppDimens.fontSize14,
                              color: widget.cardDetailsColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextCustom(
                              text: "CVV",
                              textFontSize: AppDimens.fontSize14,
                              color: widget.cardDetailsTitleColor,
                              fontWeight: FontWeight.w500,
                            ),
                            const VSpacerWidget(size: 2.0),
                            TextCustom(
                              text: cvv,
                              textFontSize: AppDimens.fontSize14,
                              color: widget.cardDetailsColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            cardBrandLogo.isNotEmpty
                                ? ImageWidget(
                                    imageUrl: cardBrandLogo,
                                    imageHeight: 34.0,
                                  )
                                : Container()
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
      ),
    );
    return result;
  }
}

class DepositsCardWidgetUIBlack extends StatefulWidget {
  final String name;
  final String balance;
  final String balanceTitle;
  final String cardNumber;
  final String expiryMonth;
  final String expiryYear;
  final String cvv;
  final String programLogo;
  final CardBrand cardBrand;
  final bool showCardDetails;
  final Function onTapped;

  const DepositsCardWidgetUIBlack(
      {super.key,
      required this.name,
      required this.balance,
      required this.balanceTitle,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.cvv,
      required this.programLogo,
      required this.cardBrand,
      this.showCardDetails = false,
      required this.onTapped});

  @override
  DepositsCardWidgetUIBlackState createState() {
    return DepositsCardWidgetUIBlackState();
  }
}

class DepositsCardWidgetUIBlackState extends State<DepositsCardWidgetUIBlack> {
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsCardWidgetUI(
        name: widget.name,
        showCardDetails: widget.showCardDetails,
        balance: widget.balance,
        balanceTitle: widget.balanceTitle,
        color: AppColors.neutral900Color,
        cardNumber: widget.cardNumber,
        expiryMonth: widget.expiryMonth,
        expiryYear: widget.expiryYear,
        cvv: widget.cvv,
        programLogo: widget.programLogo,
        cardBrand: widget.cardBrand,
        cardNameColor: AppColors.neutral400Color,
        cardBalanceColor: AppColors.whiteColor,
        cardBalanceTitleColor: AppColors.neutral500Color,
        cardDetailsColor: AppColors.whiteColor,
        cardDetailsTitleColor: AppColors.neutral500Color,
        borderTopColor: const Color.fromRGBO(255, 255, 255, 0.1),
        onTapped: widget.onTapped);
    return result;
  }
}

class DepositsCardWidgetUIWhite extends StatefulWidget {
  final String name;
  final String balance;
  final String balanceTitle;
  final String cardNumber;
  final String expiryMonth;
  final String expiryYear;
  final String cvv;
  final String programLogo;
  final CardBrand cardBrand;
  final bool showCardDetails;
  final Function onTapped;

  const DepositsCardWidgetUIWhite(
      {super.key,
      required this.name,
      required this.balance,
      required this.balanceTitle,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.cvv,
      required this.programLogo,
      required this.cardBrand,
      this.showCardDetails = false,
      required this.onTapped});

  @override
  DepositsCardWidgetUIWhiteState createState() {
    return DepositsCardWidgetUIWhiteState();
  }
}

class DepositsCardWidgetUIWhiteState extends State<DepositsCardWidgetUIWhite> {
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsCardWidgetUI(
        name: widget.name,
        showCardDetails: widget.showCardDetails,
        balance: widget.balance,
        balanceTitle: widget.balanceTitle,
        color: AppColors.whiteColor,
        cardNumber: widget.cardNumber,
        expiryMonth: widget.expiryMonth,
        expiryYear: widget.expiryYear,
        cvv: widget.cvv,
        programLogo: widget.programLogo,
        cardBrand: widget.cardBrand,
        cardNameColor: AppColors.neutral600Color,
        cardBalanceColor: AppColors.blackColor,
        cardBalanceTitleColor: AppColors.neutral500Color,
        cardDetailsColor: AppColors.blackColor,
        cardDetailsTitleColor: AppColors.neutral500Color,
        borderTopColor: const Color.fromRGBO(0, 0, 0, 0.1),
        onTapped: widget.onTapped);
    return result;
  }
}

class DepositsCardWidgetUIGrey extends StatefulWidget {
  final String name;
  final String balance;
  final String balanceTitle;
  final String cardNumber;
  final String expiryMonth;
  final String expiryYear;
  final String cvv;
  final String programLogo;
  final CardBrand cardBrand;
  final bool showCardDetails;
  final Function onTapped;

  const DepositsCardWidgetUIGrey(
      {super.key,
      required this.name,
      required this.balance,
      required this.balanceTitle,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.cvv,
      required this.programLogo,
      required this.cardBrand,
      this.showCardDetails = false,
      required this.onTapped});

  @override
  DepositsCardWidgetUIGreyState createState() {
    return DepositsCardWidgetUIGreyState();
  }
}

class DepositsCardWidgetUIGreyState extends State<DepositsCardWidgetUIGrey> {
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsCardWidgetUI(
        name: widget.name,
        showCardDetails: widget.showCardDetails,
        balance: widget.balance,
        balanceTitle: widget.balanceTitle,
        color: AppColors.neutral200Color,
        cardNumber: widget.cardNumber,
        expiryMonth: widget.expiryMonth,
        expiryYear: widget.expiryYear,
        cvv: widget.cvv,
        programLogo: widget.programLogo,
        cardBrand: widget.cardBrand,
        cardNameColor: AppColors.neutral600Color,
        cardBalanceColor: AppColors.blackColor,
        cardBalanceTitleColor: AppColors.neutral500Color,
        cardDetailsColor: AppColors.blackColor,
        cardDetailsTitleColor: AppColors.neutral500Color,
        borderTopColor: const Color.fromRGBO(0, 0, 0, 0.1),
        onTapped: widget.onTapped);
    return result;
  }
}

class DepositsCardWidgetUIBlue extends StatefulWidget {
  final String name;
  final String balance;
  final String balanceTitle;
  final String cardNumber;
  final String expiryMonth;
  final String expiryYear;
  final String cvv;
  final String programLogo;
  final CardBrand cardBrand;
  final bool showCardDetails;
  final Function onTapped;

  const DepositsCardWidgetUIBlue(
      {super.key,
      required this.name,
      required this.balance,
      required this.balanceTitle,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.cvv,
      required this.programLogo,
      required this.cardBrand,
      this.showCardDetails = false,
      required this.onTapped});

  @override
  DepositsCardWidgetUIBlueState createState() {
    return DepositsCardWidgetUIBlueState();
  }
}

class DepositsCardWidgetUIBlueState extends State<DepositsCardWidgetUIBlue> {
  @override
  Widget build(BuildContext context) {
    Widget result = DepositsCardWidgetUI(
        name: widget.name,
        showCardDetails: widget.showCardDetails,
        balance: widget.balance,
        balanceTitle: widget.balanceTitle,
        color: AppColors.cyan500Color,
        cardNumber: widget.cardNumber,
        expiryMonth: widget.expiryMonth,
        expiryYear: widget.expiryYear,
        cvv: widget.cvv,
        programLogo: widget.programLogo,
        cardBrand: widget.cardBrand,
        cardNameColor: AppColors.neutral100Color,
        cardBalanceColor: AppColors.whiteColor,
        cardBalanceTitleColor: AppColors.neutral100Color,
        cardDetailsColor: AppColors.whiteColor,
        cardDetailsTitleColor: AppColors.neutral100Color,
        borderTopColor: const Color.fromRGBO(0, 0, 0, 0.1),
        onTapped: widget.onTapped);
    return result;
  }
}
