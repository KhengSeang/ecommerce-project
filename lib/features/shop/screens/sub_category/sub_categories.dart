import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card.horizontal.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sport shirts'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              const TRoundedImage(
                width: double.infinity,
                imageUrl: TImages.promoBanner2,
                applyImageRadius: true,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //SubTitle
              Column(
                children: [
                  TSectionHeading(
                    //Heading
                    title: 'Sports shirt',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context,index) => const SizedBox(width: TSizes.spaceBtwItems,),
                      itemBuilder: (context,index) => const TProductCardHorizontal(),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
