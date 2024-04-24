import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class CardDocPage extends StatefulWidget {
  const CardDocPage({super.key});

  @override
  State<CardDocPage> createState() => _CardDocPageState();
}

class _CardDocPageState extends State<CardDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.neutral600Color,
      child: Center(
        child: Column(
          children: [
            const DepositsH4Text(text: "Cards"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const VSpacerWidget(size: 10.0),
                DepositsCardWidgetUIBlack(
                    name: "JOSEPH AKINTOLAYO",
                    balance: "\$0.00",
                    balanceTitle: "Available balance",
                    cardNumber: "0000 0000 0000 0000",
                    expiryYear: "25",
                    expiryMonth: "09",
                    cvv: "123",
                    programLogo:
                        "https://api.files.ondeposits.com/uploads/images/your-brand-white-1712840364.png",
                    cardBrand: CardBrand.mastercard,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsCardWidgetUIWhite(
                    name: "JOSEPH AKINTOLAYO",
                    balance: "\$0.00",
                    balanceTitle: "Available balance",
                    cardNumber: "0000 0000 0000 0000",
                    expiryYear: "25",
                    expiryMonth: "09",
                    cvv: "123",
                    programLogo:
                        "https://api.files.ondeposits.com/uploads/images/your-brand-icon-1712828351.png",
                    cardBrand: CardBrand.jcb,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsCardWidgetUIGrey(
                    name: "JOSEPH AKINTOLAYO",
                    balance: "\$0.00",
                    balanceTitle: "Available balance",
                    cardNumber: "0000 0000 0000 0000",
                    expiryYear: "25",
                    expiryMonth: "09",
                    cvv: "123",
                    programLogo:
                        "https://api.files.ondeposits.com/uploads/images/your-brand-icon-1712828351.png",
                    cardBrand: CardBrand.visa,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsCardWidgetUIBlue(
                    name: "JOSEPH AKINTOLAYO",
                    balance: "\$0.00",
                    balanceTitle: "Available balance",
                    cardNumber: "0000 0000 0000 0000",
                    expiryYear: "25",
                    expiryMonth: "09",
                    cvv: "123",
                    programLogo:
                        "https://api.files.ondeposits.com/uploads/images/your-brand-white-1712840364.png",
                    cardBrand: CardBrand.americaExpress,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
                DepositsCardWidgetUIBlack(
                    name: "",
                    balance: "\$0.00",
                    balanceTitle: "Available balance",
                    cardNumber: "0000 0000 0000 0000",
                    expiryYear: "00",
                    expiryMonth: "00",
                    cvv: "000",
                    programLogo:
                        "https://api.files.ondeposits.com/uploads/images/your-brand-white-1712840364.png",
                    cardBrand: CardBrand.unknown,
                    onTapped: () {}),
                const VSpacerWidget(size: 10.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
