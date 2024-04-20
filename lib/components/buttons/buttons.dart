import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/helper.dart';
import 'package:flutter/material.dart';

class DepositsButtonWithIconWidget extends StatefulWidget {
  final String text;
  final Color textColor;
  final Color bgColor;
  final Color borderColor;
  final DepositsButtonSize size;
  final DepositsButtonStates state;
  final DepositsButtonTypes buttonType;
  final Widget iconWidget;
  final Function onPressed;

  const DepositsButtonWithIconWidget({
    super.key,
    required this.text,
    required this.textColor,
    required this.bgColor,
    required this.borderColor,
    this.size = DepositsButtonSize.large,
    this.state = DepositsButtonStates.normal,
    this.buttonType = DepositsButtonTypes.normal,
    required this.iconWidget,
    required this.onPressed,
  });

  @override
  DepositsButtonWithIconWidgetState createState() {
    return DepositsButtonWithIconWidgetState();
  }
}

class DepositsButtonWithIconWidgetState
    extends State<DepositsButtonWithIconWidget> {
  double textFontSize = 14.0;
  double buttonHeight = 40.0;
  Color bgColor = AppColors.transparentColor;
  Color textColor = AppColors.transparentColor;
  Color borderColor = AppColors.transparentColor;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bgColor = widget.bgColor;
      textColor = widget.textColor;
      borderColor = widget.borderColor;
      setState(() {
        setSizeValues();
        setStateValues();
      });
    });
  }

  setSizeValues() {
    switch (widget.size) {
      case DepositsButtonSize.massive:
        textFontSize = AppDimens.fontSize16;
        buttonHeight = 64.0;
        break;
      case DepositsButtonSize.huge:
        textFontSize = AppDimens.fontSize16;
        buttonHeight = 56.0;
        break;
      case DepositsButtonSize.xLarge:
        textFontSize = AppDimens.fontSize14;
        buttonHeight = 48.0;
        break;
      case DepositsButtonSize.large:
        textFontSize = AppDimens.fontSize14;
        buttonHeight = 40.0;
        break;
      case DepositsButtonSize.medium:
        textFontSize = AppDimens.fontSize12;
        buttonHeight = 32.0;
        break;
      case DepositsButtonSize.small:
        textFontSize = AppDimens.fontSize12;
        buttonHeight = 24.0;
        break;
      default:
    }
  }

  setStateValues() {
    switch (widget.state) {
      case DepositsButtonStates.normal:
        bgColor = widget.bgColor;
        break;
      case DepositsButtonStates.focus:
        if (widget.buttonType == DepositsButtonTypes.invincible) {
          borderColor = widget.textColor;
        } else {
          bgColor = widget.bgColor;
        }
        break;
      case DepositsButtonStates.hover:
        if (widget.buttonType == DepositsButtonTypes.outline) {
          textColor = AppColors.whiteColor;
          bgColor = widget.borderColor;
        } else {
          bgColor = lightenColor(widget.bgColor, 0.05);
          bgColor = lightenColor(widget.borderColor, 0.05);
        }
        break;
      case DepositsButtonStates.disabled:
        bgColor = lightenColor(widget.bgColor, 0.2);
        textColor = lightenColor(widget.textColor, 0.2);
        borderColor = lightenColor(widget.borderColor, 0.2);
        break;
      case DepositsButtonStates.hasIcon:
        bgColor = widget.bgColor;
        break;
      case DepositsButtonStates.hasDropdown:
        bgColor = widget.bgColor;
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        if (widget.state == DepositsButtonStates.disabled) {
        } else {
          widget.onPressed();
        }
      },
      style: OutlinedButton.styleFrom(
        elevation: 0,
        backgroundColor: bgColor,
        side: BorderSide(width: 1, color: borderColor),
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      child: SizedBox(
        height: buttonHeight,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  widget.state == DepositsButtonStates.hasIcon
                      ? Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(right: 0.0),
                                child: Icon(
                                  Icons.add,
                                  color: textColor,
                                ),
                              )
                            ],
                          ))
                      : Container(),
                  Expanded(
                    flex: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: widget.iconWidget,
                        ),
                        Text(
                          widget.text,
                          style: TextStyle(
                              fontFamily:
                                  DepositsFontFamilies.SFProDisplay.toString(),
                              fontSize: textFontSize,
                              color: textColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  widget.state == DepositsButtonStates.hasDropdown
                      ? Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: textColor,
                                ),
                              )
                            ],
                          ))
                      : Container(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DepositsButtonWidget extends StatefulWidget {
  final String text;
  final Color textColor;
  final Color bgColor;
  final Color borderColor;
  final DepositsButtonSize size;
  final DepositsButtonStates state;
  final DepositsButtonTypes buttonType;
  final Function onPressed;

  const DepositsButtonWidget({
    super.key,
    required this.text,
    required this.textColor,
    required this.bgColor,
    required this.borderColor,
    this.size = DepositsButtonSize.large,
    this.state = DepositsButtonStates.normal,
    this.buttonType = DepositsButtonTypes.normal,
    required this.onPressed,
  });

  @override
  DepositsButtonWidgetState createState() {
    return DepositsButtonWidgetState();
  }
}

class DepositsButtonWidgetState extends State<DepositsButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return DepositsButtonWithIconWidget(
        text: widget.text,
        textColor: widget.textColor,
        bgColor: widget.bgColor,
        borderColor: widget.borderColor,
        size: widget.size,
        state: widget.state,
        buttonType: widget.buttonType,
        iconWidget: Container(),
        onPressed: widget.onPressed);
  }
}

