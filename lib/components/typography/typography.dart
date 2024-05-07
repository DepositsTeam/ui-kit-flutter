import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:flutter/material.dart';

class DepositsMassiveText extends StatefulWidget {
  final String text;
  final Color color;

  const DepositsMassiveText({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
  });

  @override
  DepositsMassiveTextState createState() {
    return DepositsMassiveTextState();
  }
}

class DepositsMassiveTextState extends State<DepositsMassiveText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontFamily: DepositsFontFamilies.SFProDisplay.toString(),
          fontSize: 72,
          color: widget.color,
          fontWeight: FontWeight.w600),
    );
  }
}

class DepositsHugeText extends StatefulWidget {
  final String text;
  final Color color;

  const DepositsHugeText({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
  });

  @override
  DepositsHugeTextState createState() {
    return DepositsHugeTextState();
  }
}

class DepositsHugeTextState extends State<DepositsHugeText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontFamily: DepositsFontFamilies.SFProDisplay.toString(),
          fontSize: 48,
          color: widget.color,
          fontWeight: FontWeight.w600),
    );
  }
}

class DepositsH1Text extends StatefulWidget {
  final String text;
  final Color color;

  const DepositsH1Text({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
  });

  @override
  DepositsH1TextState createState() {
    return DepositsH1TextState();
  }
}

class DepositsH1TextState extends State<DepositsH1Text> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontFamily: DepositsFontFamilies.SFProDisplay.toString(),
          fontSize: 32,
          color: widget.color,
          fontWeight: FontWeight.w600),
    );
  }
}

class DepositsH2Text extends StatefulWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  const DepositsH2Text({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
    this.textAlign = TextAlign.left,
  });

  @override
  DepositsH2TextState createState() {
    return DepositsH2TextState();
  }
}

class DepositsH2TextState extends State<DepositsH2Text> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
        fontFamily: DepositsFontFamilies.SFProDisplay.toString(),
        fontSize: 26,
        color: widget.color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class DepositsH3Text extends StatefulWidget {
  final String text;
  final Color color;

  const DepositsH3Text({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
  });

  @override
  DepositsH3TextState createState() {
    return DepositsH3TextState();
  }
}

class DepositsH3TextState extends State<DepositsH3Text> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontFamily: DepositsFontFamilies.SFProDisplay.toString(),
          fontSize: 21,
          color: widget.color,
          fontWeight: FontWeight.w600),
    );
  }
}

class DepositsH4Text extends StatefulWidget {
  final String text;
  final Color color;

  const DepositsH4Text({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
  });

  @override
  DepositsH4TextState createState() {
    return DepositsH4TextState();
  }
}

class DepositsH4TextState extends State<DepositsH4Text> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontFamily: DepositsFontFamilies.SFProDisplay.toString(),
          fontSize: 18,
          color: widget.color,
          fontWeight: FontWeight.w600),
    );
  }
}

class DepositsH5Text extends StatefulWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  const DepositsH5Text({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
    this.textAlign = TextAlign.left,
  });

  @override
  DepositsH5TextState createState() {
    return DepositsH5TextState();
  }
}

class DepositsH5TextState extends State<DepositsH5Text> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
          fontFamily: DepositsFontFamilies.SFProDisplay.toString(),
          fontSize: 16,
          color: widget.color,
          fontWeight: FontWeight.w600),
    );
  }
}

class DepositsBodyText extends StatefulWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  const DepositsBodyText({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
    this.textAlign = TextAlign.left,
  });

  @override
  DepositsBodyTextState createState() {
    return DepositsBodyTextState();
  }
}

class DepositsBodyTextState extends State<DepositsBodyText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
        fontFamily: DepositsFontFamilies.SFProText.toString(),
        fontSize: 16,
        color: widget.color,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class DepositsCalloutText extends StatefulWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  const DepositsCalloutText({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
    this.textAlign = TextAlign.left,
  });

  @override
  DepositsCalloutTextState createState() {
    return DepositsCalloutTextState();
  }
}

class DepositsCalloutTextState extends State<DepositsCalloutText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      maxLines: null,
      overflow: TextOverflow.clip,
      textAlign: widget.textAlign,
      style: TextStyle(
          fontFamily: DepositsFontFamilies.SFProText.toString(),
          fontSize: 15,
          color: widget.color,
          fontWeight: FontWeight.normal,
          overflow: TextOverflow.clip),
    );
  }
}

class DepositsSubheadText extends StatefulWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;
  final FontWeight fontWeight;

  const DepositsSubheadText({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
    this.textAlign = TextAlign.left,
    this.fontWeight = FontWeight.normal,
  });

  @override
  DepositsSubheadTextState createState() {
    return DepositsSubheadTextState();
  }
}

class DepositsSubheadTextState extends State<DepositsSubheadText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
        fontFamily: DepositsFontFamilies.SFProText.toString(),
        fontSize: 14,
        color: widget.color,
        fontWeight: widget.fontWeight,
      ),
    );
  }
}

class DepositsButtonText extends StatefulWidget {
  final String text;
  final Color color;

  const DepositsButtonText({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
  });

  @override
  DepositsButtonTextState createState() {
    return DepositsButtonTextState();
  }
}

class DepositsButtonTextState extends State<DepositsButtonText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        fontFamily: DepositsFontFamilies.SFProText.toString(),
        fontSize: 14,
        color: widget.color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class DepositsFootnoteText extends StatefulWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  const DepositsFootnoteText({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
    this.textAlign = TextAlign.left,
  });

  @override
  DepositsFootnoteTextState createState() {
    return DepositsFootnoteTextState();
  }
}

class DepositsFootnoteTextState extends State<DepositsFootnoteText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
        fontFamily: DepositsFontFamilies.SFProText.toString(),
        fontSize: 12,
        color: widget.color,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class DepositsCaptionText extends StatefulWidget {
  final String text;
  final Color color;

  const DepositsCaptionText({
    super.key,
    required this.text,
    this.color = AppColors.textPrimaryColor,
  });

  @override
  DepositsCaptionTextState createState() {
    return DepositsCaptionTextState();
  }
}

class DepositsCaptionTextState extends State<DepositsCaptionText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        fontFamily: DepositsFontFamilies.SFProText.toString(),
        fontSize: 10,
        color: widget.color,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
