import 'package:flutter/material.dart';

class DepositsCardDetailModel {
  String title;
  String subtitle;
  bool showVisibleIcon;
  bool isVisible;
  bool showCopyIcon;
  bool showCenterWidget;
  Widget centerWidget;

  DepositsCardDetailModel({
    required this.title,
    required this.subtitle,
    required this.showVisibleIcon,
    required this.isVisible,
    required this.showCopyIcon,
    required this.showCenterWidget,
    required this.centerWidget,
  });
}
