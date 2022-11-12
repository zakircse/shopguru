import 'package:shopguru/consts/consts.dart';
import 'package:shopguru/consts/lists.dart';
import 'package:shopguru/views/home_screen/components/featured_button.dart';
import 'package:shopguru/widgets_common/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: lightGrey,
        width: context.screenWidth,
        height: context.screenHeight,
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              height: 60,
              alignment: Alignment.center,
              color: lightGrey,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.search,
                    color: lightGrey,
                  ),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnything,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    //swipers brand
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        height: 150,
                        itemCount: slidersList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            slidersList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    10.heightBox,
                    //deal buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homeButtons(
                                width: context.screenWidth / 2.5,
                                height: context.screenHeight * .12,
                                icon: index == 0 ? icTodaysDeal : icFlashDeal,
                                title: index == 0 ? todayDeal : flashSale,
                              )),
                    ),
                    10.heightBox,
                    //2nd swipers
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        height: 150,
                        itemCount: slidersList2.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            slidersList2[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                          (index) => homeButtons(
                                width: context.screenWidth / 3.5,
                                height: context.screenHeight * .10,
                                icon: index == 0
                                    ? icTopCategories
                                    : index == 1
                                        ? icBrands
                                        : icTopSeller,
                                title: index == 0
                                    ? topCategories
                                    : index == 1
                                        ? brands
                                        : topSellers,
                              )),
                    ),
                    20.heightBox,
                    //featured categories
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategories.text
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .size(18)
                          .make(),
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    featuredButton(
                                        icon: featuredImages1[index],
                                        title: featuredTitles1[index]),
                                    10.heightBox,
                                    featuredButton(
                                        icon: featuredImages2[index],
                                        title: featuredTitles2[index]),
                                  ],
                                )).toList(),
                      ),
                    ),
                    //featured products
                    20.heightBox,
                    Container(
                      decoration: BoxDecoration(color: redColor),
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProduct.text
                              .fontFamily(bold)
                              .white
                              .size(18)
                              .make(),
                          10.heightBox,
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
                                            imgP1,
                                            width: 150,
                                            fit: BoxFit.fill,
                                          ),
                                          10.heightBox,
                                          "HP Probook 450 G1 8/256"
                                              .text
                                              .fontFamily(semibold)
                                              .color(darkFontGrey)
                                              .make(),
                                          10.heightBox,
                                          "\$400"
                                              .text
                                              .fontFamily(bold)
                                              .color(redColor)
                                              .size(16)
                                              .make(),
                                        ],
                                      )
                                          .box
                                          .margin(EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .white
                                          .roundedSM
                                          .padding(EdgeInsets.all(8))
                                          .make()),
                            ),
                          ),
                        ],
                      ),
                    ),
                    20.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        height: 150,
                        itemCount: slidersList3.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            slidersList3[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    //all products
                    20.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: allProduct.text
                          .fontFamily(bold)
                          .color(darkFontGrey)
                          .size(18)
                          .make(),
                    ),
                    20.heightBox,
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          mainAxisExtent: 300,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP1,
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                              Spacer(),
                              "HP Probook 450 G1 8/256"
                                  .text
                                  .fontFamily(semibold)
                                  .color(darkFontGrey)
                                  .make(),
                              10.heightBox,
                              "\$400"
                                  .text
                                  .fontFamily(bold)
                                  .color(redColor)
                                  .size(16)
                                  .make(),
                            ],
                          )
                              .box
                              .margin(EdgeInsets.symmetric(horizontal: 4))
                              .white
                              .roundedSM
                              .padding(EdgeInsets.all(12))
                              .make();
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
