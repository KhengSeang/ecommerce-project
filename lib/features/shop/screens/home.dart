import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/widgets/home_categories.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //Header
          TPrimaryHeaderContainer(
              child: Column(
            children: [
              //Appbar
              THomeAppBar(),
              SizedBox(height: TSizes.spaceBtwSections),

              //Search bar
              TSearchContainerr(
                text: 'Search in Store',
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              //Catergories
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
              )
            ],
          ))
        ],
      ),
    ));
  }
}
