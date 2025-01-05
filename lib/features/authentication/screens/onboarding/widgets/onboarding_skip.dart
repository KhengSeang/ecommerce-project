import 'package:flutter/material.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/device/device.utility.dart';


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSize.defaultSpace,
      child: TextButton(
        onPressed: (){},
        child: const Text('Skip'),
      ),
    );
  }
}