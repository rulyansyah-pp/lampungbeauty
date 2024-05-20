import 'package:flutter/material.dart';
import 'package:project_ti/config/asset.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 650,
              decoration: BoxDecoration(
                color: Colors.pink.shade400,
              ),
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(
                top: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Asset.colorAccent,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('../asset/images/logo.jpg'),
                      backgroundColor: Asset.colorPrimaryDark,
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //text login
                  Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),

                        //form user dan pass
                        Form(
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 60,
                              bottom: 20,
                              left: 20,
                              right: 20,
                            ),
                            child: Column(
                              children: [
                                TextFormField(
                                  validator: (value) =>
                                      value == '' ? 'Jangan Kosong' : null,
                                  style: TextStyle(
                                    color: Asset.colorPrimaryDark,
                                  ),
                                  decoration: InputDecoration(
                                      hintText: 'username',
                                      hintStyle: TextStyle(
                                        color: Asset.colorPrimaryDark,
                                      ),
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Asset.colorPrimaryDark,
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.pink.shade400,
                                          width: 2,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Asset.colorPrimary,
                                          width: 1,
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.account_circle,
                                        color: Asset.colorPrimaryDark,
                                      )),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  validator: (value) =>
                                      value == '' ? 'Jangan Kosong' : null,
                                  style: TextStyle(
                                    color: Asset.colorPrimaryDark,
                                  ),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                        color: Asset.colorPrimaryDark,
                                      ),
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Asset.colorPrimaryDark,
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.pink.shade400,
                                          width: 2,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Asset.colorPrimary,
                                          width: 1,
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Asset.colorPrimaryDark,
                                      )),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.brown.shade600,
                                  ),
                                  width: double.infinity,
                                  child: InkWell(
                                    onTap: () {},
                                    borderRadius: BorderRadius.circular(10),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 12,
                                      ),
                                      child: Text(
                                        'LOGIN',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
