import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class ToastDocPage extends StatefulWidget {
  const ToastDocPage({super.key});

  @override
  State<ToastDocPage> createState() => _ToastDocPageState();
}

class _ToastDocPageState extends State<ToastDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.neutral400Color,
    );
  }
}
