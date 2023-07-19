import 'package:flutter/material.dart';
import 'package:umma_sunn_website/screens/loginscreen.dart';

class ThankuscreenView extends StatefulWidget {
  const ThankuscreenView({super.key});

  @override
  State<ThankuscreenView> createState() => _ThankuscreenViewState();
}

class _ThankuscreenViewState extends State<ThankuscreenView> {
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
              const Text(
                "Thank you",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 57, 104),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                //color: Color.fromARGB(255, 211, 206, 206),
                height: 400,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                     const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("You request for password change is \nsuccessfully processed",style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                          ),)
                        ],
                      ),
                      const SizedBox(height: 40,),
                      
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Please check your inbox for reset link",style: TextStyle(fontSize: 15,color: Colors.grey,
                          fontWeight: FontWeight.w800),)
                        ],
                      ),
                      const SizedBox(
                        height: 100,
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
                                          const LogInScreen()),
                                );
                              },
                              child: const Text(
                                "Sign in",
                                style:  TextStyle(color: Colors.white),
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
