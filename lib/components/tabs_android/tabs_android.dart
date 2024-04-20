import 'package:deposits_ui_kit_v2/components/tabs_android/tab_widgets.dart';
import 'package:deposits_ui_kit_v2/resources/app_resources.dart';
import 'package:flutter/material.dart';

class DepositsAndroidTabText extends StatefulWidget {
  final List<String> titles;
  final String? activeTitle;
  final String? activeIcon;
  final Color titleColor;
  final Color activeTitleColor;
  final Color activeBorderColor;
  final Color bgColor;
  final Color activeBgColor;
  final Function onTapped;

  const DepositsAndroidTabText({
    super.key,
    required this.titles,
    this.activeTitle,
    this.activeIcon,
    this.titleColor = AppColors.textPrimaryColor,
    this.activeTitleColor = AppColors.primaryColor,
    this.activeBorderColor = AppColors.primaryColor,
    this.bgColor = AppColors.neutral100Color,
    this.activeBgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsAndroidTabTextState createState() {
    return DepositsAndroidTabTextState();
  }
}

class DepositsAndroidTabTextState extends State<DepositsAndroidTabText> {
  var activeTab = "";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (widget.activeTitle != null) {
          activeTab = "${widget.activeTitle}";
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
    Widget result = Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
      constraints: const BoxConstraints(maxHeight: 49.0),
      decoration: BoxDecoration(color: widget.bgColor),
      child: widget.titles.isNotEmpty
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < widget.titles.length; i++)
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activeTab = widget.titles[i];
                          });
                          widget.onTapped(widget.titles[i]);
                        },
                        child: TabTextItem(
                          thisTitle: widget.titles[i],
                          isActive:
                              activeTab == widget.titles[i] ? true : false,
                          titleColor: widget.titleColor,
                          activeBorderColor: widget.activeBorderColor,
                          activeTitleColor: widget.activeTitleColor,
                          index: i,
                          activeIndex: widget.titles.indexOf(activeTab),
                          titlesLength: widget.titles.length,
                        ),
                      )),
                  ],
                )
              ],
            )
          : Container(),
    );
    return result;
  }
}

class DepositsAndroidTabIconTextVertical extends StatefulWidget {
  final List<String> titles;
  final List<IconData> icons;
  final String? activeTitle;
  final String? activeIcon;
  final Color titleColor;
  final Color activeTitleColor;
  final Color activeBorderColor;
  final Color bgColor;
  final Color activeBgColor;
  final Function onTapped;

  const DepositsAndroidTabIconTextVertical({
    super.key,
    required this.titles,
    required this.icons,
    this.activeTitle,
    this.activeIcon,
    this.titleColor = AppColors.textPrimaryColor,
    this.activeTitleColor = AppColors.primaryColor,
    this.activeBorderColor = AppColors.primaryColor,
    this.bgColor = AppColors.neutral100Color,
    this.activeBgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsAndroidTabIconTextVerticalState createState() {
    return DepositsAndroidTabIconTextVerticalState();
  }
}

class DepositsAndroidTabIconTextVerticalState
    extends State<DepositsAndroidTabIconTextVertical> {
  var activeTab = "";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (widget.activeTitle != null) {
          activeTab = "${widget.activeTitle}";
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
    Widget result = Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
      constraints: const BoxConstraints(maxHeight: 49.0),
      decoration: BoxDecoration(color: widget.bgColor),
      child: widget.titles.isNotEmpty
          ? Column(
              children: [
                widget.titles.length == widget.icons.length
                    ? Row(
                        children: [
                          for (var i = 0; i < widget.titles.length; i++)
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeTab = widget.titles[i];
                                });
                                widget.onTapped(widget.titles[i]);
                              },
                              child: TabIconTextVerticalItem(
                                thisTitle: widget.titles[i],
                                thisIcon: widget.icons[i],
                                isActive: activeTab == widget.titles[i]
                                    ? true
                                    : false,
                                titleColor: widget.titleColor,
                                activeBorderColor: widget.activeBorderColor,
                                activeTitleColor: widget.activeTitleColor,
                                index: i,
                                activeIndex: widget.titles.indexOf(activeTab),
                                titlesLength: widget.titles.length,
                              ),
                            )),
                        ],
                      )
                    : Container()
              ],
            )
          : Container(),
    );
    return result;
  }
}

class DepositsAndroidTabIcon extends StatefulWidget {
  final List<IconData> icons;
  final IconData? activeTitle;
  final String? activeIcon;
  final Color titleColor;
  final Color activeTitleColor;
  final Color activeBorderColor;
  final Color bgColor;
  final Color activeBgColor;
  final Function onTapped;

