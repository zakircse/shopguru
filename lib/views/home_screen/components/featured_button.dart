import 'package:shopguru/consts/consts.dart';

Widget featuredButton({icon, String? title}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 60,
        fit: BoxFit.fill,
      ),
      10.heightBox,
      title!.text.color(darkFontGrey).fontFamily(semibold).make(),
    ],
  )
      .box
      .width(200)
      .margin(EdgeInsets.symmetric(horizontal: 4))
      .padding(EdgeInsets.all(4))
      .white
      .roundedSM
      .outerShadowSm
      .make();
}