class DepositsButtonWidgetPrimary extends StatefulWidget {
  final String text;
  final Color textColor;
  final DepositsButtonSize size;
  final DepositsButtonStates state;
  final Function onPressed;

  const DepositsButtonWidgetPrimary({
    super.key,
    required this.text,
    this.textColor = AppColors.textPrimaryColor,
    this.size = DepositsButtonSize.large,
    this.state = DepositsButtonStates.normal,
    required this.onPressed,
  });

  @override
  DepositsButtonWidgetPrimaryState createState() {
    return DepositsButtonWidgetPrimaryState();
  }
}

class DepositsButtonWidgetPrimaryState
    extends State<DepositsButtonWidgetPrimary> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsButtonWidget(
      text: widget.text,
      textColor: widget.textColor,
      bgColor: AppColors.blue500Color,
      borderColor: AppColors.blue500Color,
      size: widget.size,
      state: widget.state,
      onPressed: widget.onPressed,
      buttonType: DepositsButtonTypes.primary,
    );
  }
}

class DepositsButtonWidgetDefault extends StatefulWidget {
  final String text;
  final Color textColor;
  final DepositsButtonSize size;
  final DepositsButtonStates state;
  final Function onPressed;

  const DepositsButtonWidgetDefault({
    super.key,
    required this.text,
    this.textColor = AppColors.textPrimaryColor,
    this.size = DepositsButtonSize.large,
    this.state = DepositsButtonStates.normal,
    required this.onPressed,
  });

  @override
  DepositsButtonWidgetDefaultState createState() {
    return DepositsButtonWidgetDefaultState();
  }
}

class DepositsButtonWidgetDefaultState
    extends State<DepositsButtonWidgetDefault> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsButtonWidget(
      text: widget.text,
      textColor: widget.textColor,
      bgColor: AppColors.neutral100Color,
      borderColor: AppColors.neutral200Color,
      size: widget.size,
      state: widget.state,
      onPressed: widget.onPressed,
      buttonType: DepositsButtonTypes.normal,
    );
  }
}

class DepositsButtonWidgetInvincible extends StatefulWidget {
  final String text;
  final Color textColor;
  final DepositsButtonSize size;
  final DepositsButtonStates state;
  final Function onPressed;

