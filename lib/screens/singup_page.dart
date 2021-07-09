import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
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
                      placeholder: "Enter Password",
                    ),
                    prefix: "Password".text.make(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
