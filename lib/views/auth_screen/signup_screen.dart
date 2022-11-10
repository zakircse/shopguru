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

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * .1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Sign up to $appname".text.fontFamily(bold).white.size(20).make(),
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
                        checkColor: redColor,
                        value: false,
                        onChanged: (newValue) {},
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(
                              text: "I agree to the ",
                              style:
                                  TextStyle(fontFamily: bold, color: fontGrey),
                            ),
                            TextSpan(
                              text: termAndCond,
                              style:
                                  TextStyle(fontFamily: bold, color: redColor),
                            ),
                            TextSpan(
                              text: " & ",
                              style:
                                  TextStyle(fontFamily: bold, color: fontGrey),
                            ),
                            TextSpan(
                              text: privacyPolicy,
                              style:
                                  TextStyle(fontFamily: bold, color: redColor),
                            ),
                          ],
                        )),
                      )
                    ],
                  ),
                  5.heightBox,
                  customButton(
                          color: redColor,
                          textColor: whiteColor,
                          title: signup,
                          onPress: () {})
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,
                  //wraping into gesture detector of velocity X
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                        text: alreadyAccount,
                        style: TextStyle(fontFamily: bold, color: fontGrey),
                      ),
                      TextSpan(
                        text: login,
                        style: TextStyle(fontFamily: bold, color: redColor),
                      ),
                    ],
                  )).onTap(() {
                    Get.back();
                  }),
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
    );
  }
}
