import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:music_spotify/core/config/assets/app_images.dart';
import 'package:music_spotify/core/config/assets/app_vectors.dart';
import 'package:music_spotify/core/config/theme/app_colors.dart';
import 'package:music_spotify/presentation/choose_mode/pages/choose_mode.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introBg),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SvgPicture.asset(AppVectors.logo),
                  const Spacer(),
                  const Text(
                    "Enjoy Listening To Music",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Play millions of songs and podcasts on your device",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  BasicAppButton(
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChooseMode(),
                          ),
                        );
                      },
                      title: "Get Started")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
