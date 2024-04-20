import 'package:flutter/material.dart';
import 'package:deposits_ui_kit_v2/deposits_ui_kit_v2.dart';

class ToastDocPage extends StatefulWidget {
  const ToastDocPage({super.key});

  @override
  State<ToastDocPage> createState() => _ToastDocPageState();
}

class _ToastDocPageState extends State<ToastDocPage> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: AppColors.docBgColor,
      child: const Center(
        child: Column(
          children: [
            DepositsH4Text(text: "Toast"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                VSpacerWidget(size: 10.0),
                DepositsSimpleToastNormal(title: "A simple general message"),
                VSpacerWidget(size: 10.0),
                DepositsSimpleToastInfo(title: "This is an info alert "),
                VSpacerWidget(size: 10.0),
                DepositsSimpleToastWarning(title: "This is a warning alert"),
                VSpacerWidget(size: 10.0),
                DepositsSimpleToastError(title: "This is an error alert"),
                VSpacerWidget(size: 10.0),
                DepositsSimpleToastSuccess(title: "This is a success alert"),
                VSpacerWidget(size: 10.0),
                VSpacerWidget(size: 10.0),
                DepositsFullToastNormal(
                  title: "A simple general message",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
                VSpacerWidget(size: 10.0),
                DepositsFullToastInfo(
                    title: "This is an info alert ",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsFullToastWarning(
                    title: "This is a warning alert",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsFullToastError(
                    title: "This is an error alert",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsFullToastSuccess(
                    title: "This is a success alert",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                VSpacerWidget(size: 10.0),
                DepositsFullBorderedToastNormal(
                  title: "A simple general message",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
                VSpacerWidget(size: 10.0),
                DepositsFullBorderedToastInfo(
                    title: "This is an info alert ",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsFullBorderedToastWarning(
                    title: "This is a warning alert",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsFullBorderedToastError(
                    title: "This is an error alert",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsFullBorderedToastSuccess(
                    title: "This is a success alert",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                VSpacerWidget(size: 10.0),
                DepositsSimpleBorderedToastNormal(
                    title: "A simple general message"),
                VSpacerWidget(size: 10.0),
                DepositsSimpleBorderedToastInfo(
                    title: "This is an info alert "),
                VSpacerWidget(size: 10.0),
                DepositsSimpleBorderedToastWarning(
                    title: "This is a warning alert"),
                VSpacerWidget(size: 10.0),
                DepositsSimpleBorderedToastError(
                    title: "This is an error alert"),
                VSpacerWidget(size: 10.0),
                DepositsSimpleBorderedToastSuccess(
                    title: "This is a success alert"),
                VSpacerWidget(size: 10.0),
                DepositsH4Text(text: "Simple Removable Banners"),
                VSpacerWidget(size: 10.0),
                DepositsSimpleRemovableBannerNormal(title: "Title."),
                VSpacerWidget(size: 10.0),
                DepositsSimpleRemovableBannerInfo(title: "Title."),
                VSpacerWidget(size: 10.0),
                DepositsSimpleRemovableBannerWarning(title: "Title."),
                VSpacerWidget(size: 10.0),
                DepositsSimpleRemovableBannerError(title: "Title."),
                VSpacerWidget(size: 10.0),
                DepositsSimpleRemovableBannerSuccess(title: "Title."),
                VSpacerWidget(size: 10.0),
                DepositsH4Text(text: "Full Removable Banners"),
                VSpacerWidget(size: 10.0),
                DepositsFullRemovableBannerNormal(
                  title: "Title.",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut la.",
                ),
                VSpacerWidget(size: 10.0),
                DepositsFullRemovableBannerInfo(
                    title: "Title.",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsFullRemovableBannerWarning(
                    title: "Title.",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsFullRemovableBannerError(
                    title: "Title.",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsFullRemovableBannerSuccess(
                    title: "Title.",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsH4Text(text: "Full Static Banners"),
                VSpacerWidget(size: 10.0),
                DepositsFullStaticBannerNormal(
                  title: "Title.",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
                VSpacerWidget(size: 10.0),
                DepositsFullStaticBannerInfo(
                    title: "Title.",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsFullStaticBannerWarning(
                    title: "Title.",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsFullStaticBannerError(
                    title: "Title.",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsFullStaticBannerSuccess(
                    title: "Title.",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                VSpacerWidget(size: 10.0),
                DepositsH4Text(text: "Simple Static Banners"),
                VSpacerWidget(size: 10.0),
                DepositsSimpleStaticBannerNormal(title: "Title."),
                VSpacerWidget(size: 10.0),
                DepositsSimpleStaticBannerInfo(title: "Title."),
                VSpacerWidget(size: 10.0),
                DepositsSimpleStaticBannerWarning(title: "Title."),
                VSpacerWidget(size: 10.0),
                DepositsSimpleStaticBannerError(title: "Title."),
                VSpacerWidget(size: 10.0),
                DepositsSimpleStaticBannerSuccess(title: "Title."),
                VSpacerWidget(size: 10.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
