import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLogin = false;
  final email = TextEditingController();
  final id = TextEditingController();
  final pass = TextEditingController();
  final age = TextEditingController();

  bool obscure = true;

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    pass.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image(image: AssetImage("assets/image/Login.jpg")),
              ),
              Padding(
                padding: const EdgeInsets.only( top: 300),
                child: Container(
                  height: 425,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            controller: email,
                            cursorColor: Colors.indigo,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter E-mail";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              hintText: "Enter your email",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14.0),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.indigo.shade300,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            obscureText: obscure,
                            controller: pass,
                            cursorColor: Colors.indigo,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Password";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                                hintText: "Enter your Password",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14.0),
                                prefixIcon: Icon(
                                  Icons.password,
                                  color: Colors.indigo.shade300,
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    if (obscure) {
                                      obscure = false;
                                    } else {
                                      obscure = true;
                                    }
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.grey,
                                  ),
                                )),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ))
                        ],
                      ),
                      Container(
                        width: 280,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo.shade300,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an Account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(onPressed: () {}, child: Text("SignUp",style: TextStyle(color: Colors.blue),)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
