import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class BadgeDocPage extends StatefulWidget {
  const BadgeDocPage({super.key});

  @override
  State<BadgeDocPage> createState() => _BadgeDocPageState();
}

class _BadgeDocPageState extends State<BadgeDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.whiteColor,
      child: const Column(
        children: [
          DepositsH4Text(text: "Badges"),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                VSpacerWidget(size: 10.0),
                Row(
                  children: [
                    DepositsH4Text(text: "Subtle"),
                  ],
                ),
                VSpacerWidget(size: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DepositsSubtleBadgeNeutral(text: "Neutral"),
                    DepositsSubtleBadgeGreen(text: "Green"),
                    DepositsSubtleBadgeRed(text: "Red"),
                    DepositsSubtleBadgeYellow(text: "Yellow"),
                    DepositsSubtleBadgeCyan(text: "Cyan"),
                    DepositsSubtleBadgeBlue(text: "Blue"),
                  ],
                ),
                VSpacerWidget(size: 10.0),
                Row(
                  children: [
                    DepositsH4Text(text: "Solid"),
                  ],
                ),
                VSpacerWidget(size: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DepositsSolidBadgeNeutral(text: "Neutral"),
                    DepositsSolidBadgeGreen(text: "Green"),
                    DepositsSolidBadgeRed(text: "Red"),
                    DepositsSolidBadgeYellow(text: "Yellow"),
                    DepositsSolidBadgeCyan(text: "Cyan"),
                    DepositsSolidBadgeBlue(text: "Blue"),
                  ],
                ),
                VSpacerWidget(size: 10.0),
                Row(
                  children: [
                    DepositsH4Text(text: "Payment Status"),
                  ],
                ),
                VSpacerWidget(size: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DepositsPaymentSuccessBadge(),
                    DepositsPaymentPendingBadge(),
                    DepositsPaymentCancelledBadge(),
                  ],
                ),
                VSpacerWidget(size: 10.0),
              ])
        ],
      ),
    );
  }
}
