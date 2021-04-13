import 'package:flutter/material.dart';
import 'package:pepperfry/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                LoginTexts(),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(hintText: "Mobile Number"),
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen())),
                  child: Container(
                    height: 50,
                    width: 170,
                    child: Center(
                        child: Text("SEND OTP",
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
                        Colors.yellow[700],
                      ],
                    )),
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen())),
                  child: Container(
                    height: 50,
                    width: 170,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.red)),
                    child: Center(
                        child: Text(
                      "Login useing Password",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.red),
                    )),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.3),
                Center(
                  child: Text("New To Pepperfry? Register Here",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "OR Continue With",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 15),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/Icons/facebook_icon.png"))),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/Icons/google_icon.jpg"))),
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

class LoginTexts extends StatelessWidget {
  const LoginTexts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        InkWell(onTap: () => Navigator.pop(context), child: Icon(Icons.close)),
        SizedBox(height: 10),
        Text(
          "Log In",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.red),
        ),
        SizedBox(height: 15),
        Text(
          "You Will Be Able To Track Order , Use\nWishlist & More.",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.5)),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
