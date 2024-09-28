import 'package:cofee_shop/common/app-colors.dart';
import 'package:cofee_shop/common/app-font.dart';
import 'package:cofee_shop/common/app-icons.dart';
import 'package:cofee_shop/common/app-images.dart';
import 'package:cofee_shop/widget/carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductModel {
  late String image;
  late String name;
  late String price;
  late String desc = '';
  ProductModel(
      {required this.name,
      required this.image,
      required this.price,
      required this.desc});
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> banner = [
    AppImages.banner2,
    AppImages.banner1,
    AppImages.banner3
  ];

  List<ProductModel> topSale = [
    ProductModel(
        name: 'Processor',
        image: AppImages.processor,
        price: 'IQD 250000',
        desc: ''),
    ProductModel(
        name: 'VGA card', image: AppImages.vga, price: 'IQD 534000', desc: ''),
    ProductModel(
        name: 'Motherboard',
        image: AppImages.mobo,
        price: 'IQD 245000',
        desc: ''),
    ProductModel(
        name: 'RAM', image: AppImages.ram, price: 'IQD 679000', desc: ''),
  ];

  List<ProductModel> allProduct = [
    ProductModel(
        name: 'Processor',
        image: AppImages.processor,
        price: 'IQD 250000',
        desc: 'Intel® Core™ 14th gen processors advances performance'),
    ProductModel(
        name: 'VGA card',
        image: AppImages.vga,
        price: 'IQD 534000',
        desc: 'Intel® Core™ 14th gen processors advances performance'),
    ProductModel(
        name: 'Motherboard',
        image: AppImages.mobo,
        price: 'IQD 245000',
        desc: 'Intel® Core™ 14th gen processors advances performance'),
    ProductModel(
        name: 'RAM',
        image: AppImages.ram,
        price: 'IQD 679000',
        desc: 'Intel® Core™ 14th gen processors advances performance'),
    ProductModel(
        name: 'Casing',
        image: AppImages.casePc,
        price: 'IQD 279000',
        desc: 'Intel® Core™ 14th gen processors advances performance'),
  ];
  int position = 0; //HERE

  @override
  Widget build(BuildContext context) {
    Widget myCircle(int p) {
      return position == p
          ? Container(
              height: 15,
              width: 55,
              decoration: BoxDecoration(
                color: position == p
                    ? AppColors.mainBaseColor
                    : Colors.grey.shade300,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            )
          : Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: position == p
                    ? AppColors.mainBaseColor
                    : Colors.grey.shade300,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            );
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.backgroundColor,
            foregroundColor: AppColors.backgroundColor,
            elevation: 0,
            pinned: false,
            centerTitle: false,
            stretch: false,
            expandedHeight: 0,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [StretchMode.zoomBackground],
              background: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Good Morning',
                          style: primaryTextStyle.copyWith(
                            fontSize: size14,
                            fontWeight: bold500,
                          ),
                        ),
                        Text(
                          'Murtadha Hamid',
                          style: blackTextStyle.copyWith(
                            fontSize: size16,
                            fontWeight: bold700,
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      child: SvgPicture.asset(
                        AppIcons.troli,
                        height: 24,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverAppBar(
            backgroundColor: AppColors.backgroundColor,
            foregroundColor: AppColors.backgroundColor,
            surfaceTintColor: AppColors.backgroundColor,
            elevation: 0,
            pinned: true,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(10),
              child: SizedBox(),
            ),
            flexibleSpace: Padding(
              padding: EdgeInsets.only(top: 40, left: 26, right: 26),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.whiteColor,
                    contentPadding: const EdgeInsets.only(top: 10, left: 10),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: AppColors.whiteColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.whiteColor,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Padding(
                      padding:
                          const EdgeInsets.only(top: 19, left: 10, bottom: 19),
                      child: SvgPicture.asset(
                        AppIcons.searchNormal,
                        height: 20,
                        color: AppColors.blackColor,
                      ),
                    ),
                    suffixIcon: const Padding(
                      padding: EdgeInsets.only(top: 19, right: 10, bottom: 19),
                      child: Image(
                        image: AssetImage(AppImages.microfone),
                        height: 20,
                      ),
                    ),
                    hintText: 'Search',
                    hintStyle: tertiaryTextStyle.copyWith(fontSize: size16),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 170.0,
                  child: PageView.builder(
                    onPageChanged: (pageposition) {
                      setState(
                        () {
                          position = pageposition;
                        },
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: banner.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            width: 380,
                            child: Image(
                              image: AssetImage(banner[index]),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myCircle(0),
                    const SizedBox(
                      width: 10,
                    ),
                    myCircle(1),
                    const SizedBox(
                      width: 10,
                    ),
                    myCircle(2),
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 24),
                  child: Text(
                    'Top Sale',
                    style: blackTextStyle.copyWith(
                      fontSize: size18,
                      fontWeight: bold700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 210.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: topSale.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(top: 20, left: 24),
                        decoration: const BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        width: 155,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              height: 130,
                              width: 155,
                              child: Image(
                                image: AssetImage(topSale[index].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        topSale[index].name,
                                        style: blackTextStyle.copyWith(
                                          fontSize: 14,
                                          fontWeight: bold700,
                                        ),
                                      ),
                                      Text(
                                        topSale[index].price,
                                        style: blackTextStyle.copyWith(
                                          fontSize: 12,
                                          fontWeight: bold500,
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      color: AppColors.mainBaseColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    height: 35,
                                    width: 35,
                                    child: const Center(
                                      child: Icon(
                                        Icons.add,
                                        color: AppColors.whiteColor,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 24),
              child: Text(
                'All Product',
                style: blackTextStyle.copyWith(
                  fontSize: size18,
                  fontWeight: bold700,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(top: 20, left: 24, right: 24),
                  decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage(allProduct[index].image),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                allProduct[index].name,
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold700,
                                ),
                              ),
                              Text(
                                allProduct[index].desc,
                                style: blackTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: bold500,
                                ),
                                softWrap: true,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                allProduct[index].price,
                                style: blackTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: bold500,
                                ),
                                softWrap: true,
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: AppColors.mainBaseColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: 35,
                          width: 35,
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: AppColors.whiteColor,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
