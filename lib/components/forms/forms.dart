import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/model/city_model.dart';
import 'package:deposits_ui_kit_v2/utils/model/countries.dart';
import 'package:deposits_ui_kit_v2/utils/model/country_model.dart';
import 'package:deposits_ui_kit_v2/utils/model/state_model.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class DepositsFormField extends StatefulWidget {
  final String title;
  final String? placeholder;
  final DepositsFormSizeStates size;
  final String? errorText;
  final String? initialValue;
  final DepositsFormStates formState;
  final String? readOnly;
  final Color? bgColor;
  final Function onTapped;

  const DepositsFormField(
      {super.key,
      required this.title,
      this.placeholder,
      this.size = DepositsFormSizeStates.medium,
      this.errorText,
      this.initialValue,
      this.formState = DepositsFormStates.normal,
      this.readOnly = "false",
      this.bgColor,
      required this.onTapped});

  @override
  DepositsFormFieldState createState() {
    return DepositsFormFieldState();
  }
}

class DepositsFormFieldState extends State<DepositsFormField> {
  var initialValue = "";
  DepositsFormStates formState = DepositsFormStates.normal;

  var fillColor = AppColors.transparentColor;

  var titleFontSize = AppDimens.fontSize16;
  var titleTextColor = AppColors.neutral700Color;
  var titleFontWeight = FontWeight.w400;

  var placeholderFontSize = AppDimens.fontSize16;
  var placeholderTextColor = AppColors.neutral300Color;
  var placeholderFontWeight = FontWeight.w400;

  var inputFontSize = AppDimens.fontSize14;
  var inputTextColor = AppColors.neutral700Color;
  var inputFontWeight = FontWeight.w400;

  var errorFontSize = AppDimens.fontSize12;
  var errorTextColor = AppColors.red500Color;
  var errorFontWeight = FontWeight.w400;

  var formFieldheight = 48.0;
  var cursorHeight = 18.0;
  var suffixMinHeight = 28.0;
  var formFieldContentPadding = const EdgeInsets.fromLTRB(12.0, 0.0, 20.0, 0.0);
  var borderColor = AppColors.neutral300Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        initialValue = "${widget.initialValue}";
        resetValues();
      });
    });
  }

  resetValues() {
    if (widget.size == DepositsFormSizeStates.small) {
      formFieldheight = 40.0;
      cursorHeight = 14.0;

      inputFontSize = AppDimens.fontSize12;
    } else if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 56.0;
      cursorHeight = 25.0;

      inputFontSize = AppDimens.fontSize16;
    }
    fillColor = AppColors.transparentColor;
    if (formState == DepositsFormStates.active ||
        formState == DepositsFormStates.cursor) {
      borderColor = AppColors.primaryColor;
    } else if (formState == DepositsFormStates.error) {
      placeholderTextColor = AppColors.neutral700Color;
      fillColor = AppColors.red150Color;
      borderColor = AppColors.red500Color;
    } else if (formState == DepositsFormStates.disabled) {
      placeholderTextColor = AppColors.neutral300Color;
      borderColor = AppColors.neutral300Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextCustom(
                  text: widget.title,
                  textFontSize: titleFontSize,
                  color: titleTextColor,
                  fontWeight: titleFontWeight),
            )
          ],
        ),
        SizedBox(
          height: formFieldheight,
          child: TextFormField(
            initialValue: initialValue,
            cursorColor: AppColors.neutral700Color,
            cursorHeight: cursorHeight,
            enabled: formState == DepositsFormStates.disabled ? false : true,
            readOnly: widget.readOnly == 'true' ? true : false,
            style: TextStyle(
                color: inputTextColor,
                fontSize: inputFontSize,
                fontWeight: inputFontWeight),
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: TextStyle(
                  color: placeholderTextColor,
                  fontWeight: placeholderFontWeight,
                  fontSize: placeholderFontSize),
              filled: true,
              fillColor: fillColor,
              contentPadding: formFieldContentPadding,
              suffixIconConstraints:
                  BoxConstraints(minHeight: suffixMinHeight, minWidth: 40),
              suffixIcon: formState == DepositsFormStates.cursor
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          initialValue = "";
                          resetValues();
                        });
                      },
                      child: const Icon(
                        Icons.cancel,
                        size: 18.0,
                        color: AppColors.neutral400Color,
                      ))
                  : null,
              border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                  borderSide: BorderSide(width: 1.0, color: borderColor)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
            ),
            onChanged: (a) {
              setState(() {
                formState = DepositsFormStates.active;
                resetValues();
              });
              widget.onTapped(a);
            },
            // validator: (value) {
            //   if (value == null || value.isEmpty) {
            //     return 'Please enter some text';
            //   }
            //   return null;
            // },
          ),
        ),
        widget.errorText.toString().isNotEmpty
            ? Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: const Icon(
                                Icons.info,
                                size: 10.0,
                                color: AppColors.red500Color,
                              ),
                            )
                          ],
                        ),
                        Expanded(
                            child: TextCustom(
                                text: "${widget.errorText}",
                                textFontSize: errorFontSize,
                                color: errorTextColor,
                                fontWeight: errorFontWeight))
                      ],
                    )
                  ],
                ),
              )
            : Container(),
      ],
    );
    return result;
  }
}

class DepositsTextArea extends StatefulWidget {
  final String title;
  final String? placeholder;
  final String? errorText;
  final String? initialValue;
  final DepositsFormStates formState;
  final String? readOnly;
  final Color? bgColor;
  final Function onTapped;

  const DepositsTextArea(
      {super.key,
      required this.title,
      this.placeholder,
      this.errorText,
      this.initialValue,
      this.formState = DepositsFormStates.normal,
      this.readOnly = "false",
      this.bgColor,
      required this.onTapped});

  @override
  DepositsTextAreaState createState() {
    return DepositsTextAreaState();
  }
}

class DepositsTextAreaState extends State<DepositsTextArea> {
  var initialValue = "";
  DepositsFormStates formState = DepositsFormStates.normal;

  var fillColor = AppColors.transparentColor;

  var titleFontSize = AppDimens.fontSize16;
  var titleTextColor = AppColors.neutral700Color;
  var titleFontWeight = FontWeight.w400;

  var placeholderFontSize = AppDimens.fontSize16;
  var placeholderTextColor = AppColors.neutral300Color;
  var placeholderFontWeight = FontWeight.w400;

  var inputFontSize = AppDimens.fontSize14;
  var inputTextColor = AppColors.neutral700Color;
  var inputFontWeight = FontWeight.w400;

  var errorFontSize = AppDimens.fontSize12;
  var errorTextColor = AppColors.red500Color;
  var errorFontWeight = FontWeight.w400;

