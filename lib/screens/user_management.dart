import 'package:flutter/material.dart';

class UserManagemntscreen extends StatefulWidget {
  const UserManagemntscreen({super.key});

  @override
  State<UserManagemntscreen> createState() => _UserManagemntscreenState();
}

class _UserManagemntscreenState extends State<UserManagemntscreen> {
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
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "User Management",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 32, 35, 136),
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
                      color: Color(0xffc2c0bd),
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
                          title: Text("Dashboard"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.people_alt_outlined),
                          title: Text("User management"),
                          onTap: () {
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.person_add_alt_outlined),
                                  label: Text("Add user"))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("User Name"),
                              Text("Employee ID"),
                              Text("email id"),
                              Text("Role"),
                              Text("Status"),
                            ],
                          ),
                        )
                      ],
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
