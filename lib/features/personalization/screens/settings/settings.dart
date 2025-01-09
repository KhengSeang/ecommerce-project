import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/list_tiles/settings_menu_tiles.dart';
import 'package:t_store/common/widgets/list_tiles/user_profile_tiles.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/address/address.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/features/shop/screens/cart/cart.dart';
import 'package:t_store/features/shop/screens/order/order.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                TAppBar(
                  title: Text('Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white)),
                ),

                //User Profile Card
                TUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Account Settings
                const TSectionHeading(
                  title: 'Account Settings',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),

                TSettingMenuTile(
                  icon: Iconsax.safe_home,
                  title: 'My Addresses',
                  subTitle: 'Set Shopping Delivery Address',
                  onTap: () => Get.to(() => const UserAddressScreen()),
                ),
                TSettingMenuTile(
                  icon: Iconsax.shopping_cart,
                  title: 'My Cart',
                  subTitle: 'Add, Remove Products And Move To Checkout',
                  onTap: () => Get.to(() => const CartScreen()),
                ),
                TSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-Progress And Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen())),
                TSettingMenuTile(
                  icon: Iconsax.bank,
                  title: 'Bank Account',
                  subTitle: 'Withdraw Balance To Registered Bank Account',
                  onTap: () {},
                ),
                TSettingMenuTile(
                  icon: Iconsax.discount_shape,
                  title: 'My Coupons',
                  subTitle: 'List Of All The Discounted Coupons',
                  onTap: () {},
                ),
                TSettingMenuTile(
                  icon: Iconsax.notification,
                  title: 'Notifications',
                  subTitle: 'Set Any Kind Of Notification Message',
                  onTap: () {},
                ),
                TSettingMenuTile(
                  icon: Iconsax.security_card,
                  title: 'Account Privacy',
                  subTitle: 'Manage Data Usage And Connected Accounts',
                  onTap: () {},
                ),

                //App Setting
                const SizedBox(height: TSizes.spaceBtwSections),
                const TSectionHeading(
                  title: 'App Setting',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                TSettingMenuTile(
                  icon: Iconsax.document_upload,
                  title: 'Load Data',
                  subTitle: 'Upload Data To Your Cloud Firebase',
                  onTap: () {},
                ),
                TSettingMenuTile(
                  icon: Iconsax.location,
                  title: 'Geolocation',
                  subTitle: 'Set Recommendation based on location',
                  onTap: () {},
                  trialing: Switch(value: false, onChanged: (value) {}),
                ),
                TSettingMenuTile(
                  icon: Iconsax.security_user,
                  title: 'Safe Mode',
                  subTitle: 'Search Result Is Safe For All Ages',
                  onTap: () {},
                  trialing: Switch(value: false, onChanged: (value) {}),
                ),
                TSettingMenuTile(
                  icon: Iconsax.image,
                  title: 'HD Images Quality',
                  subTitle: 'Set Image Quality To Be Seen',
                  onTap: () {},
                  trialing: Switch(value: false, onChanged: (value) {}),
                ),

                //Logout Button
                const SizedBox(height: TSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Logout'),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwSections / 2),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