  var formFieldheight = 48.0;
  var cursorHeight = 18.0;
  var formFieldContentPadding =
      const EdgeInsets.fromLTRB(12.0, 10.0, 20.0, 10.0);
  var borderColor = AppColors.neutral300Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        initialValue = "${widget.initialValue}";
        resetValues();
      });
    });
  }

  resetValues() {
    fillColor = AppColors.transparentColor;
    if (formState == DepositsFormStates.active ||
        formState == DepositsFormStates.cursor) {
      borderColor = AppColors.primaryColor;
    } else if (formState == DepositsFormStates.error) {
      placeholderTextColor = AppColors.neutral700Color;
      fillColor = AppColors.red150Color;
      borderColor = AppColors.red500Color;
    } else if (formState == DepositsFormStates.disabled) {
      placeholderTextColor = AppColors.neutral300Color;
      borderColor = AppColors.neutral300Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextCustom(
                  text: widget.title,
                  textFontSize: titleFontSize,
                  color: titleTextColor,
                  fontWeight: titleFontWeight),
            )
          ],
        ),
        SizedBox(
          // height: formFieldheight,
          child: TextFormField(
            initialValue: initialValue,
            cursorColor: AppColors.neutral700Color,
            cursorHeight: cursorHeight,
            enabled: formState == DepositsFormStates.disabled ? false : true,
            readOnly: widget.readOnly == 'true' ? true : false,
            maxLines: null,
            minLines: 3,
            style: TextStyle(
                color: inputTextColor,
                fontSize: inputFontSize,
                fontWeight: inputFontWeight),
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: TextStyle(
                  color: placeholderTextColor,
                  fontWeight: placeholderFontWeight,
                  fontSize: placeholderFontSize),
              filled: true,
              fillColor: fillColor,
              contentPadding: formFieldContentPadding,
              border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                  borderSide: BorderSide(width: 1.0, color: borderColor)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
            ),
            onChanged: (a) {
              setState(() {
                formState = DepositsFormStates.active;
                resetValues();
              });
              widget.onTapped(a);
            },
            // validator: (value) {
            //   if (value == null || value.isEmpty) {
            //     return 'Please enter some text';
            //   }
            //   return null;
            // },
          ),
        ),
        widget.errorText.toString().isNotEmpty
            ? Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: const Icon(
                                Icons.info,
                                size: 10.0,
                                color: AppColors.red500Color,
                              ),
                            )
                          ],
                        ),
                        Expanded(
                            child: TextCustom(
                                text: "${widget.errorText}",
                                textFontSize: errorFontSize,
                                color: errorTextColor,
                                fontWeight: errorFontWeight))
                      ],
                    )
                  ],
                ),
              )
            : Container(),
      ],
    );
    return result;
  }
}

class DepositsSearchInput extends StatefulWidget {
  final String? placeholder;
  final DepositsFormSizeStates size;
  final String? errorText;
  final String? initialValue;
  final DepositsFormStates formState;
  final String? readOnly;
  final Color? bgColor;
  final Function onTapped;

  const DepositsSearchInput(
      {super.key,
      this.placeholder,
      this.size = DepositsFormSizeStates.medium,
      this.errorText,
      this.initialValue,
      this.formState = DepositsFormStates.normal,
      this.readOnly = "false",
      this.bgColor,
      required this.onTapped});

  @override
  DepositsSearchInputState createState() {
    return DepositsSearchInputState();
  }
}

class DepositsSearchInputState extends State<DepositsSearchInput> {
  var initialValue = "";
  DepositsFormStates formState = DepositsFormStates.normal;

  var fillColor = AppColors.transparentColor;

  var titleFontSize = AppDimens.fontSize16;
  var titleTextColor = AppColors.neutral700Color;
  var titleFontWeight = FontWeight.w400;

  var placeholderFontSize = AppDimens.fontSize16;
  var placeholderTextColor = AppColors.neutral300Color;
  var placeholderFontWeight = FontWeight.w400;

  var inputFontSize = AppDimens.fontSize14;
  var inputTextColor = AppColors.neutral700Color;
  var inputFontWeight = FontWeight.w400;

  var errorFontSize = AppDimens.fontSize12;
  var errorTextColor = AppColors.red500Color;
  var errorFontWeight = FontWeight.w400;

  var formFieldheight = 48.0;
  var cursorHeight = 18.0;
  var suffixMinHeight = 28.0;
  var formFieldContentPadding = const EdgeInsets.fromLTRB(12.0, 0.0, 20.0, 0.0);
  var borderColor = AppColors.neutral300Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        initialValue = "${widget.initialValue}";
        resetValues();
      });
    });
  }

  resetValues() {
    if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 40.0;
      cursorHeight = 14.0;

      inputFontSize = AppDimens.fontSize12;
    } else if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 56.0;
      cursorHeight = 25.0;

      inputFontSize = AppDimens.fontSize16;
    }
    fillColor = AppColors.transparentColor;
    if (formState == DepositsFormStates.active ||
        formState == DepositsFormStates.cursor) {
      borderColor = AppColors.primaryColor;
    } else if (formState == DepositsFormStates.error) {
      placeholderTextColor = AppColors.neutral700Color;
      fillColor = AppColors.red150Color;
      borderColor = AppColors.red500Color;
    } else if (formState == DepositsFormStates.disabled) {
      placeholderTextColor = AppColors.neutral300Color;
      borderColor = AppColors.neutral300Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: formFieldheight,
          child: TextFormField(
            initialValue: initialValue,
            cursorColor: AppColors.neutral700Color,
            cursorHeight: cursorHeight,
            enabled: formState == DepositsFormStates.disabled ? false : true,
            readOnly: widget.readOnly == 'true' ? true : false,
            style: TextStyle(
                color: inputTextColor,
                fontSize: inputFontSize,
                fontWeight: inputFontWeight),
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: TextStyle(
                  color: placeholderTextColor,
                  fontWeight: placeholderFontWeight,
                  fontSize: placeholderFontSize),
              filled: true,
              fillColor: fillColor,
              contentPadding: formFieldContentPadding,
              prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: placeholderTextColor,
                  )),
              suffixIconConstraints:
                  BoxConstraints(minHeight: suffixMinHeight, minWidth: 40),
              suffixIcon: formState == DepositsFormStates.cursor
                  ? GestureDetector(
                      onTap: () {
                        initialValue = "";
                        setState(() {
                          resetValues();
                        });
                      },
                      child: const Icon(
                        Icons.cancel,
                        size: 18.0,
                        color: AppColors.neutral400Color,
                      ))
                  : null,
              border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                  borderSide: BorderSide(width: 1.0, color: borderColor)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
            ),
            onChanged: (a) {
              formState = DepositsFormStates.cursor;
              setState(() {
                resetValues();
              });
              widget.onTapped(a);
            },
            // validator: (value) {
            //   if (value == null || value.isEmpty) {
            //     return 'Please enter some text';
            //   }
            //   return null;
            // },
          ),
        ),
        widget.errorText.toString().isNotEmpty
            ? Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: const Icon(
                                Icons.info,
                                size: 10.0,
                                color: AppColors.red500Color,
                              ),
                            )
                          ],
                        ),
                        Expanded(
                            child: TextCustom(
                                text: "${widget.errorText}",
                                textFontSize: errorFontSize,
                                color: errorTextColor,
                                fontWeight: errorFontWeight))
                      ],
                    )
                  ],
                ),
              )
            : Container(),
      ],
    );
    return result;
  }
}

