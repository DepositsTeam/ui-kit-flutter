import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class AvatarsDocPage extends StatefulWidget {
  const AvatarsDocPage({super.key});

  @override
  State<AvatarsDocPage> createState() => _AvatarsDocPageState();
}

class _AvatarsDocPageState extends State<AvatarsDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Center(
        child: Column(
          children: [
            const DepositsH4Text(text: "Subtle"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("40")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LargeSubtleAvatarCyan(
                      text: "YBL",
                    ),
                    LargeSubtleAvatarGreen(
                      text: "YBL",
                    ),
                    LargeSubtleAvatarOrange(
                      text: "YBL",
                    ),
                    LargeSubtleAvatarRed(
                      text: "YBL",
                    ),
                    LargeSubtleAvatarNeutral(
                      text: "YBL",
                    ),
                    LargeSubtleAvatarBlue(
                      text: "MJ",
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("32")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MediumSubtleAvatarCyan(
                      text: "YBL",
                    ),
                    MediumSubtleAvatarGreen(
                      text: "YBL",
                    ),
                    MediumSubtleAvatarOrange(
                      text: "YBL",
                    ),
                    MediumSubtleAvatarRed(
                      text: "YBL",
                    ),
                    MediumSubtleAvatarNeutral(
                      text: "YBL",
                    ),
                    MediumSubtleAvatarBlue(
                      text: "MJ",
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("24")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallSubtleAvatarCyan(
                      text: "CU",
                    ),
                    SmallSubtleAvatarGreen(
                      text: "ST",
                    ),
                    SmallSubtleAvatarOrange(
                      text: "JD",
                    ),
                    SmallSubtleAvatarRed(
                      text: "CK",
                    ),
                    SmallSubtleAvatarNeutral(
                      text: "YBL",
                    ),
                    SmallSubtleAvatarBlue(
                      text: "MJ",
                    )
                  ],
                ),
              ],
            ),
            const DepositsH4Text(text: "Solid"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("40")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LargeSolidAvatarCyan(
                      text: "YBL",
                    ),
                    LargeSolidAvatarGreen(
                      text: "YBL",
                    ),
                    LargeSolidAvatarOrange(
                      text: "YBL",
                    ),
                    LargeSolidAvatarRed(
                      text: "YBL",
                    ),
                    LargeSolidAvatarNeutral(
                      text: "YBL",
                    ),
                    LargeSolidAvatarBlue(
                      text: "MJ",
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("32")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MediumSolidAvatarCyan(
                      text: "YBL",
                    ),
                    MediumSolidAvatarGreen(
                      text: "YBL",
                    ),
                    MediumSolidAvatarOrange(
                      text: "YBL",
                    ),
                    MediumSolidAvatarRed(
                      text: "YBL",
                    ),
                    MediumSolidAvatarNeutral(
                      text: "YBL",
                    ),
                    MediumSolidAvatarBlue(
                      text: "MJ",
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("24")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallSolidAvatarCyan(
                      text: "CU",
                    ),
                    SmallSolidAvatarGreen(
                      text: "ST",
                    ),
                    SmallSolidAvatarOrange(
                      text: "JD",
                    ),
                    SmallSolidAvatarRed(
                      text: "CK",
                    ),
                    SmallSolidAvatarNeutral(
                      text: "YBL",
                    ),
                    SmallSolidAvatarBlue(
                      text: "MJ",
                    )
                  ],
                ),
              ],
            ),
            const DepositsH4Text(text: "Image"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("40")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LargeImageAvatar(
                      path: "assets/images/Background.png",
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("32")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MediumImageAvatar(
                      path: "assets/images/Background.png",
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("24")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallImageAvatar(
                      path: "assets/images/Background.png",
                    )
                  ],
                ),
              ],
            ),
            const DepositsH4Text(text: "Subtle Status"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("40")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LargeSubtleStatusAvatarCyan(
                      text: "YBL",
                    ),
                    LargeSubtleStatusAvatarGreen(
                      text: "YBL",
                    ),
                    LargeSubtleStatusAvatarOrange(
                      text: "YBL",
                    ),
                    LargeSubtleStatusAvatarRed(
                      text: "YBL",
                    ),
                    LargeSubtleStatusAvatarNeutral(
                      text: "YBL",
                    ),
                    LargeSubtleStatusAvatarBlue(
                      text: "MJ",
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("32")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MediumSubtleStatusAvatarCyan(
                      text: "YBL",
                    ),
                    MediumSubtleStatusAvatarGreen(
                      text: "YBL",
                    ),
                    MediumSubtleStatusAvatarOrange(
                      text: "YBL",
                    ),
                    MediumSubtleStatusAvatarRed(
                      text: "YBL",
                    ),
                    MediumSubtleStatusAvatarNeutral(
                      text: "YBL",
                    ),
                    MediumSubtleStatusAvatarBlue(
                      text: "MJ",
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("24")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallSubtleStatusAvatarCyan(
                      text: "CU",
                    ),
                    SmallSubtleStatusAvatarGreen(
                      text: "ST",
                    ),
                    SmallSubtleStatusAvatarOrange(
                      text: "JD",
                    ),
                    SmallSubtleStatusAvatarRed(
                      text: "CK",
                    ),
                    SmallSubtleStatusAvatarNeutral(
                      text: "YBL",
                    ),
                    SmallSubtleStatusAvatarBlue(
                      text: "MJ",
                    )
                  ],
                ),
              ],
            ),
            const DepositsH4Text(text: "Solid"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("40")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LargeSolidStatusAvatarCyan(
                      text: "YBL",
                    ),
                    LargeSolidStatusAvatarGreen(
                      text: "YBL",
                    ),
                    LargeSolidStatusAvatarOrange(
                      text: "YBL",
                    ),
                    LargeSolidStatusAvatarRed(
                      text: "YBL",
                    ),
                    LargeSolidStatusAvatarNeutral(
                      text: "YBL",
                    ),
                    LargeSolidStatusAvatarBlue(
                      text: "MJ",
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("32")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MediumSolidStatusAvatarCyan(
                      text: "YBL",
                    ),
                    MediumSolidStatusAvatarGreen(
                      text: "YBL",
                    ),
                    MediumSolidStatusAvatarOrange(
                      text: "YBL",
                    ),
                    MediumSolidStatusAvatarRed(
                      text: "YBL",
                    ),
                    MediumSolidStatusAvatarNeutral(
                      text: "YBL",
                    ),
                    MediumSolidStatusAvatarBlue(
                      text: "MJ",
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("24")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallSolidStatusAvatarCyan(
                      text: "CU",
                    ),
                    SmallSolidStatusAvatarGreen(
                      text: "ST",
                    ),
                    SmallSolidStatusAvatarOrange(
                      text: "JD",
                    ),
                    SmallSolidStatusAvatarRed(
                      text: "CK",
                    ),
                    SmallSolidStatusAvatarNeutral(
                      text: "YBL",
                    ),
                    SmallSolidStatusAvatarBlue(
                      text: "MJ",
                    )
                  ],
                ),
              ],
            ),
            const DepositsH4Text(text: "Image"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("40")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LargeImageStatusAvatar(
                      path: "assets/images/Background.png",
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("32")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MediumImageStatusAvatar(
                      path: "assets/images/Background.png",
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Row(
                    children: [Text("24")],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallImageStatusAvatar(
                      path: "assets/images/Background.png",
                    )
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: const Row(
                children: [Text("--------------------------")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
