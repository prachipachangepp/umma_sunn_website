import 'package:flutter/material.dart';
import 'package:umma_sunn_website/constant/enums.dart';

typedef OnBackButtonTapped();

class AppSideBar extends StatefulWidget {
  const AppSideBar({
    super.key,
    required this.heading,
    required this.screen,
    required this.onBackButtonTapped,
  });
  final String heading;
  final OnBackButtonTapped onBackButtonTapped;
  final AppScreen screen;
  @override
  State<AppSideBar> createState() => _AppSideBarState();
}

class _AppSideBarState extends State<AppSideBar> {
  late AppScreen grpValue;
  bool expanded = false;
  @override
  void initState() {
    grpValue = widget.screen;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height - 180);
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: IconButton(
                    onPressed: () {
                      widget.onBackButtonTapped();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      // color: ColorManager.primary,
                    )),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  widget.heading,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      // color: ColorManager.primary,
                      fontSize: MediaQuery.of(context).size.width / 60,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 180,
          padding: EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 20),
          // color: ColorManager.primary,
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // SideBarElement(
                  //   assetPath: "images/add_items_logo.png",
                  //   value: AppScreen.addItem,
                  //   groupValue: grpValue,
                  //   label: AppString.adduser,
                  //   onClick: (AppScreen appScreen) {
                  //     setState(() {
                  //       if (grpValue != appScreen) {
                  //         grpValue = appScreen;
                  //         Navigator.pushReplacement(
                  //           context,
                  //           PageRouteBuilder(
                  //               transitionsBuilder: (_,
                  //                   Animation<double> animation,
                  //                   __,
                  //                   Widget child) {
                  //                 return FadeTransition(
                  //                     opacity: animation, child: child);
                  //               },
                  //               pageBuilder: (BuildContext context, _, __) =>
                  //                   const AddItemsScreen()),
                  //          );
                  //       }
                  //     });
                  //   },
                  // ),
                  // SideBarElement(
                  //   assetPath: "images/inventory_logo.png",
                  //   value: AppScreen.inventory,
                  //   groupValue: grpValue,
                  //   label: AppString.inventory,
                  //   onClick: (AppScreen appScreen) {
                  //     setState(() {
                  //       // if (grpValue != appScreen) {
                  //       //   grpValue = appScreen;
                  //       //   Navigator.pushReplacement(
                  //       //     context,
                  //       //     PageRouteBuilder(
                  //       //         transitionsBuilder: (_,
                  //       //             Animation<double> animation,
                  //       //             __,
                  //       //             Widget child) {
                  //       //           return FadeTransition(
                  //       //               opacity: animation, child: child);
                  //       //         },
                  //       //         pageBuilder: (BuildContext context, _, __) =>
                  //       //             InventoryScreen(
                  //       //                 dropdownValue: AppString.available)),
                  //       //   );
                  //       // }
                  //     });
                  //   },
                  // ),
                  // SideBarElement(
                  //   assetPath: "images/storage_logo.png",
                  //   value: AppScreen.storageTransaction,
                  //   groupValue: grpValue,
                  //   label: AppString.storageTransaction,
                  //   onClick: (AppScreen appScreen) {
                  //     setState(() {
                  //       if (grpValue != appScreen) {
                  //         grpValue = appScreen;
                  //         Navigator.pushReplacement(
                  //           context,
                  //           PageRouteBuilder(
                  //               transitionsBuilder: (_,
                  //                   Animation<double> animation,
                  //                   __,
                  //                   Widget child) {
                  //                 return FadeTransition(
                  //                     opacity: animation, child: child);
                  //               },
                  //               pageBuilder: (BuildContext context, _, __) =>
                  //                   StorageScreen()),
                  //         );
                  //       }
                  //     });
                  //   },
                  // ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height - 180 > 460
                    ? MediaQuery.of(context).size.height - 180 - 200
                    : MediaQuery.of(context).size.height - 180 - 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, top: 20, bottom: 20, right: 20),
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    expanded
                                        ? expanded = false
                                        : expanded = true;
                                  });
                                },
                                icon: expanded
                                    ? Icon(Icons.remove)
                                    : Icon(Icons.add),
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text("",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              80,
                                          fontWeight: FontWeight.w700)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    expanded
                        ? SideBarElement(
                            assetPath: "images/material_logo.png",
                            value: AppScreen.material,
                            groupValue: grpValue,
                            label: "Text",
                            onClick: (AppScreen appScreen) {
                              // setState(() {
                              //   if (grpValue != appScreen) {
                              //     grpValue = appScreen;
                              //     Navigator.pushReplacement(
                              //       context,
                              //       PageRouteBuilder(
                              //           transitionsBuilder: (_,
                              //               Animation<double> animation,
                              //               __,
                              //               Widget child) {
                              //             return FadeTransition(
                              //                 opacity: animation, child: child);
                              //           },
                              //           pageBuilder:
                              //               (BuildContext context, _, __) =>
                              //                   const MaterialScreen()),
                              //     );
                              //   }
                              // });
                            },
                          )
                        : const SizedBox(
                            height: 1,
                          ),
                    expanded
                        ? SideBarElement(
                            assetPath: "images/storage_logo.png",
                            value: AppScreen.storage,
                            groupValue: grpValue,
                            label: "Storage",
                            onClick: (AppScreen appScreen) {
                              // setState(() {
                              //   if (grpValue != appScreen) {
                              //     grpValue = appScreen;
                              //     Navigator.pushReplacement(
                              //       context,
                              //       PageRouteBuilder(
                              //           transitionsBuilder: (_,
                              //               Animation<double> animation,
                              //               __,
                              //               Widget child) {
                              //             return FadeTransition(
                              //                 opacity: animation, child: child);
                              //           },
                              //           pageBuilder:
                              //               (BuildContext context, _, __) =>
                              //                   StorageMasterScreen()),
                              //     );
                              //   }
                              // });
                            },
                          )
                        : const SizedBox(
                            height: 1,
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

typedef OnTapSideBarElement(AppScreen appScreen);

class SideBarElement extends StatelessWidget {
  const SideBarElement({
    super.key,
    required this.value,
    required this.groupValue,
    required this.assetPath,
    required this.label,
    required this.onClick,
  });
  final AppScreen value;
  final AppScreen groupValue;
  final String label;
  final OnTapSideBarElement onClick;
  final String assetPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 20),
      child: GestureDetector(
        onTap: () {
          onClick(value);
        },
        child: Container(
          padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 5),
          decoration: BoxDecoration(
            border: groupValue == value
                ? Border.all(color: Colors.white, width: 2)
                : const Border.symmetric(),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: SizedBox(
                      height: 35, width: 35, child: Image.asset(assetPath))),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 2,
                child: Text(label,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width / 80,
                        fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
