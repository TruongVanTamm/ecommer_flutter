import 'package:card_swiper/card_swiper.dart';
import 'package:ecommer_flutter/constants/constants.dart';
import 'package:ecommer_flutter/constants/lists.dart';
import 'package:ecommer_flutter/widgets_common/applogo_widget.dart';
import 'package:ecommer_flutter/widgets_common/product_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Align(
          alignment: Alignment.center,
          child: applogoWidget(logo: icAppLogoBlack).box.size(83, 43).make(),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          color: Colors.white,
          width: context.screenWidth,
          height: context.screenHeight,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ConstrainedBox(
                    constraints:
                        BoxConstraints.loose(Size(context.screenWidth, 380.0)),
                    child: Transform.translate(
                      offset: const Offset(0, -20),
                      child: Swiper(
                        itemCount: homeSliderList.length,
                        itemBuilder: (itemBuilder, index) {
                          return Image.asset(
                            homeSliderList[index],
                            fit: BoxFit.fill,
                          ).box.clip(Clip.antiAlias).make();
                        },
                        itemWidth: context.screenWidth,
                        itemHeight: 340.0,
                        layout: SwiperLayout.CUSTOM,
                        customLayoutOption:
                            CustomLayoutOption(startIndex: -1, stateCount: 3)
                              ..addTranslate([
                                const Offset(-370.0, -40.0),
                                const Offset(0.0, 0.0),
                                const Offset(370.0, -40.0)
                              ]),
                        pagination: const SwiperPagination(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(top: 100),
                          builder: DotSwiperPaginationBuilder(
                              activeSize: 6,
                              size: 6,
                              color: Colors.grey,
                              activeColor: primaryColor),
                        ),
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    'BST MỚI NHẤT'.text.fontFamily(semibold).size(20).make(),
                    'Xem thêm'.text.fontFamily(regular).size(12).make(),
                  ],
                ),
                10.heightBox,
                RawScrollbar(
                  crossAxisMargin: -20,
                  thumbColor: greenColor,
                  radius: const Radius.circular(100),
                  thickness: 4,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            btsProducts.length,
                            (index) =>
                                ProductCard(product: btsProducts[index]))),
                  ),
                ),
                30.heightBox,
                Align(
                  alignment: Alignment.topLeft,
                  child:
                      'BEST CHOICES'.text.fontFamily(semibold).size(20).make(),
                ),
                10.heightBox,
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: bestChoiceProducts.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 305),
                  itemBuilder: (context, index) {
                    return ProductCard(
                        product: bestChoiceProducts[index], isMargin: false);
                  },
                ),
                Row(children: <Widget>[
                  Expanded(
                      child: Transform.translate(
                    offset: const Offset(0, 3.0),
                    child: const Divider(
                      indent: 100,
                      color: greyColor,
                    ),
                  )),
                  5.widthBox,
                  const Icon(
                    CupertinoIcons.rhombus,
                    color: greyColor,
                    size: 20,
                  ),
                  5.widthBox,
                  Expanded(
                      child: Transform.translate(
                    offset: const Offset(0, 3.0),
                    child: const Divider(endIndent: 100, color: greyColor),
                  )),
                ]),
                10.heightBox,
                Row(
                  children: <Widget>[
                    const Icon(Icons.local_phone_outlined, color: greyColor),
                    16.widthBox,
                    numberPhone.text
                        .fontFamily(regular)
                        .color(greyColor)
                        .size(16)
                        .make()
                  ],
                ),
                10.heightBox,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Icon(Icons.add_location_outlined, color: greyColor),
                    16.widthBox,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                            addressList.length,
                            (index) => addressList[index]
                                .text
                                .fontFamily(regular)
                                .color(greyColor)
                                .size(16)
                                .make()),
                      ),
                    ),
                  ],
                ),
                30.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      socialIconList2.length,
                      (index) => Container(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(
                            socialIconList2[index],
                            width: 24,
                            height: 24,
                          ))),
                ),
                130.heightBox,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
