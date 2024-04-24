import 'package:deposits_ui_kit_v2/components/typography/all.dart';
import 'package:deposits_ui_kit_v2/components/utils/all.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:deposits_ui_kit_v2/utils/templates.dart';
import 'package:flutter/material.dart';

class DepositsAndroidAppbarOne extends StatefulWidget {
  final String title;
  final Color titleColor;
  final Color bgColor;
  final Color menuIconColor;
  final Function onMenuTapped;
  final IconData iconOne;
  final Color iconOneColor;
  final Function onIconOneTapped;

  const DepositsAndroidAppbarOne({
    super.key,
    required this.title,
    required this.titleColor,
    required this.bgColor,
    required this.menuIconColor,
    required this.onMenuTapped,
    required this.iconOne,
    required this.iconOneColor,
    required this.onIconOneTapped,
  });

  @override
  DepositsAndroidAppbarOneState createState() {
    return DepositsAndroidAppbarOneState();
  }
}

class DepositsAndroidAppbarOneState extends State<DepositsAndroidAppbarOne> {
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
    Widget result = AppBar(
      title: TextCustom(
        text: widget.title,
        textFontSize: AppDimens.fontSize22,
        color: widget.titleColor,
        fontWeight: FontWeight.w400,
        fontFamily: DepositsFontFamilies.Roboto,
      ),
      centerTitle: true,
      backgroundColor: widget.bgColor,
      leading: GestureDetector(
        onTap: () {
          widget.onMenuTapped();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Icon(
            Icons.menu,
            color: widget.menuIconColor,
            size: 20.0,
          ),
        ),
      ),
      leadingWidth: 50,
      actions: [
        Container(
          padding: const EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: () {
              widget.onIconOneTapped();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(
                widget.iconOne,
                color: widget.iconOneColor,
                size: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
    return result;
  }
}

class DepositsAndroidAppbarTwo extends StatefulWidget {
  final String title;
  final Color titleColor;
  final Color bgColor;
  final Color backIconColor;
  final IconData iconOne;
  final Color iconOneColor;
  final Function onIconOneTapped;
  final IconData iconTwo;
  final Color iconTwoColor;
  final Function onIconTwoTapped;
  final IconData iconThree;
  final Color iconThreeColor;
  final Function onIconThreeTapped;

  const DepositsAndroidAppbarTwo({
    super.key,
    required this.title,
    required this.titleColor,
    required this.bgColor,
    required this.backIconColor,
    required this.iconOne,
    required this.iconOneColor,
    required this.onIconOneTapped,
    required this.iconTwo,
    required this.iconTwoColor,
    required this.onIconTwoTapped,
    required this.iconThree,
    required this.iconThreeColor,
    required this.onIconThreeTapped,
  });

  @override
  DepositsAndroidAppbarTwoState createState() {
    return DepositsAndroidAppbarTwoState();
  }
}

class DepositsAndroidAppbarTwoState extends State<DepositsAndroidAppbarTwo> {
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
    Widget result = AppBar(
      title: TextCustom(
        text: widget.title,
        textFontSize: AppDimens.fontSize22,
        color: widget.titleColor,
        fontWeight: FontWeight.w400,
        fontFamily: DepositsFontFamilies.Roboto,
      ),
      backgroundColor: widget.bgColor,
      leading: GestureDetector(
        onTap: () {
          Navigator.canPop(context) ? Navigator.pop(context) : null;
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Icon(
            Icons.arrow_back,
            color: widget.backIconColor,
            size: 20.0,
          ),
        ),
      ),
      leadingWidth: 50,
      actions: [
        Container(
          padding: const EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: () {
              widget.onIconOneTapped();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(
                widget.iconOne,
                color: widget.iconOneColor,
                size: 20.0,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: () {
              widget.onIconTwoTapped();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(
                widget.iconTwo,
                color: widget.iconTwoColor,
                size: 20.0,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(right: 0.0),
          child: GestureDetector(
            onTap: () {
              widget.onIconThreeTapped();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(
                widget.iconThree,
                color: widget.iconThreeColor,
                size: 20.0,
              ),
            ),
          ),
        )
      ],
    );
    return result;
  }
}

class DepositsAndroidAppbarThree extends StatefulWidget {
  final String title;
  final Color titleColor;
  final Color bgColor;
  final Color backIconColor;
  final IconData iconOne;
  final Color iconOneColor;
  final Function onIconOneTapped;
  final IconData iconTwo;
  final Color iconTwoColor;
  final Function onIconTwoTapped;
  final IconData iconThree;
  final Color iconThreeColor;
  final Function onIconThreeTapped;

  const DepositsAndroidAppbarThree({
    super.key,
    required this.title,
    required this.titleColor,
    required this.bgColor,
    required this.backIconColor,
    required this.iconOne,
    required this.iconOneColor,
    required this.onIconOneTapped,
    required this.iconTwo,
    required this.iconTwoColor,
    required this.onIconTwoTapped,
    required this.iconThree,
    required this.iconThreeColor,
    required this.onIconThreeTapped,
  });

  @override
  DepositsAndroidAppbarThreeState createState() {
    return DepositsAndroidAppbarThreeState();
  }
}

class DepositsAndroidAppbarThreeState
    extends State<DepositsAndroidAppbarThree> {
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
    Widget result = PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Column(
          children: [
            AppBar(
              leading: GestureDetector(
                onTap: () {
                  Navigator.canPop(context) ? Navigator.pop(context) : null;
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: widget.backIconColor,
                    size: 20.0,
                  ),
                ),
              ),
              leadingWidth: 50,
              backgroundColor: widget.bgColor,
              actions: [
                Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      widget.onIconOneTapped();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(
                        widget.iconOne,
                        color: widget.iconOneColor,
                        size: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      widget.onIconTwoTapped();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(
                        widget.iconTwo,
                        color: widget.iconTwoColor,
                        size: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: GestureDetector(
                    onTap: () {
                      widget.onIconThreeTapped();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(
                        widget.iconThree,
                        color: widget.iconThreeColor,
                        size: 20.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              color: widget.bgColor,
              padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  TextCustom(
                    text: widget.title,
                    textFontSize: AppDimens.fontSize22,
                    color: widget.titleColor,
                    fontWeight: FontWeight.w400,
                    fontFamily: DepositsFontFamilies.Roboto,
                  )
                ],
              ),
            )
          ],
        ));
    return result;
  }
}

class DepositsAndroidAppbarFour extends StatefulWidget {
  final String title;
  final Color titleColor;
  final Color bgColor;
  final Color backIconColor;
  final IconData iconOne;
  final Color iconOneColor;
  final Function onIconOneTapped;
  final IconData iconTwo;
  final Color iconTwoColor;
  final Function onIconTwoTapped;
  final IconData iconThree;
  final Color iconThreeColor;
  final Function onIconThreeTapped;

  const DepositsAndroidAppbarFour({
    super.key,
    required this.title,
    required this.titleColor,
    required this.bgColor,
    required this.backIconColor,
    required this.iconOne,
    required this.iconOneColor,
    required this.onIconOneTapped,
    required this.iconTwo,
    required this.iconTwoColor,
    required this.onIconTwoTapped,
    required this.iconThree,
    required this.iconThreeColor,
    required this.onIconThreeTapped,
  });

  @override
  DepositsAndroidAppbarFourState createState() {
    return DepositsAndroidAppbarFourState();
  }
}

class DepositsAndroidAppbarFourState extends State<DepositsAndroidAppbarFour> {
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
    Widget result = PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Column(
          children: [
            AppBar(
              leading: GestureDetector(
                onTap: () {
                  Navigator.canPop(context) ? Navigator.pop(context) : null;
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: widget.backIconColor,
                    size: 20.0,
                  ),
                ),
              ),
              leadingWidth: 50,
              backgroundColor: widget.bgColor,
              actions: [
                Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      widget.onIconOneTapped();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(
                        widget.iconOne,
                        color: widget.iconOneColor,
                        size: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      widget.onIconTwoTapped();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(
                        widget.iconTwo,
                        color: widget.iconTwoColor,
                        size: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: GestureDetector(
                    onTap: () {
                      widget.onIconThreeTapped();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(
                        widget.iconThree,
                        color: widget.iconThreeColor,
                        size: 20.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              color: widget.bgColor,
              padding:
                  const EdgeInsets.only(left: 20.0, bottom: 20.0, top: 20.0),
              child: Row(
                children: [
                  TextCustom(
                    text: widget.title,
                    textFontSize: AppDimens.fontSize22,
                    color: widget.titleColor,
                    fontWeight: FontWeight.w400,
                    fontFamily: DepositsFontFamilies.Roboto,
                  )
                ],
              ),
            )
          ],
        ));
    return result;
  }
}

class DepositsAndroidAppbarRoundedBackIcon extends StatefulWidget {
  final String title;
  final Color titleColor;
  final Color bgColor;
  final Color backIconColor;
  final Function onIconTapped;

  const DepositsAndroidAppbarRoundedBackIcon({
    super.key,
    required this.title,
    required this.titleColor,
    required this.bgColor,
    required this.backIconColor,
    required this.onIconTapped,
  });

  @override
  DepositsAndroidAppbarRoundedBackIconState createState() {
    return DepositsAndroidAppbarRoundedBackIconState();
  }
}

class DepositsAndroidAppbarRoundedBackIconState
    extends State<DepositsAndroidAppbarRoundedBackIcon> {
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
    Widget result = AppBar(
      backgroundColor: widget.bgColor,
      surfaceTintColor: widget.bgColor,
      centerTitle: true,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 26.0,
            width: 26.0,
            decoration: BoxDecoration(
              color: AppColors.neutral100Color,
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: 0.0,
            ),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  widget.onIconTapped();
                },
                child: const Icon(
                  Icons.keyboard_arrow_left,
                  color: AppColors.neutral700Color,
                ),
              ),
            ),
          )
        ],
      ),
      title: DepositsH5Text(
        text: widget.title,
        color: widget.titleColor,
      ),
    );
    return result;
  }
}

class DepositsAndroidAppbarNormalBackIcon extends StatefulWidget {
  final String title;
  final Color titleColor;
  final Color bgColor;
  final Color backIconColor;
  final Function onIconTapped;

  const DepositsAndroidAppbarNormalBackIcon({
    super.key,
    required this.title,
    required this.titleColor,
    required this.bgColor,
    required this.backIconColor,
    required this.onIconTapped,
  });

  @override
  DepositsAndroidAppbarNormalBackIconState createState() {
    return DepositsAndroidAppbarNormalBackIconState();
  }
}

class DepositsAndroidAppbarNormalBackIconState
    extends State<DepositsAndroidAppbarNormalBackIcon> {
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
    Widget result = AppBar(
      backgroundColor: widget.bgColor,
      surfaceTintColor: widget.bgColor,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          widget.onIconTapped();
        },
        icon: const Icon(
          Icons.keyboard_arrow_left,
          color: AppColors.neutral500Color,
        ),
      ),
      title: DepositsH5Text(
        text: widget.title,
        color: widget.titleColor,
      ),
    );
    return result;
  }
}
