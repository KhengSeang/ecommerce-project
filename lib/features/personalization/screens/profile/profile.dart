import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/controllers/user_controller.dart';
import 'package:t_store/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:t_store/features/shop/screens/widgets/change_name.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
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
                  onPressed: () => Get.to(() => const ChangeName()),
                  title: 'Name',
                  value: controller.user.value.fullName,
                ),
                TProfileMenu(
                  onPressed: () {},
                  title: 'Username',
                  value: controller.user.value.username,
                ),

                const SizedBox(height: TSizes.spaceBtwItems / 2),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),

                //Heading Personal info
                const TSectionHeading(
                    title: 'Profile Infomation', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),

                TProfileMenu(
                  onPressed: () {},
                  title: 'User ID',
                  value: controller.user.value.id,
                ),
                TProfileMenu(
                    onPressed: () {},
                    title: 'Email',
                    value: controller.user.value.email),
                TProfileMenu(
                    onPressed: () {},
                    title: 'Phone Number',
                    value: controller.user.value.phoneNumber),
                TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
                TProfileMenu(
                    onPressed: () {},
                    title: 'Date of Birth',
                    value: '01 Jan 2025'),
                Center(
                  child: TextButton(
                      onPressed: () => controller.deleteAccountWarningPopup(),
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