class DepositsPhoneInput extends StatefulWidget {
  final String title;
  final String? countryCode;
  final String? placeholder;
  final DepositsFormSizeStates size;
  final String? errorText;
  final String? initialValue;
  final DepositsFormStates formState;
  final String? readOnly;
  final Color? bgColor;
  final Function onTapped;

  const DepositsPhoneInput(
      {super.key,
      required this.title,
      this.countryCode,
      this.placeholder,
      this.size = DepositsFormSizeStates.medium,
      this.errorText,
      this.initialValue,
      this.formState = DepositsFormStates.normal,
      this.readOnly = "false",
      this.bgColor,
      required this.onTapped});

  @override
  DepositsPhoneInputState createState() {
    return DepositsPhoneInputState();
  }
}

class DepositsPhoneInputState extends State<DepositsPhoneInput> {
  var initialValue = "";
  DepositsFormStates formState = DepositsFormStates.normal;

  var fillColor = AppColors.transparentColor;

  var titleFontSize = AppDimens.fontSize16;
  var titleTextColor = AppColors.neutral700Color;
  var titleFontWeight = FontWeight.w400;

  var placeholderFontSize = AppDimens.fontSize16;
  var placeholderTextColor = AppColors.neutral300Color;
  var placeholderFontWeight = FontWeight.w400;

  var inputFontSize = AppDimens.fontSize14;
  var inputTextColor = AppColors.neutral700Color;
  var inputFontWeight = FontWeight.w400;

  var errorFontSize = AppDimens.fontSize12;
  var errorTextColor = AppColors.red500Color;
  var errorFontWeight = FontWeight.w400;

  var formFieldheight = 48.0;
  var cursorHeight = 18.0;
  var suffixMinHeight = 28.0;
  var formFieldContentPadding = const EdgeInsets.fromLTRB(12.0, 0.0, 20.0, 0.0);
  var borderColor = AppColors.neutral300Color;

  var countryCodeColor = AppColors.neutral300Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        initialValue = "${widget.initialValue}";
        resetValues();
      });
    });
  }

  resetValues() {
    if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 40.0;
      cursorHeight = 14.0;

      inputFontSize = AppDimens.fontSize12;
    } else if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 56.0;
      cursorHeight = 25.0;

      inputFontSize = AppDimens.fontSize16;
    }
    fillColor = AppColors.transparentColor;
    if (formState == DepositsFormStates.active ||
        formState == DepositsFormStates.cursor) {
      borderColor = AppColors.primaryColor;
      countryCodeColor = titleTextColor;
    } else if (formState == DepositsFormStates.error) {
      placeholderTextColor = AppColors.neutral700Color;
      fillColor = AppColors.red150Color;
      borderColor = AppColors.red500Color;
      countryCodeColor = titleTextColor;
    } else if (formState == DepositsFormStates.disabled) {
      placeholderTextColor = AppColors.neutral300Color;
      borderColor = AppColors.neutral300Color;
      countryCodeColor = placeholderTextColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextCustom(
                  text: widget.title,
                  textFontSize: titleFontSize,
                  color: titleTextColor,
                  fontWeight: titleFontWeight),
            )
          ],
        ),
        SizedBox(
          height: formFieldheight,
          child: TextFormField(
            initialValue: initialValue,
            cursorColor: AppColors.neutral700Color,
            cursorHeight: cursorHeight,
            enabled: formState == DepositsFormStates.disabled ? false : true,
            readOnly: widget.readOnly == 'true' ? true : false,
            style: TextStyle(
                color: inputTextColor,
                fontSize: inputFontSize,
                fontWeight: inputFontWeight),
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: TextStyle(
                  color: placeholderTextColor,
                  fontWeight: placeholderFontWeight,
                  fontSize: placeholderFontSize),
              filled: true,
              fillColor: fillColor,
              contentPadding: formFieldContentPadding,
              prefixIcon: Container(
                height: 24.0,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  width: 20.0,
                  height: 24.0,
                  margin: const EdgeInsets.only(right: 5.0),
                  decoration: BoxDecoration(
                      border: Border(
                          right:
                              BorderSide(width: 1.0, color: countryCodeColor))),
                  child: Center(
                    child: TextCustom(
                        text: "${widget.countryCode}",
                        textFontSize: AppDimens.fontSize14,
                        color: countryCodeColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              suffixIconConstraints:
                  BoxConstraints(minHeight: suffixMinHeight, minWidth: 40),
              suffixIcon: formState == DepositsFormStates.cursor
                  ? GestureDetector(
                      onTap: () {
                        initialValue = "";
                        setState(() {
                          resetValues();
                        });
                      },
                      child: const Icon(
                        Icons.cancel,
                        size: 18.0,
                        color: AppColors.neutral400Color,
                      ))
                  : null,
              border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                  borderSide: BorderSide(width: 1.0, color: borderColor)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
            ),
            onChanged: (a) {
              setState(() {
                formState = DepositsFormStates.cursor;
                resetValues();
              });
              widget.onTapped(a);
            },
            keyboardType: TextInputType.number,
          ),
        ),
        widget.errorText.toString().isNotEmpty
            ? Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: const Icon(
                                Icons.info,
                                size: 10.0,
                                color: AppColors.red500Color,
                              ),
                            )
                          ],
                        ),
                        Expanded(
                            child: TextCustom(
                                text: "${widget.errorText}",
                                textFontSize: errorFontSize,
                                color: errorTextColor,
                                fontWeight: errorFontWeight))
                      ],
                    )
                  ],
                ),
              )
            : Container(),
      ],
    );
    return result;
  }
}

class DepositsNumberInput extends StatefulWidget {
  final String title;
  final String? placeholder;
  final DepositsFormSizeStates size;
  final String? errorText;
  final String? initialValue;
  final DepositsFormStates formState;
  final String? readOnly;
  final Color? bgColor;
  final Function onTapped;

  const DepositsNumberInput(
      {super.key,
      required this.title,
      this.placeholder,
      this.size = DepositsFormSizeStates.medium,
      this.errorText,
      this.initialValue,
      this.formState = DepositsFormStates.normal,
      this.readOnly = "false",
      this.bgColor,
      required this.onTapped});

