import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class AppbarAndroidDocPage extends StatefulWidget {
  const AppbarAndroidDocPage({super.key});

  @override
  State<AppbarAndroidDocPage> createState() => _AppbarAndroidDocPageState();
}

class _AppbarAndroidDocPageState extends State<AppbarAndroidDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.docBgColor,
      child: Column(
        children: [
          const DepositsH4Text(text: "Appbar Android Native"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const VSpacerWidget(size: 10.0),
              DepositsAndroidAppbarOne(
                title: "Title",
                titleColor: AppColors.textPrimaryColor,
                bgColor: AppColors.whiteColor,
                menuIconColor: AppColors.blackColor,
                onMenuTapped: () {},
                iconOne: Icons.person,
                iconOneColor: AppColors.neutral700Color,
                onIconOneTapped: () {},
              ),
              const VSpacerWidget(size: 5.0),
              DepositsAndroidAppbarTwo(
                  title: "Title",
                  titleColor: AppColors.textPrimaryColor,
                  bgColor: AppColors.whiteColor,
                  backIconColor: AppColors.neutral700Color,
                  iconOne: Icons.attach_file,
                  iconOneColor: AppColors.neutral700Color,
                  onIconOneTapped: () {},
                  iconTwo: Icons.calendar_month_rounded,
                  iconTwoColor: AppColors.neutral700Color,
                  onIconTwoTapped: () {},
                  iconThree: Icons.more_vert,
                  iconThreeColor: AppColors.neutral700Color,
                  onIconThreeTapped: () {}),
              const VSpacerWidget(size: 5.0),
              DepositsAndroidAppbarThree(
                  title: "Title",
                  titleColor: AppColors.textPrimaryColor,
                  bgColor: AppColors.whiteColor,
                  backIconColor: AppColors.neutral700Color,
                  iconOne: Icons.attach_file,
                  iconOneColor: AppColors.neutral700Color,
                  onIconOneTapped: () {},
                  iconTwo: Icons.calendar_month_rounded,
                  iconTwoColor: AppColors.neutral700Color,
                  onIconTwoTapped: () {},
                  iconThree: Icons.more_vert,
                  iconThreeColor: AppColors.neutral700Color,
                  onIconThreeTapped: () {}),
              const VSpacerWidget(size: 5.0),
              DepositsAndroidAppbarFour(
                  title: "Title",
                  titleColor: AppColors.textPrimaryColor,
                  bgColor: AppColors.whiteColor,
                  backIconColor: AppColors.neutral700Color,
                  iconOne: Icons.attach_file,
                  iconOneColor: AppColors.neutral700Color,
                  onIconOneTapped: () {},
                  iconTwo: Icons.calendar_month_rounded,
                  iconTwoColor: AppColors.neutral700Color,
                  onIconTwoTapped: () {},
                  iconThree: Icons.more_vert,
                  iconThreeColor: AppColors.neutral700Color,
                  onIconThreeTapped: () {}),
              const VSpacerWidget(size: 5.0),
              DepositsAndroidAppbarRoundedBackIcon(
                title: "Title",
                titleColor: AppColors.textPrimaryColor,
                bgColor: AppColors.whiteColor,
                backIconColor: AppColors.neutral700Color,
                onIconTapped: () {},
              ),
              const VSpacerWidget(size: 5.0),
              DepositsAndroidAppbarNormalBackIcon(
                title: "Title",
                titleColor: AppColors.textPrimaryColor,
                bgColor: AppColors.whiteColor,
                backIconColor: AppColors.neutral700Color,
                onIconTapped: () {},
              ),
              const VSpacerWidget(size: 5.0),
            ],
          )
        ],
      ),
    );
  }
}
