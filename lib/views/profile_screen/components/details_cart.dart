import 'package:shopguru/consts/consts.dart';

Widget detailsCart({width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).color(darkFontGrey).size(18).make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make(),
    ],
  )
      .box
      .roundedSM
      .white
      .width(width)
      .height(80)
      .padding(EdgeInsets.all(4))
      .make();
}
