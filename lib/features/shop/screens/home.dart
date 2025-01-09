import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/all_products/all_product.dart';
import 'package:t_store/features/shop/screens/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //Header
          const TPrimaryHeaderContainer(
              child: Column(
            children: [
              ///Appbar
              THomeAppBar(),
              SizedBox(height: TSizes.spaceBtwSections),

              ///Search bar
              TSearchContainer(
                text: 'Search in Store',
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              ///Catergories
              Padding(
                padding: EdgeInsets.only(left: TSizes.defaultSpace),
                child: Column(
                  children: [
                    //Heading
                    TSectionHeading(
                      title: 'Popular Catergories',
                      showActionButton: false,
                      textColor: Colors.white,
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //Category
                    THomeCategories()
                  ],
                ),
              ),
              SizedBox(height: TSizes.spaceBtwSections),
            ],
          )),

          ///Body
          Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Promo Slider
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProduct()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //Popular Product
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}
