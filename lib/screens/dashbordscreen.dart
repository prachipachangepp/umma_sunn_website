import 'package:flutter/material.dart';
import 'package:umma_sunn_website/constant/String_manager.dart';
import 'package:umma_sunn_website/screens/user_management.dart';

class DashbordScreenview extends StatefulWidget {
  const DashbordScreenview({super.key});

  @override
  State<DashbordScreenview> createState() => _DashbordScreenviewState();
}

class _DashbordScreenviewState extends State<DashbordScreenview> {
  bool pressed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 40,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 32, 35, 136),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 32, 35, 136),
                  radius: 25,
                  child: Icon(
                    Icons.person_3,
                    size: 30,
                    color: Color.fromARGB(254, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  //fit: FlexFit.tight,
                  child: Container(
                    // height: 500,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xfff6f6f6),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(15)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Icon(Icons.home),
                          title: Text(
                            "Dashboard",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 50),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.people_alt_outlined,
                              color: Color(0xffc2c0bd)),
                          title: Text(AppString.userm,
                              style: pressed
                                  ? TextStyle(color: Color(0xff4e82bb))
                                  : TextStyle(
                                      color: Color(0xffc2c0bd),
                                    )),
                          onTap: () {
                            pressed = !pressed;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const UserManagemntscreen()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  // fit: FlexFit.tight,
                  child: Container(
                    //height: 500,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        //color: const Color.fromARGB(255, 53, 32, 32),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
