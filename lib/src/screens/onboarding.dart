import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_onboarding/flutter_onboarding.dart';
import 'package:shopliax_assessment/src/screens/homepage.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  List<IntroModel> pages(BuildContext context) {
    return [
      IntroModel(
        title: Text(
          'Welcome to SentientMate',
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        description: Text(
          'Meet your AI companions designed to provide companionship and support in a safe and welcoming space.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary, //TODO:
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        image: Image.asset(
          'assets/images/onboard1.png',
          fit: BoxFit.contain,
          height: MediaQuery.of(context).size.height * 0.5,
        ).animate().fadeIn().scale().move(
              delay: 800.ms,
              duration: 600.ms,
            ),
      ),
      IntroModel(
        title: Text(
          'Share and Connect',
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        description: Text(
          'Easily share your thoughts and images with your AI companions. Connect effortlessly with our advanced chat features.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        image: Image.asset(
          'assets/images/onboard2.png',
          fit: BoxFit.contain,
          height: MediaQuery.of(context).size.height * 0.5,
        ).animate().fadeIn().scale().move(
              delay: 800.ms,
              duration: 600.ms,
            ),
      ),
      IntroModel(
        title: Text(
          'Huddle Your Thoughts',
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        description: Text(
          'Use our Huddle feature to easily express your thoughts and feelings to your AI companions. SentientMate is here to listen and support you.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        image: Image.asset(
          'assets/images/onboard3.png',
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
              builder: (context) => const Homepage(),
            ),
          );
        },
      ),
    );
  }
}
