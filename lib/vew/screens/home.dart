// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:subha_shaam_ki_dua/vew/components/home_data.dart';

import 'dowa_screens.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {
  dynamic list = subo_sham_doway.subo_sham_doway_data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image(
              image: AssetImage("images/home.png"),
              fit: BoxFit.fill,
            )),
        Positioned(
          top: 250,
          left: 60,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .9,
            width: MediaQuery.of(context).size.width * .7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: list.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          height: 75,
                          width: 230,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => dowa_screen(mainscreen: list[index]["maintital"],maintital:  list[index]["maintital"])),);
                              },
                              // ignore: sort_child_properties_last
                              child: Text(
                                list[index]["maintital"],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 121, 95, 3),
                                  shape:BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3)))
                                      ),
                            ),
                          ));
                    },
                  ),
                )
                // SizedBox(height: 20,),
                // SizedBox(
                // height: 60,
                // width: 230,
                // child: ElevatedButton(
                //   onPressed: () {},
                //   child: Text(
                //     "Surah waqiya",
                //     style:
                //         TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //   ),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Color.fromARGB(255, 121, 95, 3),
                //       shape: BeveledRectangleBorder(
                //           borderRadius: BorderRadius.circular(10)

                //           )
                //           ),
                // )),
                //  SizedBox(height: 20,),
                // SizedBox(
                // height: 60,
                // width: 230,
                // child: ElevatedButton(
                //   onPressed: () {},
                //   child: Text(
                //     "Surah Mulk",
                //     style:
                //         TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //   ),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Color.fromARGB(255, 121, 95, 3),
                //       shape: BeveledRectangleBorder(
                //           borderRadius: BorderRadius.circular(10)

                //           )
                //           ),
                // )),
                //  SizedBox(height: 20,),
                // SizedBox(
                // height: 60,
                // width: 230,
                // child: ElevatedButton(
                //   onPressed: () {},
                //   child: Text(
                //     "Surah Rehmain",
                //     style:
                //         TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //   ),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Color.fromARGB(255, 121, 95, 3),
                //       shape: BeveledRectangleBorder(
                //           borderRadius: BorderRadius.circular(10)

                //           )
                //           ),
                // )),
                //  SizedBox(height: 20,),
                // SizedBox(
                // height: 60,
                // width: 230,
                // child: ElevatedButton(
                //   onPressed: () {},
                //   child: Text(
                //     "Surah Yaseen",
                //     style:
                //         TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //   ),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Color.fromARGB(255, 121, 95, 3),
                //       shape: BeveledRectangleBorder(
                //           borderRadius: BorderRadius.circular(10)

                //           )
                //           ),
                // ))
              ],
            ),
          ),
        )
      ],
    ));
  }
}
