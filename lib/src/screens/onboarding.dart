import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_onboarding/flutter_onboarding.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopliax_assessment/src/screens/homepage.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  List<IntroModel> pages(BuildContext context) {
    return [
      IntroModel(
        title: Text(
          'Manage Your Tasks',
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        description: Text(
          'Easily create, organize, and track your daily tasks.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary, //TODO:
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        image: SvgPicture.asset(
          'assets/about-extra-1.svg',
          fit: BoxFit.contain,
          height: MediaQuery.of(context).size.height * 0.5,
        ).animate().fadeIn().scale().move(
              delay: 800.ms,
              duration: 600.ms,
            ),
      ),
      IntroModel(
        title: Text(
          'Api in a different Page',
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        description: Text(
          'Called an Api in a different Page, inorder to complete the assessment.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        image: SvgPicture.asset(
          'assets/about-extra-2.svg',
          fit: BoxFit.contain,
          height: MediaQuery.of(context).size.height * 0.5,
        ).animate().fadeIn().scale().move(
              delay: 800.ms,
              duration: 600.ms,
            ),
      ),
      IntroModel(
        title: Text(
          'Offline Access',
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        description: Text(
          'Access your tasks and photos even without an internet connection.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        image: SvgPicture.asset(
          'assets/about-img.svg',
          fit: BoxFit.contain,
          height: MediaQuery.of(context).size.height * 0.5,
        ).animate().fadeIn().scale().move(
              delay: 800.ms,
              duration: 600.ms,
            ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterOnBoarding(
        activeIndicatorSize: const Size(12, 40),
        doneButtonText: "Done with Onboarding",
        pages: pages(context),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        },
      ),
    );
  }
}
