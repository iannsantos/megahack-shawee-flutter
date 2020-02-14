import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
          centerTitle: true,
          title: Text(
            widget.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
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
                            height: 120,
                            width: 120,
                            child: Image.network(
                                "https://api.adorable.io/avatars/120/logo.png")),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _userController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              labelText: "Usuário",
                              labelStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20)),
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
                              labelText: "Senha",
                              labelStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          // width: 120,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [0.3, 1],
                                  colors: [Colors.blue, Colors.lightBlue])),
                          child: Observer(
                            builder: (BuildContext context) {
                              return RaisedButton(
                                child: controller.loading
                                    ? Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    : Icon(
                                        FontAwesome5Brands.google,
                                        color: Colors.red,
                                      ),
                                onPressed: controller.loginWithGoogle,
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  : Center(
                      child: Column(
                        children: <Widget>[
                          Text("Logado"),
                          RaisedButton(
                            child: controller.loading
                                ? Text("Signout")
                                : Center(
                                    child: CircularProgressIndicator(),
                                  ),
                            onPressed: controller.signOut,
                          ),
                        ],
                      ),
                    ),
            );
          },
        )));
  }
}
