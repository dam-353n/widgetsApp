import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String subtitle;
  final String imageUrl;

  SlideInfo({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
}

final slides = <SlideInfo>[
  SlideInfo(
      title: 'Busca la comida',
      subtitle: 'Encuentra la comida que más te guste',
      imageUrl: 'assets/images/1.png'),
  SlideInfo(
      title: 'Entrega rápida',
      subtitle: 'Entrega rápida y segura',
      imageUrl: 'assets/images/2.png'),
  SlideInfo(
      title: 'Disfruta la comida',
      subtitle: 'Disfruta la comida en la comodidad de tu hogar',
      imageUrl: 'assets/images/3.png'),
];

class OnboardingScreen extends StatefulWidget {
  static const name = 'onboarding_screen';
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return _onBoardingBody();
  }
}

class _onBoardingBody extends StatefulWidget {

  @override
  State<_onBoardingBody> createState() => _onBoardingBodyState();
}

class _onBoardingBodyState extends State<_onBoardingBody> {
  final PageController pageController = PageController();

  bool endReached = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageController.addListener(() {
      final page = pageController.page ?? 0;
      if (!endReached && page >= slides.length - 1.5) {
        setState(() {
          endReached = true;
        });
      }else{
        if(endReached && page < slides.length - 1.5){
          setState(() {
            endReached = false;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            children: slides.map((slideData) => _Slide(
              title: slideData.title,
              subtitle: slideData.subtitle,
              imageUrl: slideData.imageUrl,
            )).toList(),
          ),

          Positioned(
            right: 20,
            top:50,
            child: TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Salir'),
            )
          ),

          endReached ? Positioned(
            bottom: 30,
            right: 30,
            child: FilledButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Comenzar'),
            )
          ) : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final subtitleStyle = Theme.of(context).textTheme.bodyMedium;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imageUrl),
            const SizedBox(height: 20),
            Text(title, style: titleStyle, textAlign: TextAlign.center),
            const SizedBox(height: 10),
            Text(subtitle, style: subtitleStyle, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
