import 'package:flutter/material.dart';
import 'package:umma_sunn_website/constant/enums.dart';
import 'package:umma_sunn_website/screens/sidebar.dart';

typedef void OnClickBack();

class ResponsiveScreen extends StatelessWidget {
  ResponsiveScreen({
    Key? key,
    required this.appBarChildren,
    required this.appScreen,
    required this.heading,
    required this.appBarSpaceChildren,
    required this.table,
    required this.tableHeading,
    required this.tableHeadingIsThere,
    required this.onBack,
  }) : super(key: key);
  final List<Widget> appBarChildren;
  final List<Widget> appBarSpaceChildren;
  final AppScreen appScreen;
  final bool tableHeadingIsThere;
  final String heading;
  final OnClickBack onBack;
  final Widget table;
  final Widget tableHeading;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 870) {
      return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context)
                          .copyWith(scrollbars: false),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          MediaQuery.of(context).size.width > 780
                              ? Container(
                                  height: 120,
                                  width: double.maxFinite,
                                  child: Image.asset(
                                    "images/benteler_logo.png",
                                    width: double.minPositive,
                                    // width: MediaQuery.of(context).size.width / 2,
                                  ),
                                )
                              : const SizedBox(),
                          Container(
                            height: MediaQuery.of(context).size.height - 120,
                            child: AppSideBar(
                                heading: heading,
                                screen: appScreen,
                                onBackButtonTapped: () {
                                  onBack();
                                }),
                          )
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  flex: 7,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Stack(
                      children: [
                        Container(
                          height: 220,
                          child: ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context)
                                .copyWith(scrollbars: false),
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                Container(
                                  height: 120,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: appBarChildren,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: appBarSpaceChildren,
                                  ),
                                ),
                                Container(
                                  child: tableHeading,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 225),
                          child: table,
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      );
    } else if (MediaQuery.of(context).size.width > 600) {
      return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: 220,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        height: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: appBarChildren,
                        ),
                      ),
                      Container(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: appBarSpaceChildren,
                        ),
                      ),
                      Container(
                        child: tableHeading,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 225),
                child: table,
              ),
            ],
          ),
        ),
      );
    } else if (MediaQuery.of(context).size.width > 450) {
      return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        child: tableHeading,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: table,
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
            // child: Image.asset(
            //   "images/benteler_logo.png",
            //   // width: MediaQuery.of(context).size.width / 2,
            // ),
            ),
      );
    }
  }
}