  const DepositsAndroidTabIcon({
    super.key,
    required this.icons,
    this.activeTitle,
    this.activeIcon,
    this.titleColor = AppColors.textPrimaryColor,
    this.activeTitleColor = AppColors.primaryColor,
    this.activeBorderColor = AppColors.primaryColor,
    this.bgColor = AppColors.neutral100Color,
    this.activeBgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsAndroidTabIconState createState() {
    return DepositsAndroidTabIconState();
  }
}

class DepositsAndroidTabIconState extends State<DepositsAndroidTabIcon> {
  IconData activeTab = Icons.abc;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (widget.activeTitle != null) {
          activeTab = widget.activeTitle!;
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
    Widget result = Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
      constraints: const BoxConstraints(maxHeight: 49.0),
      decoration: BoxDecoration(color: widget.bgColor),
      child: widget.icons.isNotEmpty
          ? Column(
              children: [
                widget.icons.length == widget.icons.length
                    ? Row(
                        children: [
                          for (var i = 0; i < widget.icons.length; i++)
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeTab = widget.icons[i];
                                });
                                widget.onTapped(widget.icons[i]);
                              },
                              child: TabIconItem(
                                thisIcon: widget.icons[i],
                                isActive:
                                    activeTab == widget.icons[i] ? true : false,
                                titleColor: widget.titleColor,
                                activeBorderColor: widget.activeBorderColor,
                                activeTitleColor: widget.activeTitleColor,
                                index: i,
                                activeIndex: widget.icons.indexOf(activeTab),
                                titlesLength: widget.icons.length,
                              ),
                            )),
                        ],
                      )
                    : Container()
              ],
            )
          : Container(),
    );
    return result;
  }
}

class DepositsAndroidTabTextFull extends StatefulWidget {
  final List<String> titles;
  final String? activeTitle;
  final String? activeIcon;
  final Color titleColor;
  final Color activeTitleColor;
  final Color activeBorderColor;
  final Color bgColor;
  final Color activeBgColor;
  final Function onTapped;

  const DepositsAndroidTabTextFull({
    super.key,
    required this.titles,
    this.activeTitle,
    this.activeIcon,
    this.titleColor = AppColors.textPrimaryColor,
    this.activeTitleColor = AppColors.textPrimaryColor,
    this.activeBorderColor = AppColors.primaryColor,
    this.bgColor = AppColors.neutral100Color,
    this.activeBgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsAndroidTabTextFullState createState() {
    return DepositsAndroidTabTextFullState();
  }
}

class DepositsAndroidTabTextFullState
    extends State<DepositsAndroidTabTextFull> {
  var activeTab = "";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (widget.activeTitle != null) {
          activeTab = "${widget.activeTitle}";
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
    Widget result = Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
      constraints: const BoxConstraints(maxHeight: 49.0),
      decoration: BoxDecoration(color: widget.bgColor),
      child: widget.titles.isNotEmpty
          ? Column(
              children: [
                Row(
                  children: [
                    for (var i = 0; i < widget.titles.length; i++)
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activeTab = widget.titles[i];
                          });
                          widget.onTapped(widget.titles[i]);
                        },
                        child: TabTextFullItem(
                          thisTitle: widget.titles[i],
                          isActive:
                              activeTab == widget.titles[i] ? true : false,
                          titleColor: widget.titleColor,
                          activeBorderColor: widget.activeBorderColor,
                          activeTitleColor: widget.activeTitleColor,
                          index: i,
                          activeIndex: widget.titles.indexOf(activeTab),
                          titlesLength: widget.titles.length,
                        ),
                      )),
                  ],
                )
              ],
            )
          : Container(),
    );
    return result;
  }
}

class DepositsAndroidTabIconText extends StatefulWidget {
  final List<String> titles;
  final List<IconData> icons;
  final String? activeTitle;
  final String? activeIcon;
  final Color titleColor;
  final Color activeTitleColor;
  final Color activeBorderColor;
  final Color bgColor;
  final Color activeBgColor;
  final Function onTapped;

  const DepositsAndroidTabIconText({
    super.key,
    required this.titles,
    required this.icons,
    this.activeTitle,
    this.activeIcon,
    this.titleColor = AppColors.textPrimaryColor,
    this.activeTitleColor = AppColors.textPrimaryColor,
    this.activeBorderColor = AppColors.primaryColor,
    this.bgColor = AppColors.neutral100Color,
    this.activeBgColor = AppColors.whiteColor,
    required this.onTapped,
  });

  @override
  DepositsAndroidTabIconTextState createState() {
    return DepositsAndroidTabIconTextState();
  }
}

class DepositsAndroidTabIconTextState
    extends State<DepositsAndroidTabIconText> {
  var activeTab = "";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (widget.activeTitle != null) {
          activeTab = "${widget.activeTitle}";
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
    Widget result = Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
      constraints: const BoxConstraints(maxHeight: 49.0),
      decoration: BoxDecoration(color: widget.bgColor),
      child: widget.titles.isNotEmpty
          ? Column(
              children: [
                widget.titles.length == widget.icons.length
                    ? Row(
                        children: [
                          for (var i = 0; i < widget.titles.length; i++)
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeTab = widget.titles[i];
                                });
                                widget.onTapped(widget.titles[i]);
                              },
                              child: TabIconTextHorizontalItem(
                                thisTitle: widget.titles[i],
                                thisIcon: widget.icons[i],
                                isActive: activeTab == widget.titles[i]
                                    ? true
                                    : false,
                                titleColor: widget.titleColor,
                                activeBorderColor: widget.activeBorderColor,
                                activeTitleColor: widget.activeTitleColor,
                                index: i,
                                activeIndex: widget.titles.indexOf(activeTab),
                                titlesLength: widget.titles.length,
                              ),
                            )),
                        ],
                      )
                    : Container()
              ],
            )
          : Container(),
    );
    return result;
  }
}
