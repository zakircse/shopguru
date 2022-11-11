import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shopguru/consts/consts.dart';
import 'package:shopguru/consts/lists.dart';
import 'package:shopguru/widgets_common/applogo_widget.dart';
import 'package:shopguru/widgets_common/bg_widget.dart';
import 'package:shopguru/widgets_common/custom_button.dart';
import 'package:shopguru/widgets_common/custom_textfield.dart';

import '../../widgets_common/bg_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                (context.screenHeight * .1).heightBox,
                applogoWidget(),
                10.heightBox,
                "Sign up to $appname"
                    .text
                    .fontFamily(bold)
                    .white
                    .size(20)
                    .make(),
                15.heightBox,
                Column(
                  children: [
                    10.heightBox,
                    customTextField(title: name, hint: nameHint),
                    5.heightBox,
                    customTextField(title: email, hint: emailHint),
                    5.heightBox,
                    customTextField(title: password, hint: passwordHint),
                    5.heightBox,
                    customTextField(title: retypePassword, hint: passwordHint),
                    5.heightBox,
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgetPass.text.make()),
                    ),
                    5.heightBox,
                    Row(
                      children: [
                        Checkbox(
                          activeColor: redColor,
                          checkColor: whiteColor,
                          value: isCheck,
                          onChanged: (newValue) {
                            setState(() {
                              isCheck = newValue;
                            });
                          },
                        ),
                        10.widthBox,
                        Expanded(
                          child: RichText(
                              text: TextSpan(
                            children: [
                              TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                    fontFamily: regular, color: fontGrey),
                              ),
                              TextSpan(
                                text: termAndCond,
                                style: TextStyle(
                                    fontFamily: bold, color: redColor),
                              ),
                              TextSpan(
                                text: " & ",
                                style: TextStyle(
                                    fontFamily: regular, color: fontGrey),
                              ),
                              TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                    fontFamily: bold, color: redColor),
                              ),
                            ],
                          )),
                        )
                      ],
                    ),
                    5.heightBox,
                    customButton(
                            color: isCheck == true ? redColor : lightGrey,
                            textColor: isCheck == true ? whiteColor : fontGrey,
                            title: signup,
                            onPress: () {})
                        .box
                        .width(context.screenWidth - 50)
                        .make(),
                    10.heightBox,
                    //wraping into gesture detector of velocity X
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        alreadyAccount.text.color(fontGrey).make(),
                        login.text.color(redColor).make().onTap(() {
                          Get.back();
                        })
                      ],
                    ),
                    10.heightBox,
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(EdgeInsets.all(16))
                    .width(context.screenWidth - 60)
                    .shadowSm
                    .make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