  @override
  DepositsNumberInputState createState() {
    return DepositsNumberInputState();
  }
}

class DepositsNumberInputState extends State<DepositsNumberInput> {
  var initialValue = "";
  DepositsFormStates formState = DepositsFormStates.normal;
  var fieldController = TextEditingController();

  var fillColor = AppColors.transparentColor;

  var titleFontSize = AppDimens.fontSize16;
  var titleTextColor = AppColors.neutral700Color;
  var titleFontWeight = FontWeight.w400;

  var placeholderFontSize = AppDimens.fontSize16;
  var placeholderTextColor = AppColors.neutral300Color;
  var placeholderFontWeight = FontWeight.w400;

  var inputFontSize = AppDimens.fontSize14;
  var inputTextColor = AppColors.neutral700Color;
  var inputFontWeight = FontWeight.w400;

  var errorFontSize = AppDimens.fontSize12;
  var errorTextColor = AppColors.red500Color;
  var errorFontWeight = FontWeight.w400;

  var formFieldheight = 48.0;
  var cursorHeight = 18.0;
  var suffixMinHeight = 28.0;
  var iconSize = 22.0;
  var formFieldContentPadding = const EdgeInsets.fromLTRB(12.0, 0.0, 20.0, 0.0);
  var borderColor = AppColors.neutral300Color;

  @override
  void initState() {
    super.initState();
    fieldController.text = initialValue;
    fieldController.addListener(() {
      initialValue = fieldController.text;
      setState(() {
        formState = DepositsFormStates.cursor;
        resetValues();
      });
      widget.onTapped(initialValue);
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        initialValue = "${widget.initialValue}";
        resetValues();
      });
    });
  }

  @override
  void dispose() {
    fieldController.dispose();
    super.dispose();
  }

  resetValues() {
    if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 40.0;
      cursorHeight = 14.0;
      suffixMinHeight = 20;
      iconSize = 18.0;

      inputFontSize = AppDimens.fontSize12;
    } else if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 56.0;
      cursorHeight = 25.0;

      inputFontSize = AppDimens.fontSize16;
    }
    fillColor = AppColors.transparentColor;
    if (formState == DepositsFormStates.active ||
        formState == DepositsFormStates.cursor) {
      borderColor = AppColors.primaryColor;
    } else if (formState == DepositsFormStates.error) {
      placeholderTextColor = AppColors.neutral700Color;
      fillColor = AppColors.red150Color;
      borderColor = AppColors.red500Color;
    } else if (formState == DepositsFormStates.disabled) {
      placeholderTextColor = AppColors.neutral300Color;
      borderColor = AppColors.neutral300Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextCustom(
                  text: widget.title,
                  textFontSize: titleFontSize,
                  color: titleTextColor,
                  fontWeight: titleFontWeight),
            )
          ],
        ),
        SizedBox(
          height: formFieldheight,
          child: TextFormField(
            controller: fieldController,
            cursorColor: AppColors.neutral700Color,
            cursorHeight: cursorHeight,
            enabled: formState == DepositsFormStates.disabled ? false : true,
            readOnly: widget.readOnly == 'true' ? true : false,
            style: TextStyle(
                color: inputTextColor,
                fontSize: inputFontSize,
                fontWeight: inputFontWeight),
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: TextStyle(
                  color: placeholderTextColor,
                  fontWeight: placeholderFontWeight,
                  fontSize: placeholderFontSize),
              filled: true,
              fillColor: fillColor,
              contentPadding: formFieldContentPadding,
              suffixIconConstraints:
                  BoxConstraints(minHeight: suffixMinHeight, minWidth: 30),
              suffixIcon: SizedBox(
                width: 40.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              if (fieldController.text.isNotEmpty) {
                                setState(() {
                                  fieldController.text =
                                      "${int.parse(fieldController.text) + 1}";
                                });
                              }
                            },
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              color: AppColors.neutral700Color,
                              size: iconSize,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              if (fieldController.text.isNotEmpty) {
                                setState(() {
                                  fieldController.text =
                                      "${int.parse(fieldController.text) - 1}";
                                });
                              }
                            },
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.neutral700Color,
                              size: iconSize,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                  borderSide: BorderSide(width: 1.0, color: borderColor)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
            ),
            onChanged: (a) {
              initialValue = a;
              setState(() {
                formState = DepositsFormStates.cursor;
                resetValues();
              });
              widget.onTapped(a);
            },
            keyboardType: TextInputType.number,
          ),
        ),
        widget.errorText.toString().isNotEmpty
            ? Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: const Icon(
                                Icons.info,
                                size: 10.0,
                                color: AppColors.red500Color,
                              ),
                            )
                          ],
                        ),
                        Expanded(
                            child: TextCustom(
                                text: "${widget.errorText}",
                                textFontSize: errorFontSize,
                                color: errorTextColor,
                                fontWeight: errorFontWeight))
                      ],
                    )
                  ],
                ),
              )
            : Container(),
      ],
    );
    return result;
  }
}

class DepositsDropDown extends StatefulWidget {
  final String title;
  final List<String> items;
  final String? placeholder;
  final DepositsFormSizeStates size;
  final String? initialValue;
  final DepositsFormStates formState;
  final Function onTapped;

  const DepositsDropDown(
      {super.key,
      required this.title,
      required this.items,
      this.placeholder,
      this.size = DepositsFormSizeStates.medium,
      this.initialValue,
      this.formState = DepositsFormStates.normal,
      required this.onTapped});

  @override
  DepositsDropDownState createState() {
    return DepositsDropDownState();
  }
}

class DepositsDropDownState extends State<DepositsDropDown> {
  var initialValue = "";
  var selectedValue = "";
  DepositsFormStates formState = DepositsFormStates.normal;
  var placeholderText = "Select";
  var fieldController = TextEditingController();

  var iconColor = AppColors.neutral600Color;

  var titleFontSize = AppDimens.fontSize16;
  var titleTextColor = AppColors.neutral700Color;
  var titleFontWeight = FontWeight.w400;

  var placeholderFontSize = AppDimens.fontSize16;
  var placeholderTextColor = AppColors.neutral300Color;
  var placeholderFontWeight = FontWeight.w400;

  var inputTextColor = AppColors.neutral700Color;

