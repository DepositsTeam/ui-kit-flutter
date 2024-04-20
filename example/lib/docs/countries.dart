import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class CountryDocPage extends StatefulWidget {
  const CountryDocPage({super.key});

  @override
  State<CountryDocPage> createState() => _CountryDocPageState();
}

class _CountryDocPageState extends State<CountryDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.docBgColor,
    );
  }
}
