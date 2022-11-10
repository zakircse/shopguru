import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shopguru/consts/consts.dart';
import 'package:shopguru/consts/lists.dart';
import 'package:shopguru/views/auth_screen/signup_screen.dart';
import 'package:shopguru/widgets_common/applogo_widget.dart';
import 'package:shopguru/widgets_common/bg_widget.dart';
import 'package:shopguru/widgets_common/custom_button.dart';
import 'package:shopguru/widgets_common/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              "Log in to $appname".text.fontFamily(bold).white.size(20).make(),
              15.heightBox,
              Column(
                children: [
                  10.heightBox,
                  customTextField(title: email, hint: emailHint),
                  5.heightBox,
                  customTextField(title: password, hint: passwordHint),
                  5.heightBox,
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make()),
                  ),
                  5.heightBox,
                  customButton(
                          color: redColor,
                          textColor: whiteColor,
                          title: login,
                          onPress: () {})
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  20.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  5.heightBox,
                  customButton(
                      color: lightGrey,
                      title: signup,
                      textColor: redColor,
                      onPress: () {
                        Get.to(() => SignupScreen());
                      }).box.width(context.screenWidth - 50).make(),
                  20.heightBox,
                  loninWith.text.color(fontGrey).make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: lightGrey,
                                radius: 25,
                                child: Image.asset(
                                  socialIconList[index],
                                  width: 30,
                                ),
                              ),
                            )),
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
    );
  }
}
