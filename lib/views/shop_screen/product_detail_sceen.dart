import 'package:card_swiper/card_swiper.dart';
import 'package:ecommer_flutter/constants/constants.dart';
import 'package:ecommer_flutter/model/product_detail_model.dart';
import 'package:ecommer_flutter/views/home_screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatelessWidget {
  final ProductDetail detail;

  const ProductDetailScreen({Key? key, required this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Wrap(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.keyboard_arrow_left_outlined),
                  onPressed: () {
                    Get.to(() => const Home());
                  },
                ),
                Container(
                    padding: const EdgeInsets.only(right: 26),
                    child:
                        shop.text.black.fontFamily(semibold).size(16).make()),
                10.widthBox,
              ],
            ),
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.white,
              width: context.screenWidth,
              height: context.screenHeight,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ConstrainedBox(
                        constraints: BoxConstraints.loose(
                            Size(context.screenWidth, 380.0)),
                        child: Transform.translate(
                          offset: const Offset(0, -20),
                          child: Swiper(
                            itemCount: detail.imageUrl.length,
                            itemBuilder: (itemBuilder, index) {
                              return Image.asset(
                                detail.imageUrl[index],
                                fit: BoxFit.fill,
                              ).box.clip(Clip.antiAlias).make();
                            },
                            itemWidth: context.screenWidth,
                            itemHeight: 340.0,
                            layout: SwiperLayout.CUSTOM,
                            customLayoutOption: CustomLayoutOption(
                                startIndex: -1, stateCount: 3)
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
                      children: List.generate(
                          detail.categories.length,
                          (index) => detail.categories[index].text.black
                              .fontFamily(bold)
                              .size(20)
                              .make()),
                    ),
                    detail.name.text.black.fontFamily(regular).size(16).make(),
                    detail.price.text.black
                        .fontFamily(bold)
                        .color(primaryColor)
                        .size(18)
                        .make(),
                    130.heightBox,
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