  var formFieldheight = 48.0;
  var iconSize = 24.0;
  var formFieldContentPadding = const EdgeInsets.fromLTRB(12.0, 0.0, 20.0, 0.0);
  var borderColor = AppColors.neutral300Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        if (widget.placeholder != null) {
          placeholderText = "${widget.placeholder}";
        }
        selectedValue = "${widget.initialValue}";
        resetValues();
      });
    });
  }

  @override
  void dispose() {
    fieldController.dispose();
    super.dispose();
  }

  resetValues() {
    if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 40.0;
      iconSize = 18.0;
    } else if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 56.0;
    }

    if (formState == DepositsFormStates.active) {
      borderColor = AppColors.primaryColor;
    } else if (formState == DepositsFormStates.error) {
      borderColor = AppColors.red500Color;
    } else if (formState == DepositsFormStates.disabled) {
      iconColor = AppColors.neutral300Color;
      borderColor = AppColors.neutral300Color;
      inputTextColor = AppColors.neutral300Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextCustom(
                  text: widget.title,
                  textFontSize: titleFontSize,
                  color: titleTextColor,
                  fontWeight: titleFontWeight),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: formFieldheight,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Row(
                      children: [
                        Icon(
                          Icons.remove,
                          size: 16,
                          color: placeholderTextColor,
                        ),
                        Text(
                          ' $placeholderText ',
                          style: TextStyle(
                            fontSize: AppDimens.fontSize16,
                            fontWeight: FontWeight.w400,
                            color: placeholderTextColor,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Icon(
                          Icons.remove,
                          size: 16,
                          color: placeholderTextColor,
                        ),
                      ],
                    ),
                    items: widget.items.isNotEmpty &&
                            formState != DepositsFormStates.disabled
                        ? widget.items
                            .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontSize: AppDimens.fontSize16,
                                      fontWeight: FontWeight.w400,
                                      color: inputTextColor,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList()
                        : null,
                    value: selectedValue.isNotEmpty &&
                            selectedValue != 'null' &&
                            formState != DepositsFormStates.disabled
                        ? selectedValue
                        : null,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = "$value";
                      });
                      widget.onTapped(selectedValue);
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 50,
                      width: 160,
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          width: 1,
                          color: borderColor,
                        ),
                        color: AppColors.transparentColor,
                      ),
                      elevation: 0,
                    ),
                    iconStyleData: IconStyleData(
                      icon: const Icon(
                        Icons.arrow_drop_down,
                      ),
                      iconSize: iconSize,
                      iconEnabledColor: iconColor,
                      iconDisabledColor: AppColors.neutral400Color,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors.whiteColor,
                      ),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(0),
                        thickness: MaterialStateProperty.all(0),
                        thumbVisibility: MaterialStateProperty.all(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 14, right: 14),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
    return result;
  }
}

class DepositsCountryDropDown extends StatefulWidget {
  final String title;
  final String? placeholder;
  final DepositsFormSizeStates size;
  final String? initialValue;
  final DepositsFormStates formState;
  final Function onTapped;

  const DepositsCountryDropDown(
      {super.key,
      required this.title,
      this.placeholder,
      this.size = DepositsFormSizeStates.medium,
      this.initialValue,
      this.formState = DepositsFormStates.normal,
      required this.onTapped});

  @override
  DepositsCountryDropDownState createState() {
    return DepositsCountryDropDownState();
  }
}

class DepositsCountryDropDownState extends State<DepositsCountryDropDown> {
  var initialValue = "";
  var selectedValue = "";
  DepositsFormStates formState = DepositsFormStates.normal;
  var placeholderText = "Select";
  var fieldController = TextEditingController();

  List<CountryModel> countryList = [];
  List<StateModel> stateList = [];
  List<CityModel> cityList = [];

  List<String> items = [];

  var iconColor = AppColors.neutral600Color;

  var titleFontSize = AppDimens.fontSize16;
  var titleTextColor = AppColors.neutral700Color;
  var titleFontWeight = FontWeight.w400;

  var placeholderFontSize = AppDimens.fontSize16;
  var placeholderTextColor = AppColors.neutral300Color;
  var placeholderFontWeight = FontWeight.w400;

  var inputTextColor = AppColors.neutral700Color;

  var formFieldheight = 48.0;
  var iconSize = 24.0;
  var formFieldContentPadding = const EdgeInsets.fromLTRB(12.0, 0.0, 20.0, 0.0);
  var borderColor = AppColors.neutral300Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        if (widget.placeholder != null) {
          placeholderText = "${widget.placeholder}";
        }
        selectedValue = "${widget.initialValue}";
        resetValues();
      });
    });
  }

  @override
  void dispose() {
    fieldController.dispose();
    super.dispose();
  }

  resetValues() {
    if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 40.0;
      iconSize = 18.0;
    } else if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 56.0;
    }

    if (formState == DepositsFormStates.active) {
      borderColor = AppColors.primaryColor;
    } else if (formState == DepositsFormStates.error) {
      borderColor = AppColors.red500Color;
    } else if (formState == DepositsFormStates.disabled) {
      iconColor = AppColors.neutral300Color;
      borderColor = AppColors.neutral300Color;
      inputTextColor = AppColors.neutral300Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextCustom(
                  text: widget.title,
                  textFontSize: titleFontSize,
                  color: titleTextColor,
                  fontWeight: titleFontWeight),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                child: SizedBox(
              height: formFieldheight,
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  isExpanded: true,
                  hint: Row(
                    children: [
                      Icon(
                        Icons.remove,
                        size: 16,
                        color: placeholderTextColor,
                      ),
                      Text(
                        ' $placeholderText ',
                        style: TextStyle(
                          fontSize: AppDimens.fontSize16,
                          fontWeight: FontWeight.w400,
                          color: placeholderTextColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Icon(
                        Icons.remove,
                        size: 16,
                        color: placeholderTextColor,
                      ),
                    ],
                  ),
                  items: countries.isNotEmpty &&
                          formState != DepositsFormStates.disabled
                      ? countries
                          .map((item) => DropdownMenuItem<String>(
                                value: item.name,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  right: 10.0),
                                              child: Text(item.flag),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              item.name,
                                              style: TextStyle(
                                                fontSize: AppDimens.fontSize16,
                                                fontWeight: FontWeight.w400,
                                                color: inputTextColor,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ))
                          .toList()
                      : null,
                  value: selectedValue.isNotEmpty &&
                          selectedValue != 'null' &&
                          formState != DepositsFormStates.disabled
                      ? selectedValue
                      : null,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = "$value";
                    });
                    widget.onTapped(selectedValue);
                  },
                  buttonStyleData: ButtonStyleData(
                    height: 50,
                    width: 160,
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        width: 1,
                        color: borderColor,
                      ),
                      color: AppColors.transparentColor,
                    ),
                    elevation: 0,
                  ),
                  iconStyleData: IconStyleData(
                    icon: const Icon(
                      Icons.arrow_drop_down,
                    ),
                    iconSize: iconSize,
                    iconEnabledColor: iconColor,
                    iconDisabledColor: AppColors.neutral400Color,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    maxHeight: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.whiteColor,
                    ),
                    scrollbarTheme: ScrollbarThemeData(
                      radius: const Radius.circular(0),
                      thickness: MaterialStateProperty.all(0),
                      thumbVisibility: MaterialStateProperty.all(true),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                    padding: EdgeInsets.only(left: 14, right: 14),
                  ),
                ),
              ),
            ))
          ],
        ),
      ],
    );
    return result;
  }
}

