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
import 'package:example/docs/countries.dart';
import 'package:example/docs/forms.dart';
import 'package:example/docs/grid.dart';
import 'package:example/docs/ios_alert.dart';
import 'package:example/docs/password_input.dart';
import 'package:example/docs/progressbar.dart';
import 'package:example/docs/radio_checkbox.dart';
import 'package:example/docs/tabs_android.dart';
import 'package:example/docs/tabs_ios.dart';
import 'package:example/docs/toggle_switch.dart';
import 'package:example/docs/typography.dart';
import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class DocPage extends StatefulWidget {
  const DocPage({super.key});

  @override
  State<DocPage> createState() => _DocPageState();
}

class _DocPageState extends State<DocPage> {
  var section = "main";
  Widget sectionWidget = const AvatarsDocPage();

  manageSection() {
    switch (section) {
      case 'avatars':
        sectionWidget = const AvatarsDocPage();
        break;
      case 'charts':
        sectionWidget = const ChartDocPage();
        break;
      case 'cards':
        sectionWidget = const CardDocPage();
        break;
      case 'radio_checkbox':
        sectionWidget = const RadioCheckboxDocPage();
        break;
      case 'forms':
        sectionWidget = const FormDocPage();
        break;
      case 'alerts':
        sectionWidget = const AlertIosDocPage();
        break;
      case 'appbarAndroid':
        sectionWidget = const AppbarAndroidDocPage();
        break;
      case 'appbarIos':
        sectionWidget = const AppbarIosDocPage();
        break;
      case 'bottomsheet':
        sectionWidget = const BottomsheetDocPage();
        break;
      case 'tabIos':
        sectionWidget = const TabsIosDocPage();
        break;
      case 'tabAndroid':
        sectionWidget = const TabsAndroidDocPage();
        break;
      case 'password':
        sectionWidget = const PasswordDocPage();
        break;
      case 'badge':
        sectionWidget = const BadgeDocPage();
        break;
      case 'button':
        sectionWidget = const ButtonDocPage();
        break;
      case 'form':
        sectionWidget = const FormDocPage();
        break;
      case 'color':
        sectionWidget = const ColorDocPage();
        break;
      case 'country':
        sectionWidget = const CountryDocPage();
        break;
      case 'progress':
        sectionWidget = const ProgressDocPage();
        break;
      case 'toggle':
        sectionWidget = const ToggleSwitchDocPage();
        break;
      case 'typography':
        sectionWidget = const TypographyDocPage();
        break;
      case 'components':
        sectionWidget = const ComponentsDocPage();
        break;
      case 'toast':
        sectionWidget = const ToastDocPage();
        break;
      default:
        sectionWidget = const FullExamplePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    manageSection();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: AppColors.primaryColor,
        title: const Text("Deposits Mobile UI Kit"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          children: [
            ListTile(
              title: const Text('Avatars'),
              onTap: () {
                setState(() {
                  section = 'avatars';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Charts'),
              onTap: () {
                setState(() {
                  section = 'charts';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Cards'),
              onTap: () {
                setState(() {
                  section = 'cards';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Radio/Checkbox'),
              onTap: () {
                setState(() {
                  section = 'radio_checkbox';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Appbar Android'),
              onTap: () {
                setState(() {
                  section = 'appbarAndroid';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Appbar iOS'),
              onTap: () {
                setState(() {
                  section = 'appbarIos';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Bottomsheet'),
              onTap: () {
                setState(() {
                  section = 'bottomsheet';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Tabs iOS'),
              onTap: () {
                setState(() {
                  section = 'tabIos';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Tabs Android'),
              onTap: () {
                setState(() {
                  section = 'tabAndroid';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Password Input'),
              onTap: () {
                setState(() {
                  section = 'password';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Badges'),
              onTap: () {
                setState(() {
                  section = 'badge';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Buttons'),
              onTap: () {
                setState(() {
                  section = 'button';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Forms'),
              onTap: () {
                setState(() {
                  section = 'form';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Colors'),
              onTap: () {
                setState(() {
                  section = 'color';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Progressbar'),
              onTap: () {
                setState(() {
                  section = 'progress';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Toggle/Switch'),
              onTap: () {
                setState(() {
                  section = 'toggle';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Toast'),
              onTap: () {
                setState(() {
                  section = 'toast';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Typography'),
              onTap: () {
                setState(() {
                  section = 'typography';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Components'),
              onTap: () {
                setState(() {
                  section = 'components';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('All'),
              onTap: () {
                setState(() {
                  section = 'all';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const VersionWidget(),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          sectionWidget,
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
