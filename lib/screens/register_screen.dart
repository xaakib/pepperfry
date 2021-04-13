import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    // height = MediaQuery.of(context).size.height;
    //  wight = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.close),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Register and Get",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.red),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Rs 2,501 Instantly\nIn Your Perperfry Wallet",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "These Credits Can Be Clubbed With Other Offes",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(hintText: "Name"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Mobile"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Email ID"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen())),
                      child: Container(
                        height: 50,
                        width: 250,
                        child: Center(
                            child: Text("REGISTER",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18))),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.red,
                            Colors.orange,
                          ],
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
