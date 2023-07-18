import 'package:flutter/material.dart';
import 'package:umma_sunn_website/screens/thankuscreen.dart';

class ForgetscreenView extends StatefulWidget {
  const ForgetscreenView({super.key});

  @override
  State<ForgetscreenView> createState() => _ForgetscreenViewState();
}

class _ForgetscreenViewState extends State<ForgetscreenView> {
  final TextEditingController _verifiedemailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Forgot Password ?", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 57, 104),
              ),),
              const SizedBox(height: 20),
              Container(
                //color: Color.fromARGB(255, 211, 206, 206),
                height: 400,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding:const EdgeInsets.only(left: 50, right: 50, top: 30),
                  child: Column(
                    children: [const SizedBox(
                      height: 30,
                    ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("email",style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                          ),),
                          const SizedBox(
                        height: 10,
                      ),
                          TextField(
                            controller: _verifiedemailController,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                               
                                focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.cyan.shade900, width: 2.0),
                                )),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Please enter your email and tap Request to Change\n                                                                      Password",style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                              ),)
                            ],
                          ),
                        ],
                      ),
                      
                      const SizedBox(
                        height: 90,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ThankuscreenView()),
                                );
                              },
                              child: const Text(
                                "Request to change Password",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 2,
                                  backgroundColor: Colors.blue),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}