class DepositsMiniDropDown extends StatefulWidget {
  final String title;
  final List<String> items;
  final String? placeholder;
  final DepositsFormSizeStates size;
  final String? initialValue;
  final DepositsFormStates formState;
  final double borderRadius;
  final Color borderColor;
  final Color bgColor;
  final Function onTapped;

  const DepositsMiniDropDown(
      {super.key,
      required this.title,
      required this.items,
      this.placeholder,
      this.size = DepositsFormSizeStates.medium,
      this.initialValue,
      this.formState = DepositsFormStates.normal,
      this.borderRadius = 40.0,
      this.bgColor = AppColors.grey100Color,
      this.borderColor = AppColors.grey100Color,
      required this.onTapped});

  @override
  DepositsMiniDropDownState createState() {
    return DepositsMiniDropDownState();
  }
}

class DepositsMiniDropDownState extends State<DepositsMiniDropDown> {
  var initialValue = "";
  var selectedValue = "";
  DepositsFormStates formState = DepositsFormStates.normal;
  var placeholderText = "Select";
  var fieldController = TextEditingController();

  var iconColor = AppColors.neutral600Color;

  var titleFontSize = AppDimens.fontSize16;
  var titleTextColor = AppColors.neutral700Color;
  var titleFontWeight = FontWeight.w400;

  var placeholderFontSize = AppDimens.fontSize16;
  var placeholderTextColor = AppColors.neutral600Color;
  var placeholderFontWeight = FontWeight.w400;

  var inputTextColor = AppColors.neutral700Color;

