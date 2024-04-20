import 'package:example/doc.dart';
import 'package:example/docs/appbar_android.dart';
import 'package:example/docs/appbar_ios.dart';
import 'package:example/docs/avatars.dart';
import 'package:example/docs/badges.dart';
import 'package:example/docs/bottomsheet.dart';
import 'package:example/docs/buttons.dart';
import 'package:example/docs/cards.dart';
import 'package:example/docs/charts.dart';
import 'package:example/docs/colors.dart';
import 'package:example/docs/components.dart';
import 'package:example/docs/forms.dart';
import 'package:example/docs/ios_alert.dart';
import 'package:example/docs/password_input.dart';
import 'package:example/docs/progressbar.dart';
import 'package:example/docs/radio_checkbox.dart';
import 'package:example/docs/tabs_android.dart';
import 'package:example/docs/tabs_ios.dart';
import 'package:example/docs/toast.dart';
import 'package:example/docs/toggle_switch.dart';
import 'package:example/docs/typography.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deposits Mobile UI Kit V2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Deposits Mobile UI Kit V2.'),
      home: const DocPage(),
    );
  }
}

class FullExamplePage extends StatefulWidget {
  const FullExamplePage({super.key});

  @override
  State<FullExamplePage> createState() => _FullExamplePageState();
}

class _FullExamplePageState extends State<FullExamplePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ComponentsDocPage(),
        ButtonDocPage(),
        TypographyDocPage(),
        ToggleSwitchDocPage(),
        ProgressDocPage(),
        ColorDocPage(),
        BadgeDocPage(),
        PasswordDocPage(),
        TabsAndroidDocPage(),
        TabsIosDocPage(),
        BottomsheetDocPage(),
        AppbarIosDocPage(),
        AppbarAndroidDocPage(),
        AlertIosDocPage(),
        ToastDocPage(),
        RadioCheckboxDocPage(),
        CardDocPage(),
        FormDocPage(),
        AvatarsDocPage(),
        ChartDocPage(),
      ],
    );
  }
}
