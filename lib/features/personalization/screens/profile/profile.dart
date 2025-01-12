import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      //Body
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Profile Picture
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const TCircularImage(
                        image: TImages.user,
                        width: 80,
                        height: 80,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture'),
                      ),
                    ],
                  ),
                ),

                //Details
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),

                //Heading Profile Info
                const TSectionHeading(
                    title: 'Profile Infomation', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),

                TProfileMenu(
                  onPressed: () {},
                  title: 'Name',
                  value: 'Example',
                ),
                TProfileMenu(
                  onPressed: () {},
                  title: 'Username',
                  value: 'Another Example',
                ),

                const SizedBox(height: TSizes.spaceBtwItems / 2),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),

                //Heading Personal info
                const TSectionHeading(
                    title: 'Profile Infomation', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),

                TProfileMenu(
                    onPressed: () {}, title: 'User ID', value: '43567'),
                TProfileMenu(
                    onPressed: () {},
                    title: 'Email',
                    value: 'Example@gmail.com'),
                TProfileMenu(
                    onPressed: () {},
                    title: 'Phone Number',
                    value: '+93-317-8059528'),
                TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
                TProfileMenu(
                    onPressed: () {},
                    title: 'Date of Birth',
                    value: '01 Jan 2025'),
                Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Close Account',
                        style: TextStyle(color: Colors.red),
                      )),
                )
              ],
            )),
      ),
    );
  }
}