  var formFieldheight = 48.0;
  var iconSize = 24.0;
  var formFieldContentPadding = const EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 0.0);
  var borderColor = AppColors.neutral300Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        if (widget.placeholder != null) {
          placeholderText = "${widget.placeholder}";
        }
        selectedValue = "${widget.initialValue}";
        // resetValues();
      });
    });
  }

  @override
  void dispose() {
    fieldController.dispose();
    super.dispose();
  }

  resetValues() {
    if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 40.0;
      iconSize = 18.0;
    } else if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 56.0;
    }

    if (formState == DepositsFormStates.active) {
      borderColor = AppColors.primaryColor;
    } else if (formState == DepositsFormStates.error) {
      borderColor = AppColors.red500Color;
    } else if (formState == DepositsFormStates.disabled) {
      iconColor = AppColors.neutral300Color;
      borderColor = AppColors.neutral300Color;
      inputTextColor = AppColors.neutral300Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 31.0,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Container(
                      constraints: const BoxConstraints(maxWidth: 70.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRect(
                            child: Text(
                              placeholderText,
                              style: TextStyle(
                                fontSize: AppDimens.fontSize12,
                                fontWeight: FontWeight.w400,
                                color: placeholderTextColor,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    items: widget.items.isNotEmpty
                        ? widget.items
                            .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontSize: AppDimens.fontSize14,
                                      fontWeight: FontWeight.w400,
                                      color: inputTextColor,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList()
                        : null,
                    value: selectedValue.isNotEmpty && selectedValue != 'null'
                        ? selectedValue
                        : null,
                    onChanged: (value) {
                      setState(
                        () {
                          selectedValue = "$value";
                        },
                      );
                      widget.onTapped(selectedValue);
                    },
                    style: TextStyle(
                      fontSize: AppDimens.fontSize12,
                      fontWeight: FontWeight.w400,
                      color: inputTextColor,
                    ),
                    buttonStyleData: ButtonStyleData(
                      height: 0,
                      width: 0,
                      padding: const EdgeInsets.only(left: 3, right: 1),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(widget.borderRadius),
                        border: Border.all(
                          width: 1,
                          color: widget.borderColor,
                        ),
                        color: widget.bgColor,
                      ),
                      elevation: 0,
                    ),
                    iconStyleData: IconStyleData(
                      icon: const Icon(
                        Icons.arrow_drop_down,
                      ),
                      iconSize: iconSize,
                      iconEnabledColor: iconColor,
                      iconDisabledColor: AppColors.neutral400Color,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors.whiteColor,
                      ),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(0),
                        thickness: MaterialStateProperty.all(0),
                        thumbVisibility: MaterialStateProperty.all(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 14, right: 14),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
    return result;
  }
}

class DepositsMultiSelect extends StatefulWidget {
  final String title;
  final List<String> items;
  final String? placeholder;
  final DepositsFormSizeStates size;
  final List<String>? initialValues;
  final DepositsFormStates formState;
  final Function onTapped;

  const DepositsMultiSelect(
      {super.key,
      required this.title,
      required this.items,
      this.placeholder,
      this.size = DepositsFormSizeStates.medium,
      this.initialValues,
      this.formState = DepositsFormStates.normal,
      required this.onTapped});

  @override
  DepositsMultiSelectState createState() {
    return DepositsMultiSelectState();
  }
}

class DepositsMultiSelectState extends State<DepositsMultiSelect> {
  var initialValue = "";
  List<String> selectedItems = [];
  DepositsFormStates formState = DepositsFormStates.normal;
  var placeholderText = "Select";

  double dropdownHeight = 100;
  double selectedItemMarginTB = 7.0;
  double selectedItemPaddingTB = 5.0;

  var iconColor = AppColors.neutral600Color;

  var titleFontSize = AppDimens.fontSize16;
  var titleTextColor = AppColors.neutral700Color;
  var titleFontWeight = FontWeight.w400;

  var placeholderFontSize = AppDimens.fontSize16;
  var placeholderTextColor = AppColors.neutral300Color;
  var placeholderFontWeight = FontWeight.w400;

  var inputTextColor = AppColors.neutral700Color;

  var formFieldheight = 48.0;
  var iconSize = 24.0;
  var formFieldContentPadding = const EdgeInsets.fromLTRB(12.0, 0.0, 20.0, 0.0);
  var borderColor = AppColors.neutral300Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        if (widget.placeholder != null) {
          placeholderText = "${widget.placeholder}";
        }
        if (widget.initialValues != null && widget.initialValues!.isNotEmpty) {
          for (var i = 0; i < widget.initialValues!.length; i++) {
            selectedItems.add(widget.initialValues![i]);
          }
        }
        resetValues();
      });
    });
  }

  resetValues() {
    if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 40.0;
      iconSize = 18.0;
      selectedItemMarginTB = 5.0;
      selectedItemPaddingTB = 2.0;
    } else if (widget.size == DepositsFormSizeStates.large) {
      formFieldheight = 56.0;
      selectedItemMarginTB = 12.0;
      selectedItemPaddingTB = 5.0;
    }
    dropdownHeight = widget.items.length * 50;
    if (dropdownHeight > 300) {
      dropdownHeight = 300;
    }

    if (formState == DepositsFormStates.active) {
      borderColor = AppColors.primaryColor;
    } else if (formState == DepositsFormStates.error) {
      borderColor = AppColors.red500Color;
    } else if (formState == DepositsFormStates.disabled) {
      iconColor = AppColors.neutral300Color;
      borderColor = AppColors.neutral300Color;
      inputTextColor = AppColors.neutral300Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextCustom(
                  text: widget.title,
                  textFontSize: titleFontSize,
                  color: titleTextColor,
                  fontWeight: titleFontWeight),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                child: SizedBox(
              height: formFieldheight,
              child: MultiSelectDropDown(
                hint: '- $placeholderText -',
                borderRadius: 4.0,
                borderColor: borderColor,
                borderWidth: 1.0,
                fieldBackgroundColor: AppColors.transparentColor,
                suffixIcon: Icon(
                  Icons.arrow_drop_down,
                  size: iconSize,
                  color: iconColor,
                ),
                onOptionSelected: (options) {
                  selectedItems.clear();
                  for (var i = 0; i < options.length; i++) {
                    selectedItems.add(options[i].label);
                  }
                  widget.onTapped(selectedItems);
                },
                options: widget.items.isNotEmpty &&
                        formState != DepositsFormStates.disabled
                    ? <ValueItem>[
                        for (var thisItem in widget.items)
                          ValueItem(label: thisItem, value: thisItem),
                      ]
                    : <ValueItem>[],
                maxItems: widget.items.length,
                selectionType: SelectionType.multi,
                chipConfig: const ChipConfig(wrapType: WrapType.scroll),
                dropdownHeight: dropdownHeight,
                optionTextStyle: TextStyle(
                    fontSize: AppDimens.fontSize16,
                    fontWeight: FontWeight.w400,
                    color: inputTextColor),
                selectedOptionIcon: const Icon(
                  Icons.check_circle,
                  color: AppColors.transparentColor,
                ),
                selectedItemBuilder:
                    (BuildContext context, ValueItem<dynamic> item) {
                  if (selectedItems.contains(item.label) == false) {
                    return Container();
                  }
                  return Container(
                    margin: EdgeInsets.only(
                        right: 5.0,
                        top: selectedItemMarginTB,
                        bottom: selectedItemMarginTB),
                    padding: EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: selectedItemPaddingTB),
                    decoration: BoxDecoration(
                        color: AppColors.neutral200Color,
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  item.label,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 1,
                                ),
                                GestureDetector(
                                  child: const Icon(
                                    Icons.close,
                                    size: 16.0,
                                    color: AppColors.neutral600Color,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedItems.removeAt(
                                          selectedItems.indexOf(item.label));
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ],
    );
    return result;
  }
}

class DepositsFileUploadInput extends StatefulWidget {
  final String title;
  final String? fileName;
  final String? placeholder;
  final DepositsFormSizeStates size;
  final String? errorText;
  final DepositsFormUploadStates formState;
  final String? readOnly;
  final Color? bgColor;
  final Function onTapped;

  const DepositsFileUploadInput(
      {super.key,
      required this.title,
      this.fileName,
      this.placeholder,
      this.size = DepositsFormSizeStates.medium,
      this.errorText,
      this.formState = DepositsFormUploadStates.normal,
      this.readOnly = "false",
      this.bgColor,
      required this.onTapped});

  @override
  DepositsFileUploadInputState createState() {
    return DepositsFileUploadInputState();
  }
}

class DepositsFileUploadInputState extends State<DepositsFileUploadInput> {
  var fieldController = TextEditingController();
  DepositsFormUploadStates formState = DepositsFormUploadStates.normal;

  var fillColor = AppColors.transparentColor;

  var titleFontSize = AppDimens.fontSize16;
  var titleTextColor = AppColors.neutral700Color;
  var titleFontWeight = FontWeight.w400;

  var placeholderFontSize = AppDimens.fontSize16;
  var placeholderTextColor = AppColors.neutral300Color;
  var placeholderFontWeight = FontWeight.w400;

  var inputFontSize = AppDimens.fontSize14;
  var inputTextColor = AppColors.neutral700Color;
  var inputFontWeight = FontWeight.w400;

  var errorFontSize = AppDimens.fontSize12;
  var errorTextColor = AppColors.red500Color;
  var errorFontWeight = FontWeight.w400;

  var formFieldheight = 48.0;
  var cursorHeight = 18.0;
  var suffixMinHeight = 28.0;
  var formFieldContentPadding = const EdgeInsets.fromLTRB(12.0, 0.0, 20.0, 0.0);
  var borderColor = AppColors.neutral300Color;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        formState = widget.formState;
        if (widget.fileName != null && widget.fileName != '') {
          fieldController.text = "${widget.fileName}";
        }
        resetValues();
      });
    });
  }

  @override
  void dispose() {
    fieldController.dispose();
    super.dispose();
  }

  resetValues() {
    fillColor = AppColors.transparentColor;
    if (formState == DepositsFormUploadStates.active) {
      borderColor = AppColors.primaryColor;
    } else if (formState == DepositsFormUploadStates.error) {
      placeholderTextColor = AppColors.neutral700Color;
      fillColor = AppColors.red150Color;
      borderColor = AppColors.red500Color;
    } else if (formState == DepositsFormUploadStates.disabled) {
      placeholderTextColor = AppColors.neutral300Color;
      borderColor = AppColors.neutral300Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextCustom(
                  text: widget.title,
                  textFontSize: titleFontSize,
                  color: titleTextColor,
                  fontWeight: titleFontWeight),
            )
          ],
        ),
        SizedBox(
          height: formFieldheight,
          child: TextFormField(
            controller: fieldController,
            cursorColor: AppColors.neutral700Color,
            cursorHeight: cursorHeight,
            enabled: false,
            readOnly: true,
            style: TextStyle(
                color: inputTextColor,
                fontSize: inputFontSize,
                fontWeight: inputFontWeight),
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: TextStyle(
                  color: placeholderTextColor,
                  fontWeight: placeholderFontWeight,
                  fontSize: placeholderFontSize),
              filled: true,
              fillColor: fillColor,
              contentPadding: formFieldContentPadding,
              suffixIcon: GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 1.0, vertical: 1.0),
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: MediaQuery.of(context).size.width * 0.35,
                    decoration: const BoxDecoration(
                        color: AppColors.neutral200Color,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(2.0),
                            bottomRight: Radius.circular(2.0))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextCustom(
                            text: "Choose File",
                            textFontSize: AppDimens.fontSize16,
                            color: AppColors.blackColor2,
                            fontWeight: FontWeight.w500)
                      ],
                    ),
                  )),
              border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                  borderSide: BorderSide(width: 1.0, color: borderColor)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
            ),
            onChanged: (a) {
              setState(() {
                formState = DepositsFormUploadStates.active;
                resetValues();
              });
              widget.onTapped(a);
            },
          ),
        ),
        widget.errorText != null && widget.errorText.toString().isNotEmpty
            ? Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: const Icon(
                                Icons.info,
                                size: 10.0,
                                color: AppColors.red500Color,
                              ),
                            )
                          ],
                        ),
                        Expanded(
                            child: TextCustom(
                                text: "${widget.errorText}",
                                textFontSize: errorFontSize,
                                color: errorTextColor,
                                fontWeight: errorFontWeight))
                      ],
                    )
                  ],
                ),
              )
            : Container(),
      ],
    );
    return result;
  }
}

