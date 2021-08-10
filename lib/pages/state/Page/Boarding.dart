import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pacivic/pages/home/Home.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoarding();
  }
}

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Step one",
              body: " Kamu akan mengenal penjelajahan yang luar biasa.",
              image: Image.asset("assets/images/clip-travel.png"),
            ),
            PageViewModel(
              title: "Step two",
              body:
                  "Kamu bisa membangun ekspresimu dengan apa yang kamu sukai.",
              image: Image.asset("assets/images/clip.png"),
            ),
            PageViewModel(
              title: "Step three",
              body:
                  "Kamu dijamin jauh dari lokasi perkotaan dan ini membuatmu seru.",
              image: Image.asset("assets/images/clip-order-complete-1.png"),
            ),
            PageViewModel(
              title: "Finish",
              body:
                  "Yes, kamu sekarang punya cerita dan moment berharga di hidupmu.",
              image: Image.asset("assets/images/clip-message-sent-1.png"),
            ),
          ],
          onDone: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => PageHome()));
          },
          //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
          showSkipButton: true,
          skipFlex: 0,
          nextFlex: 0,
          skip: const Text(
            'Skip',
            style: TextStyle(
              fontFamily: "Poppins-B",
              color: Colors.black45,
            ),
          ),
          next: const Icon(
            Icons.play_circle_outline,
            color: Colors.amber,
          ),
          done: const Text(
            'Done',
            style: TextStyle(
              fontFamily: "Poppins-B",
              color: Colors.amber,
            ),
          ),
          dotsDecorator: const DotsDecorator(
            size: Size(20.0, 5.0),
            color: Colors.grey,
            activeSize: Size(22.0, 10.0),
            activeColor: Colors.amberAccent,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
        ),
      );
}
