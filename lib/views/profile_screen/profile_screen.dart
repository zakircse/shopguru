import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopguru/consts/consts.dart';
import 'package:shopguru/consts/lists.dart';
import 'package:shopguru/views/profile_screen/components/details_cart.dart';
import 'package:shopguru/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: bgWidget(
      child: Scaffold(
        body: Column(
          children: [
            //edit profile section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit,
                  color: whiteColor,
                ),
              ).onTap(() {}),
            ),
            //user details section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Image.asset(
                    imgProfile,
                    width: 80,
                    fit: BoxFit.fill,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.heightBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        userName.text.fontFamily(semibold).white.make(),
                        5.heightBox,
                        userMail.text.white.make(),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: whiteColor,
                      ),
                    ),
                    onPressed: () {},
                    child: logout.text.fontFamily(semibold).white.make(),
                  )
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCart(
                    width: context.screenWidth / 3.5,
                    count: "00",
                    title: yourCart),
                detailsCart(
                    width: context.screenWidth / 3.5,
                    count: "30",
                    title: YourWishlist),
                detailsCart(
                    width: context.screenWidth / 3.5,
                    count: "99",
                    title: yourOrder),
              ],
            ),
            20.heightBox,
            //Buttons section
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Divider(
                  color: lightGrey,
                );
              },
              itemCount: profileButtonsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(
                    profileButtonsIcon[index],
                    width: 22,
                    color: darkFontGrey,
                  ),
                  title: profileButtonsList[index]
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .make(),
                );
              },
            )
                .box
                .white
                .padding(EdgeInsets.symmetric(horizontal: 16))
                .margin(EdgeInsets.all(12))
                .shadowSm
                .roundedSM
                .make()
                .box
                .color(redColor)
                .make(),
          ],
        ),
      ),
    ));
  }
}
