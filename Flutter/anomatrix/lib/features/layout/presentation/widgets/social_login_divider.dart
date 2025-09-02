import 'package:anomatrix/core/utils/color/color_manager.dart';
import 'package:anomatrix/core/utils/strings/app_strings.dart';
import 'package:flutter/material.dart';

class SocialLoginDivider extends StatelessWidget {
  final VoidCallback onGoogleTap;
  final VoidCallback onFacebookTap;
  final VoidCallback onTwitterTap;

  const SocialLoginDivider({
    Key? key,
    required this.onGoogleTap,
    required this.onFacebookTap,
    required this.onTwitterTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildDividerRow(),
        const SizedBox(height: 24),
        buildSocialIconsRow(),
      ],
    );
  }

  Widget buildDividerRow() {
    return Row(
      children: [
        const Expanded(child: Divider(thickness: 2, color: ColorManager.maincolor)),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            AppStrings.orLoginWith,
            style: TextStyle(
              color: ColorManager.maincolor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const Expanded(child: Divider(thickness: 2, color: ColorManager.maincolor)),
      ],
    );
  }

  Widget buildSocialIconsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildSocialIcon('assets/images/google-logo.png', onTap: onGoogleTap),
        const SizedBox(width: 20),
        buildSocialIcon('assets/images/Faebook-logo.png', onTap: onFacebookTap),
        const SizedBox(width: 20),
        buildSocialIcon(
          'assets/images/twitter-logo (1).png',
          onTap: onTwitterTap,
        ),
      ],
    );
  }

  Widget buildSocialIcon(String imagePath, {required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 22,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
