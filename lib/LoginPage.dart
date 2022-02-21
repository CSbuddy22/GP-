import 'dart:html';

import 'package:first_programss/page/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int login = 1;
  int signup = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 200,
                      child: Image.asset(
                        'assets/LOGO1.png',
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'welcome!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'please sign up or in for better experice . ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    color: Colors.blue[50],
                    width: double.infinity,
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  login = 0;
                                  signup = 1;
                                });
                              },
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                    color: Colors.red[400], fontSize: 16),
                              )),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  login = 1;
                                  signup = 0;
                                });
                              },
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.red[400], fontSize: 16),
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              )),
          if (login == 1 && signup == 0)
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber[50],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(30)),
                            // البوكس والانحناءات 30
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              //بادنق يمون على كل اللابلات
                              child: TextFormField(
                                // controller: nomeClinController,
                                //Direction: textDirectionToAxisDirection(textDirection),
                                validator: (value) {
                                  if (value!.length > 30) {
                                    return 'the space in finished';
                                  }
                                  if (value.isEmpty) {
                                    return 'You must write post first';
                                  }
                                },
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Email',
                                  // type=EmailInputElement(),

                                  hintStyle: TextStyle(
                                      fontSize: 24, color: Colors.black),
                                ),
                                autofocus: false,
                                //
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                // controller: nameClincController,
                                // textDirection: textDirectionToAxisDirection(),
                                validator: (value) {
                                  if (value!.length > 30) {
                                    return 'The space is finished';
                                  }
                                  if (value.isEmpty) {
                                    return 'You must write post first';
                                  }
                                },

                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'password',
                                  hintStyle: TextStyle(
                                      fontSize: 24, color: Colors.black),
                                ),

                                autofocus: false,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('forget password',
                                style: TextStyle(color: Colors.red))),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.yellowAccent.shade100,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    },
                                    child: Icon(Icons.arrow_forward))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          if (login == 0 && signup == 1)
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              // controller: nameClincController,
                              // textDirection: textDirectionToAxisDirection(),
                              validator: (value) {
                                if (value!.length > 30) {
                                  return 'The space is finished';
                                }
                                if (value.isEmpty) {
                                  return 'You must write post first';
                                }
                              },

                              decoration: const InputDecoration(
                                // border: OutlineInputBorder(),
                                border: InputBorder.none,

                                // hintText: 'Write here....',
                                labelText: 'Full Name',
                                // label: Text(
                                //   'add',
                                //   style: TextStyle(color: Colors.black),
                                // ),
                                // prefixIcon: Icon(
                                //   Icons.alternate_email,
                                //   color: Colors.black,
                                // ),
                                hintStyle: TextStyle(
                                    fontSize: 24, color: Colors.black),
                              ),
                              // style: TextStyle(
                              //     fontSize: 24, color: Colors.black),
                              // maxLines: 10,
                              autofocus: false,
                              // maxLength: 30,
                              // onSaved: (val) => _cubit.postBody = val,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              // controller: nameClincController,
                              // textDirection: textDirectionToAxisDirection(),
                              validator: (value) {
                                if (value!.length > 30) {
                                  return 'The space is finished';
                                }
                                if (value.isEmpty) {
                                  return 'You must write post first';
                                }
                              },

                              decoration: const InputDecoration(
                                border: InputBorder.none,

                                // hintText: 'Write here....',
                                labelText: 'Email',
                                // label: Text(
                                //   'add',
                                //   style: TextStyle(color: Colors.black),
                                // ),
                                // prefixIcon: Icon(
                                //   Icons.alternate_email,
                                //   color: Colors.black,
                                // ),
                                hintStyle: TextStyle(
                                    fontSize: 24, color: Colors.black),
                              ),
                              // style: TextStyle(
                              //     fontSize: 24, color: Colors.black),
                              // maxLines: 10,
                              autofocus: false,
                              // maxLength: 30,
                              // onSaved: (val) => _cubit.postBody = val,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              // controller: nameClincController,
                              // textDirection: textDirectionToAxisDirection(),
                              validator: (value) {
                                if (value!.length > 30) {
                                  return 'The space is finished';
                                }
                                if (value.isEmpty) {
                                  return 'You must write post first';
                                }
                              },

                              decoration: const InputDecoration(
                                // border: OutlineInputBorder(),
                                border: InputBorder.none,

                                // hintText: 'Write here....',
                                labelText: 'password',
                                // label: Text(
                                //   'add',
                                //   style: TextStyle(color: Colors.black),
                                // ),
                                // prefixIcon: Icon(
                                //   Icons.alternate_email,
                                //   color: Colors.black,
                                // ),
                                hintStyle: TextStyle(
                                    fontSize: 24, color: Colors.black),
                              ),
                              // style:
                              //     TextStyle(fontSize: 24, color: Colors.black),
                              // maxLines: 10,
                              autofocus: false,
                              // maxLength: 30,
                              // onSaved: (val) => _cubit.postBody = val,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'you aiready have an account ? Log in use without login',
                            style: TextStyle(color: Colors.red),
                            textAlign: TextAlign.center,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.yellowAccent.shade100,
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  },
                                  child: Icon(Icons.arrow_forward))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
