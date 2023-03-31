import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/bg_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_buttons.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool? isCheck = false;


  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                (context.screenHeight*0.1).heightBox,
                applogoWidget(),
                10.heightBox,
                "Join the $appname".text.fontFamily(bold).white.size(22).make(),
                15.heightBox,

                Column(
                  children: [
                    customTextField(hint: nameHint,title: name),
                    customTextField(hint: emailHint,title: email),
                    customTextField(hint: passwordHint,title: password),
                    customTextField(hint: passwordHint,title: retypePassword),
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed: () {}, child: forgetPassword.text.make())),
                    5.heightBox,
                    // ourButton().box.width(context.screenWidth - 50).make(),

                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,

                            value: isCheck,
                            onChanged: (newValue) {
                            setState(() {
                              isCheck = newValue;
                            });
                            },
                      ),
                        10.heightBox,
                        Expanded(
                          child: RichText(text: TextSpan(
                            children:[ TextSpan(text: "I agree to the ", style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                              TextSpan(text: termsAndCond,
                                  style: TextStyle(
                                fontFamily: bold,
                                color: Colors.blue,
                              )),
                              TextSpan(text: "&",
                                  style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              )),
                              TextSpan(text: privacyPolicy,
                                  style: TextStyle(
                                fontFamily: bold,
                                color: Colors.blue,
                              ))
                              ],
                          )),
                        ),
                      ],
                    ),
                    ourButton(
                        color: isCheck == true ? redColor : Colors.redAccent[100],
                        title: signup,
                        textColor: whiteColor,
                        onPress: () {})
                        .box
                        .width(context.screenWidth - 50)
                        .make(),
                    10.heightBox,
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: alreadyHaveAccount,
                          style: TextStyle(fontFamily: regular,color: fontGrey),
                        ),
                        TextSpan(
                          text: login,
                          style: TextStyle(fontFamily: bold,color: Colors.blue),
                        ),
                      ],
                    ),
                    ).onTap(() {
                      Get.back();
                    }),
                  ],
                ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
              ],
            ),
          ),
        ));
  }
}
