
import 'package:flutter/material.dart';
//mport 'package:flutter/src/material/elevated_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen(Set set, {Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemBuilder: (context, index) => const OnboardContent(
                  image: "images/oturan_akay.png",
                  title: "introduction 1",
                  description: 
                      "Tanıtımın detayları burada olacak, daha az vurgulu görünecek.",
                ), 
              ),
            ),
            SizedBox(
              height: 60, 
              width: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
                onPressed: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                    );
                },
                child: Image.asset("images/right-arrow-svgrepo-com.svg",
                 color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title, 
    required this.description,
    });
}

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
        image,
        //"images/oturan_akay.png",
        width: 300,
        height: 150,
        fit: BoxFit.fill
        ),
        const Spacer(),
        Text(
        title,
        //"introduction 1",
        textAlign: TextAlign.center,
        style: Theme.of(context)
        .textTheme
        .headline5!
        .copyWith(fontWeight: FontWeight.w500),
        //theme of context ile başlayan yer metnin boyutunu ayarlamaya yarar.
        ),
        const SizedBox(height: 16),
        Text(
        description,
          //"Tanıtımın detayları burada olacak, daha az vurgulu görünecek.",
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        
      ]
    );
  }
}