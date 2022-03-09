
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/home_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Welcome to crazy app',
            body: 'This is a crazy app for crazy developer',
            image: Center(child: Image.asset('',width: 350,),),
            footer: const Text('copyright rdewan.dev 2022',style: TextStyle(fontSize: 12.0,color: Colors.white, fontWeight: FontWeight.w300),),
            decoration: const PageDecoration(
              titleTextStyle: TextStyle(fontSize: 24.0,color: Colors.white, fontWeight: FontWeight.w700),
              bodyTextStyle: TextStyle(fontSize: 18.0,color: Colors.white,fontWeight: FontWeight.w300),
              pageColor: Colors.lightBlue,
              
            )
          ),
          PageViewModel(
            title: 'Crazy app for developer',
            body: 'Wonderful app for a developer. I makes you go crazy',
            image: Center(child: Image.asset('',width: 350,),),
            footer: const Text('copyright rdewan.dev 2022',style: TextStyle(fontSize: 12.0,color: Colors.white, fontWeight: FontWeight.w300),),
            decoration: const PageDecoration(
              titleTextStyle: TextStyle(fontSize: 24.0,color: Colors.white, fontWeight: FontWeight.w700),
              bodyTextStyle: TextStyle(fontSize: 18.0,color: Colors.white,fontWeight: FontWeight.w300),
              pageColor: Colors.lightGreen
            )
          ),
          PageViewModel(
            title: 'Developer gone crazy',
            body: 'Some of the developer gone crazy after using this app',
            image: Center(child: Image.asset('',width: 350,),),
            footer: ElevatedButton(
              style: raisedButtonStyle,
              onPressed: () { },
              child: const Text('Finish'),
            ),
            decoration: const PageDecoration(
              titleTextStyle: TextStyle(fontSize: 24.0,color: Colors.white, fontWeight: FontWeight.w700),
              bodyTextStyle: TextStyle(fontSize: 18.0,color: Colors.white,fontWeight: FontWeight.w300),
              pageColor: Colors.tealAccent
            )
          )

        ],
        next: const Icon(Icons.arrow_forward),
        done: const Text('Done',style: TextStyle(fontSize: 16.0,color: Colors.redAccent),),
        onDone: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const HomePage()),);
        },
        skipOrBackFlex: 0,
        nextFlex: 0,
        showSkipButton: true,
        skip: const Text('Skip'),
        dotsDecorator:  DotsDecorator(
          color: Colors.pink,
          activeColor: Colors.orange,
          size: const Size(12, 12),
          activeSize: const Size(24, 12),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0))

        ),
        globalBackgroundColor: Colors.greenAccent,
      ),
    );
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.orange[700],
    minimumSize: const Size(88, 36),
    padding:  const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
);
}