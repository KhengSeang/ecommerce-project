import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/personalization/controllers/update_name_controller.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/validators/validation.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            'Change Name',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          body: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'User real name for verification',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                Form(
                    key: controller.updateUserNameFormKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: controller.firstName,
                          validator: (value) =>
                              TValidator.validatEmptyText('First Name', value),
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: TTexts.lastName,
                              prefixIcon: Icon(Iconsax.user)),
                        )
                      ],
                    )),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => controller.UpdateUserName(),
                      child: const Text('save')),
                )
              ],
            ),
          )),
    );
  }
}
