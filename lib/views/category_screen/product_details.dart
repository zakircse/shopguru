import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopguru/consts/consts.dart';
import 'package:shopguru/consts/lists.dart';
import 'package:shopguru/widgets_common/custom_button.dart';

class ProductDetails extends StatelessWidget {
  final String? title;
  const ProductDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline,
                )),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //swiper section
                      VxSwiper.builder(
                          autoPlay: true,
                          height: 350,
                          aspectRatio: 16 / 9,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              imgP1,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            );
                          }),
                      10.heightBox,
                      //title and details section
                      title!.text
                          .color(darkFontGrey)
                          .fontFamily(semibold)
                          .size(16)
                          .make(),
                      10.heightBox,
                      VxRating(
                        onRatingUpdate: (value) {},
                        normalColor: textfieldGrey,
                        selectionColor: golden,
                        count: 5,
                        size: 25,
                        stepInt: true,
                      ),
                      10.heightBox,
                      "\$400"
                          .text
                          .color(redColor)
                          .fontFamily(bold)
                          .size(18)
                          .make(),
                      10.heightBox,
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Seller".text.white.fontFamily(semibold).make(),
                                5.heightBox,
                                "In House Brands"
                                    .text
                                    .color(darkFontGrey)
                                    .fontFamily(semibold)
                                    .size(16)
                                    .make(),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: whiteColor,
                            child: Icon(
                              Icons.message_rounded,
                              color: darkFontGrey,
                            ),
                          ),
                        ],
                      )
                          .box
                          .height(60)
                          .padding(EdgeInsets.symmetric(horizontal: 16))
                          .color(textfieldGrey)
                          .make(),
                      //color section
                      20.heightBox,
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child:
                                    "Color: ".text.color(textfieldGrey).make(),
                              ),
                              Row(
                                children: List.generate(
                                    3,
                                    (index) => VxBox()
                                        .size(40, 40)
                                        .roundedFull
                                        .color(Vx.randomPrimaryColor)
                                        .margin(
                                            EdgeInsets.symmetric(horizontal: 6))
                                        .make()),
                              ),
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),
                          //quantity row
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Quantity: "
                                    .text
                                    .color(textfieldGrey)
                                    .make(),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.remove),
                                  ),
                                  "0"
                                      .text
                                      .color(darkFontGrey)
                                      .size(16)
                                      .fontFamily(bold)
                                      .make(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                  ),
                                  10.widthBox,
                                  "(0) available"
                                      .text
                                      .color(textfieldGrey)
                                      .make(),
                                ],
                              ),
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),
                          Container(
                            color: Colors.orangeAccent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child:
                                      "Total: ".text.color(darkFontGrey).make(),
                                ),
                                "\$0.00"
                                    .text
                                    .color(redColor)
                                    .fontFamily(bold)
                                    .size(16)
                                    .make(),
                              ],
                            ).box.padding(EdgeInsets.all(8)).make(),
                          )
                        ],
                      ).box.white.shadowSm.make(),
                      //description section
                      10.heightBox,
                      "Description"
                          .text
                          .color(darkFontGrey)
                          .size(16)
                          .fontFamily(semibold)
                          .make(),
                      5.heightBox,
                      "HP Spectre".text.color(darkFontGrey).make(),
                      5.heightBox,
                      "RAM: 8 GB, ROM: 256 GB".text.color(darkFontGrey).make(),
                      5.heightBox,
                      "14\" Display".text.color(darkFontGrey).make(),
                      5.heightBox,
                      Align(
                        alignment: Alignment.centerRight,
                        child: "View More".text.color(darkFontGrey).make(),
                      ),
                      10.heightBox,
                      //Buttons section
                      ListView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: List.generate(
                          productDetailButtonList.length,
                          (index) => ListTile(
                            title: productDetailButtonList[index]
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            trailing: Icon(
                              Icons.arrow_forward,
                            ),
                          ),
                        ),
                      ),
                      //product you like
                      20.heightBox,
                      productULike.text
                          .fontFamily(bold)
                          .size(16)
                          .color(darkFontGrey)
                          .make(),
                      10.heightBox,
                      //this widget is from home screen featured products
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                              6,
                              (index) => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        featuredProductImages[index],
                                        width: 150,
                                        fit: BoxFit.fill,
                                      ),
                                      10.heightBox,
                                      featuuredProductTitles[index]
                                          .text
                                          .fontFamily(semibold)
                                          .color(darkFontGrey)
                                          .make(),
                                      10.heightBox,
                                      featuredProductPrices[index]
                                          .text
                                          .fontFamily(bold)
                                          .color(redColor)
                                          .size(16)
                                          .make(),
                                    ],
                                  )
                                      .box
                                      .margin(
                                          EdgeInsets.symmetric(horizontal: 4))
                                      .white
                                      .roundedSM
                                      .padding(EdgeInsets.all(8))
                                      .make()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 60,
                  width: context.screenWidth / 2.2,
                  child: customButton(
                    color: redColor,
                    textColor: whiteColor,
                    title: "Add to Cart",
                    onPress: () {},
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: context.screenWidth / 2.2,
                  child: customButton(
                    color: Colors.orange,
                    textColor: whiteColor,
                    title: "Buy Now",
                    onPress: () {},
                  ),
                ),
              ],
            ),
            10.heightBox,
          ],
        ),
      ),
    );
  }
}
