// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors, depend_on_referenced_packages, prefer_typing_uninitialized_variables, non_constant_identifier_names, deprecated_member_use, avoid_print, unused_field, override_on_non_overriding_member

// import 'package:flutter/material.dart';
// import 'package:subo_sham_doway/vew/components/home_data.dart';
// import 'package:subo_sham_doway/vew/screens/privacy_policy.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:store_redirect/store_redirect.dart';
// import 'package:url_launcher/url_launcher.dart';

// class dowa_screen extends StatefulWidget {
//   String mainscreen;
//   var maintital;
//   dowa_screen({super.key, required this.mainscreen, required this.maintital});

//   @override
//   State<dowa_screen> createState() => _dowa_screenState();
// }

// class _dowa_screenState extends State<dowa_screen> {
//   dynamic list = subo_sham_doway.subo_sham_doway_data;
//   Future<void> _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _appbar,
//       drawer: _drawer_main,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: SizedBox(
//            height: MediaQuery.of(context).size.height * 1.5,
//             child: Expanded(
//               child: Column(
//                 children: [
//                   ListView.builder(
//                     shrinkWrap: true,
//                     itemCount: list.length,
//                     scrollDirection: Axis.vertical,
//                     itemBuilder: (context, index2) {
//                       return SingleChildScrollView(
//                         child: Column(
//                           children: [
//                             list[index2]["maintital"].toString() ==
//                                     widget.mainscreen.toString()
//                                 ? ListView.builder(
//                                     scrollDirection: Axis.vertical,
//                                     // shrinkWrap: true,
//                                     itemCount: list[index2]["mainscreen"].length,
//                                     itemBuilder: (context, index) {
//                                       return Image(
//                                           image: AssetImage(list[index2]["mainscreen"]
//                                                   [index]
//                                               .toString()));
//                                     },
//                                   )
//                                 : const SizedBox(),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   AppBar get _appbar => AppBar(
//         actions: [
//           InkWell(
//             child: Padding(
//               padding: const EdgeInsets.only(right: 10),
//               child: Icon(Icons.home),
//             ),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           )
//         ],
//         backgroundColor: const Color.fromARGB(255, 121, 95, 3),
//         centerTitle: true,
//         title: Center(
//           child: Text(
//             widget.maintital,
//             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//           ),
//         ),
//       );

//   Drawer get _drawer_main => Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 185, 146, 3),
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.all(Radius.circular(50)),
//                   child: SizedBox(
//                     height: 450,
//                     width: 550,
//                     child: Image(image: AssetImage("images/banners1.png")),
//                   ),
//                 )),
//             Padding(
//               padding: const EdgeInsets.only(left: 8),
//               child: Column(
//                 children: [
//                   ListTile(
//                     title: const Text(
//                       'Share',
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 121, 95, 3),
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           fontFamily: "Inter"),
//                     ),
//                     leading: Icon(
//                       Icons.share,
//                       color: Color.fromARGB(255, 121, 95, 3),
//                     ),
//                     onTap: () async {
//                       try {
//                         Share.share(
//                             "https://play.google.com/store/apps/details?id=com.sharasol.PKR_Fake_Check_Guide");
//                       } catch (e) {
//                         print(e.toString());
//                       }
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Rate Us',
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 121, 95, 3),
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           fontFamily: "Inter"),
//                     ),
//                     leading: Icon(
//                       Icons.star_border,
//                       color: Color.fromARGB(255, 121, 95, 3),
//                     ),
//                     onTap: () {
//                       StoreRedirect.redirect(
//                         androidAppId: "com.sharasol.PKR_Fake_Check_Guide",
//                       );
//                     },
//                   ),
//                   ListTile(
//                     title: Padding(
//                       padding: const EdgeInsets.only(right: 20),
//                       child: const Text(
//                         'More Apps',
//                         style: TextStyle(
//                             color: Color.fromARGB(255, 121, 95, 3),
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: "Inter"),
//                       ),
//                     ),
//                     leading: SizedBox(
//                       height: 20,
//                       width: 20,
//                       child: Image(image: AssetImage("images/icons.png")),
//                     ),
//                     onTap: () {
//                       _launchURL(
//                           "https://play.google.com/store/search?q=dev%20glim&c=apps");
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Feedback',
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 121, 95, 3),
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           fontFamily: "Inter"),
//                     ),
//                     leading: Icon(Icons.feedback_outlined,
//                         color: Color.fromARGB(255, 121, 95, 3)),
//                     onTap: () {
//                       launch('mailto:devglim786@gmail.com');
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Privacy Policy',
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 121, 95, 3),
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           fontFamily: "Inter"),
//                     ),
//                     leading: Icon(Icons.privacy_tip_outlined,
//                         color: Color.fromARGB(255, 121, 95, 3)),
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => PrivacyPolicy(),
//                           ));
//                     },
//                   ),
//                   SizedBox(
//                     height: 150,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     // ignore: prefer_const_literals_to_create_immutables
//                     children: [
//                       Text(
//                         "Version ",
//                         style: TextStyle(
//                             fontSize: 18,
//                             color: Color.fromARGB(255, 121, 95, 3),
//                             fontWeight: FontWeight.w600,
//                             fontFamily: "Inter"),
//                       ),
//                       Text(
//                         "1.0.0+1",
//                         style: TextStyle(
//                             fontSize: 12,
//                             color: Color.fromARGB(255, 121, 95, 3),
//                             fontWeight: FontWeight.w600,
//                             fontFamily: "Inter"),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );
// }

// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:subha_shaam_ki_dua/vew/components/home_data.dart';
import 'package:share_plus/share_plus.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:subha_shaam_ki_dua/vew/screens/privacy_policy.dart';
import 'package:url_launcher/url_launcher.dart';

class dowa_screen extends StatefulWidget {
  String mainscreen;
  var maintital;
  dowa_screen({super.key, required this.mainscreen, required this.maintital});

  @override
  State<dowa_screen> createState() => _dowa_screenState();
}

class _dowa_screenState extends State<dowa_screen> {
  dynamic list = subo_sham_doway.subo_sham_doway_data;
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final _scrollController = ScrollController();
  bool _showFloatingActionButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.offset >= 200) {
      setState(() {
        _showFloatingActionButton = true;
      });
    } else {
      setState(() {
        _showFloatingActionButton = false;
      });
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar,
      drawer: _drawer_main,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: list.length,
                itemBuilder: (context, index2) {
                  return Column(
                    children: [
                      if (list[index2]["maintital"].toString() ==
                          widget.mainscreen.toString())
                        ...List.generate(list[index2]["mainscreen"].length,
                            (index) {
                          return Image(
                              image: AssetImage(list[index2]["mainscreen"]
                                      [index]
                                  .toString()));
                        }),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _showFloatingActionButton
          ? FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 121, 95, 3),
              onPressed: _scrollToTop,
              child: Icon(
                Icons.keyboard_arrow_up_outlined,
                size: 55,
              ),
            )
          : null,
    );
  }

  AppBar get _appbar => AppBar(
        actions: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(
                Icons.home,
                size: 30,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
        backgroundColor: const Color.fromARGB(255, 121, 95, 3),
        centerTitle: true,
        title: Center(
          child: Text(
            widget.maintital,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      );
  Drawer get _drawer_main => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 121, 95, 3),
                ),
                child: SizedBox(
                  height: 600,
                  width: 400,
                  child: Image(
                    image: AssetImage("images/App_Logos.png"),
                    fit: BoxFit.contain,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Share',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 95, 3),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Inter"),
                    ),
                    leading: Icon(
                      Icons.share,
                      color: Color.fromARGB(255, 121, 95, 3),
                    ),
                    onTap: () async {
                      try {
                        Share.share(
                            "https://play.google.com/store/apps/details?id=com.DevGlim.Subha-Shaam-Ki-Duaain");
                      } catch (e) {
                        print(e.toString());
                      }
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Rate Us',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 95, 3),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Inter"),
                    ),
                    leading: Icon(
                      Icons.star_border,
                      color: Color.fromARGB(255, 121, 95, 3),
                    ),
                    onTap: () {
                      StoreRedirect.redirect(
                        androidAppId: "com.devglim.Subha_Shaam_Ki_Duaain",
                      );
                    },
                  ),
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: const Text(
                        'More Apps',
                        style: TextStyle(
                            color: Color.fromARGB(255, 121, 95, 3),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Inter"),
                      ),
                    ),
                    leading: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image(image: AssetImage("images/icons.png")),
                    ),
                    onTap: () {
                      _launchURL(
                          "https://play.google.com/store/apps/developer?id=Dev+Glim");
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Feedback',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 95, 3),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Inter"),
                    ),
                    leading: Icon(Icons.feedback_outlined,
                        color: Color.fromARGB(255, 121, 95, 3)),
                    onTap: () {
                      launch('mailto:devglim786@gmail.com');
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Privacy Policy',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 95, 3),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Inter"),
                    ),
                    leading: Icon(Icons.privacy_tip_outlined,
                        color: Color.fromARGB(255, 121, 95, 3)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrivacyPolicy(),
                          ));
                    },
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Version ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 121, 95, 3),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Inter"),
                      ),
                      Text(
                        "1.0.0+1",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 121, 95, 3),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Inter"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
