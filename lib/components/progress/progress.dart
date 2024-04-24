import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:flutter/material.dart';

class DepositsProgressbar extends StatefulWidget {
  final int percent;
  final Color color;
  final Color activeColor;

  const DepositsProgressbar({
    super.key,
    required this.percent,
    this.color = AppColors.neutral300Color,
    this.activeColor = AppColors.primaryColor,
  });

  @override
  DepositsProgressbarState createState() {
    return DepositsProgressbarState();
  }
}

class DepositsProgressbarState extends State<DepositsProgressbar> {
  double percent = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    percent = (widget.percent / 100) - 0.01;
    Widget result = Column(
      children: [
        Row(
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: percent,
                backgroundColor: widget.color,
                valueColor: AlwaysStoppedAnimation<Color>(
                  widget.activeColor,
                ),
                borderRadius: BorderRadius.circular(30.0),
                minHeight: 6.0,
              ),
            )
          ],
        ),
      ],
    );
    return result;
  }
}
