import 'package:catalog/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Sign Up".text.xl5.bold.color(context.theme.accentColor).make(),
                "Create your account".text.xl2.make(),
                CupertinoFormSection(
                  header: "User Details".text.make(),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        placeholder: "Enter Name",
                      ),
                      prefix: "Name".text.make(),
                    ),
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        placeholder: "Enter Phone",
                      ),
                      prefix: "Phone".text.make(),
                    ),
                  ],
                ),
                CupertinoFormSection(
                  header: "User".text.make(),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        placeholder: "Enter Email",
                      ),
                      prefix: "Email".text.make(),
                    ),
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        obscureText: true,
                        placeholder: "Enter Password",
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Password cannot be empty";
                          } else
                            return null;
                        },
                      ),
                      prefix: "Password".text.make(),
                    ),
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        obscureText: true,
                        placeholder: "Confirm Password",
                      ),
                      prefix: "Confirm Password".text.make(),
                    ),
                  ],
                ),
                CupertinoFormSection(
                  header: "Terms & Conditions".text.make(),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoSwitch(
                        value: _value,
                        onChanged: (bool value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      prefix: "I Agree".text.make(),
                    ),
                  ],
                ),
                20.heightBox,
                Material(
                  color: context.theme.buttonColor,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: 150,
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ).centered(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
