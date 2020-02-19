import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:invest_school/app/shared/style/colors.dart';

import 'account_controller.dart';

class AccountPage extends StatefulWidget {
  final String title;
  const AccountPage({Key key, this.title = "Account"}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends ModularState<AccountPage, AccountController> {
  @override
  Widget build(BuildContext context) {
    final _userController = TextEditingController();
    final _passwordController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(child: Observer(
          builder: (BuildContext context) {
            return Container(
              padding: EdgeInsets.all(30),
              child: !controller.loggedUser
                  ? Column(
                      children: <Widget>[
                        SizedBox(
                          height: 140,
                          width: 140,
                          child: Image.asset("logo.png"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _userController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            labelText: "User",
                            labelStyle: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            labelText: "Password",
                            labelStyle: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Observer(
                            builder: (BuildContext context) {
                              return Column(
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: 200,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      color: Color(PRIMARY_COLOR),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 10),
                                      child: controller.loading
                                          ? Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            )
                                          : Text(
                                              "Sign in",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                      onPressed: () {
                                        return controller
                                            .loginWithEmailAndPassword(
                                                _userController.text
                                                    .toString()
                                                    .trim(),
                                                _passwordController.text
                                                    .toString());
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 200,
                                    child: controller.loading
                                        ? Center(
                                            child: CircularProgressIndicator())
                                        : SignInButton(
                                            Buttons.Google,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 10),
                                            onPressed:
                                                controller.loginWithGoogle,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  : Center(
                      child: Column(
                        children: <Widget>[
                          Text("Logged"),
                        ],
                      ),
                    ),
            );
          },
        )));
  }
}
