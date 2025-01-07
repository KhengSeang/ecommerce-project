import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
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
          TPrimaryHeaderContainer(
              child: Column(
            children: [
              ///Appbar
              const THomeAppBar(),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Search bar
              const TSearchContainerr(
                text: 'Search in Store',
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Catergories
              Padding(
                padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                child: Column(
                  children: [
                    //Heading
                    TSectionHeading(
                      title: 'Popular Catergories',
                      onPressed: (){},
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    //Category
                    const THomeCategories()
                  ],
                ),
              )
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