  const DepositsButtonWidgetInvincible({
    super.key,
    required this.text,
    this.textColor = AppColors.secondaryColor,
    this.size = DepositsButtonSize.large,
    this.state = DepositsButtonStates.normal,
    required this.onPressed,
  });

  @override
  DepositsButtonWidgetInvincibleState createState() {
    return DepositsButtonWidgetInvincibleState();
  }
}

class DepositsButtonWidgetInvincibleState
    extends State<DepositsButtonWidgetInvincible> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsButtonWidget(
      text: widget.text,
      textColor: widget.textColor,
      bgColor: AppColors.transparentColor,
      borderColor: AppColors.transparentColor,
      size: widget.size,
      state: widget.state,
      onPressed: widget.onPressed,
      buttonType: DepositsButtonTypes.invincible,
    );
  }
}

class DepositsButtonWidgetOutline extends StatefulWidget {
  final String text;
  final Color textColor;
  final DepositsButtonSize size;
  final DepositsButtonStates state;
  final Function onPressed;

  const DepositsButtonWidgetOutline({
    super.key,
    required this.text,
    this.textColor = AppColors.secondaryColor,
    this.size = DepositsButtonSize.large,
    this.state = DepositsButtonStates.normal,
    required this.onPressed,
  });

  @override
  DepositsButtonWidgetOutlineState createState() {
    return DepositsButtonWidgetOutlineState();
  }
}

class DepositsButtonWidgetOutlineState
    extends State<DepositsButtonWidgetOutline> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsButtonWidget(
      text: widget.text,
      textColor: widget.textColor,
      bgColor: AppColors.transparentColor,
      borderColor: AppColors.secondaryColor,
      size: widget.size,
      state: widget.state,
      onPressed: widget.onPressed,
      buttonType: DepositsButtonTypes.outline,
    );
  }
}

class DepositsButtonWidgetError extends StatefulWidget {
  final String text;
  final Color textColor;
  final DepositsButtonSize size;
  final DepositsButtonStates state;
  final Function onPressed;

  const DepositsButtonWidgetError({
    super.key,
    required this.text,
    this.textColor = AppColors.whiteColor,
    this.size = DepositsButtonSize.large,
    this.state = DepositsButtonStates.normal,
    required this.onPressed,
  });

  @override
  DepositsButtonWidgetErrorState createState() {
    return DepositsButtonWidgetErrorState();
  }
}

class DepositsButtonWidgetErrorState extends State<DepositsButtonWidgetError> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsButtonWidget(
      text: widget.text,
      textColor: widget.textColor,
      bgColor: AppColors.red500Color,
      borderColor: AppColors.red500Color,
      size: widget.size,
      state: widget.state,
      onPressed: widget.onPressed,
      buttonType: DepositsButtonTypes.error,
    );
  }
}

class DepositsButtonWidgetSuccess extends StatefulWidget {
  final String text;
  final Color textColor;
  final DepositsButtonSize size;
  final DepositsButtonStates state;
  final Function onPressed;

  const DepositsButtonWidgetSuccess({
    super.key,
    required this.text,
    this.textColor = AppColors.whiteColor,
    this.size = DepositsButtonSize.large,
    this.state = DepositsButtonStates.normal,
    required this.onPressed,
  });

  @override
  DepositsButtonWidgetSuccessState createState() {
    return DepositsButtonWidgetSuccessState();
  }
}

class DepositsButtonWidgetSuccessState
    extends State<DepositsButtonWidgetSuccess> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DepositsButtonWidget(
      text: widget.text,
      textColor: widget.textColor,
      bgColor: AppColors.green600Color,
      borderColor: AppColors.green600Color,
      size: widget.size,
      state: widget.state,
      onPressed: widget.onPressed,
      buttonType: DepositsButtonTypes.success,
    );
  }
}