class DepositsFileUpload extends StatefulWidget {
  final String title;
  final String? supportedTypes;
  final String? fileName;
  final String? fileSize;
  final int uploadPercent;
  final String? errorText;
  final DepositsFormUploadStates formState;
  final Function onTapped;

  const DepositsFileUpload(
      {super.key,
      required this.title,
      this.supportedTypes,
      this.fileName,
      this.fileSize,
      this.uploadPercent = 0,
      this.errorText,
      this.formState = DepositsFormUploadStates.normal,
      required this.onTapped});

  @override
  DepositsFileUploadState createState() {
    return DepositsFileUploadState();
  }
}

class DepositsFileUploadState extends State<DepositsFileUpload> {
  var borderColor = AppColors.neutral400Color;
  var iconColor = AppColors.neutral600Color;
  var fileName = "";
  var fileSize = "";

  var errorFontSize = AppDimens.fontSize12;
  var errorTextColor = AppColors.red500Color;
  var errorFontWeight = FontWeight.w400;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.fileName != null) {
        fileName = "${widget.fileName}";
      }
      if (widget.fileSize != null) {
        fileSize = "${widget.fileSize}";
      }
      setState(() {
        if (widget.formState == DepositsFormUploadStates.active) {
          iconColor = AppColors.primaryColor;
          borderColor = AppColors.primaryColor;
        }
        if (widget.formState == DepositsFormUploadStates.disabled) {
          iconColor = AppColors.neutral400Color;
          borderColor = AppColors.neutral200Color;
        }
        if (widget.formState == DepositsFormUploadStates.error) {
          iconColor = AppColors.errorColor;
          borderColor = AppColors.errorColor;
        }
        if (widget.formState == DepositsFormUploadStates.uploading) {
          borderColor = AppColors.primaryColor;
        }
        if (widget.formState == DepositsFormUploadStates.uploaded) {
          borderColor = AppColors.primaryColor;
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mainWidget = Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.image,
              color: AppColors.neutral600Color,
            )
          ],
        ),
        const VSpacerWidget(size: 5.0),
        widget.errorText != null && widget.errorText.toString().isNotEmpty
            ? Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: const Icon(
                                Icons.info,
                                size: 10.0,
                                color: AppColors.red500Color,
                              ),
                            )
                          ],
                        ),
                        Row(children: [
                          TextCustom(
                              text: "${widget.errorText}",
                              textFontSize: errorFontSize,
                              color: errorTextColor,
                              fontWeight: errorFontWeight)
                        ])
                      ],
                    )
                  ],
                ),
              )
            : Container(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextCustom(
                text: widget.title,
                textFontSize: AppDimens.fontSize14,
                color: AppColors.neutral600Color,
                fontWeight: FontWeight.w500)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextCustom(
                text: "(Supported file types: ${widget.supportedTypes})",
                textFontSize: AppDimens.fontSize12,
                color: AppColors.neutral600Color,
                fontWeight: FontWeight.w400)
          ],
        )
      ],
    );
    if (widget.formState == DepositsFormUploadStates.uploading) {
      mainWidget = Column(
        children: [
          Row(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.image,
                    color: AppColors.neutral600Color,
                  )
                ],
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextCustom(
                    text: "$fileName ($fileSize)",
                    textFontSize: AppDimens.fontSize10,
                    color: AppColors.neutral600Color,
                    fontWeight: FontWeight.w500),
              )),
              const Row(
                children: [
                  Icon(
                    Icons.cancel,
                    color: AppColors.neutral400Color,
                  )
                ],
              )
            ],
          ),
          const VSpacerWidget(size: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                width: MediaQuery.of(context).size.width,
                height: 8.0,
                decoration: BoxDecoration(
                    color: AppColors.neutral200Color,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *
                          (widget.uploadPercent / 100),
                      height: 8.0,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(10.0)),
                    )
                  ],
                ),
              ))
            ],
          ),
        ],
      );
    }
    if (widget.formState == DepositsFormUploadStates.uploaded) {
      mainWidget = Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                child: const Icon(
                  Icons.image,
                  color: AppColors.neutral600Color,
                  size: 32.0,
                ),
              ),
            ],
          ),
        ],
      );
    }
    Widget result = Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      decoration: BoxDecoration(
          color: AppColors.neutral100Color,
          borderRadius: BorderRadius.circular(6)),
      child: DottedBorder(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        color: borderColor,
        strokeWidth: 1,
        borderType: BorderType.RRect,
        radius: const Radius.circular(8),
        child: mainWidget,
      ),
    );
    return result;
  }
}

class DepositsFormSlider extends StatefulWidget {
  final int percent;
  final Color sliderColor;
  final Color sliderActiveColor;
  final Color sliderRingColor;
  final Function onChanged;

  const DepositsFormSlider({
    super.key,
    required this.percent,
    this.sliderColor = AppColors.neutral200Color,
    this.sliderActiveColor = AppColors.primaryColor,
    this.sliderRingColor = AppColors.neutral100Color,
    required this.onChanged,
  });

  @override
  DepositsFormSliderState createState() {
    return DepositsFormSliderState();
  }
}

class DepositsFormSliderState extends State<DepositsFormSlider> {
  int percent = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 10.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: widget.sliderColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 10.0,
                          width: MediaQuery.of(context).size.width *
                              (widget.percent / 100),
                          decoration: BoxDecoration(
                            color: widget.sliderActiveColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 16.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.transparentColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 20.0,
                          width: MediaQuery.of(context).size.width *
                              ((widget.percent / 100)),
                          decoration: BoxDecoration(
                            color: AppColors.transparentColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            color: widget.sliderRingColor,
                          ),
                          child: Center(
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: widget.sliderActiveColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
