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
                child: Container(
              height: 6.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Row(
                children: [
                  SizedBox(
                    child: Container(
                      height: 6.0,
                      constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width) *
                          0.9,
                      width: MediaQuery.of(context).size.width * percent,
                      decoration: BoxDecoration(
                          color: widget.activeColor,
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ],
    );
    return result;
  }
}
