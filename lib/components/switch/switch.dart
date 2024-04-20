import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:flutter/material.dart';

class DepositsSwitch extends StatefulWidget {
  final DepositsSwitchFormState formState;
  final Color activeColor;
  final Color inactiveColor;
  final Color color;
  final Function onChanged;

  const DepositsSwitch(
      {super.key,
      this.formState = DepositsSwitchFormState.off,
      this.activeColor = AppColors.green600Color,
      this.inactiveColor = AppColors.neutral200Color,
      this.color = AppColors.whiteColor,
      required this.onChanged});

  @override
  DepositsSwitchState createState() {
    return DepositsSwitchState();
  }
}

class DepositsSwitchState extends State<DepositsSwitch>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  bool initialValue = false;

  @override
  void initState() {
    super.initState();
    initialValue =
        widget.formState == DepositsSwitchFormState.off ? false : true;

    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 60));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 41.0,
        height: 24.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
              width: 1,
              color: initialValue == false
                  ? widget.inactiveColor
                  : widget.activeColor),
          color:
              initialValue == false ? widget.inactiveColor : widget.activeColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 0.0, bottom: 0.0, right: 0.0, left: 0.0),
          child: Container(
            alignment: initialValue
                ? ((Directionality.of(context) == TextDirection.rtl)
                    ? Alignment.centerLeft
                    : Alignment.centerRight)
                : ((Directionality.of(context) == TextDirection.rtl)
                    ? Alignment.centerRight
                    : Alignment.centerLeft),
            child: Container(
              width: 18.0,
              height: 18.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                      width: 1,
                      color: initialValue == false
                          ? widget.inactiveColor
                          : widget.activeColor)),
            ),
          ),
        ),
      ),
      onTap: () {
        if (_animationController!.isCompleted) {
          _animationController!.reverse();
        } else {
          _animationController!.forward();
        }
        setState(() {
          if (initialValue == true) {
            initialValue = false;
          } else {
            initialValue = true;
          }
        });
        widget.onChanged(initialValue == true
            ? DepositsSwitchFormState.on
            : DepositsSwitchFormState.off);
      },
    );
  }
}
