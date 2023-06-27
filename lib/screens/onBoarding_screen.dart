import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sevenlearn/data/data.dart';
import 'package:sevenlearn/gen/assets.gen.dart';
import 'package:sevenlearn/screens/root_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  final onBoardingItems = AppDatabase.onBoardingItems;
  int _pageNumber = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      if (_pageController.page!.round() != _pageNumber) {
        setState(() {
          _pageNumber = _pageController.page!.round();
        });
      }
    });
    super.initState();
  }

  void _changePageHandler() {
    if (_pageNumber == onBoardingItems.length - 1) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const RootScreen()));
    } else {
      _pageController.animateToPage(_pageNumber + 1, duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: themeData.colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 8),
                child: Assets.img.background.onboarding.image(),
              ),
            ),
            Container(
              height: 260,
              decoration: BoxDecoration(
                color: themeData.colorScheme.surface,
                boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.1))],
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: PageView.builder(
                        itemCount: onBoardingItems.length,
                        controller: _pageController,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Text(
                                onBoardingItems[index].title,
                                style: themeData.textTheme.titleLarge,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                onBoardingItems[index].description,
                                style: themeData.textTheme.bodySmall,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      height: 60,
                      padding: const EdgeInsets.only(left: 32, right: 32, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmoothPageIndicator(
                            controller: _pageController,
                            count: onBoardingItems.length,
                            effect: ExpandingDotsEffect(
                              activeDotColor: themeData.colorScheme.primary,
                              dotColor: themeData.colorScheme.primary.withOpacity(0.1),
                              dotWidth: 8,
                              dotHeight: 8,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () => _changePageHandler(),
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(const Size(84, 60)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            child: Icon(
                              _pageNumber == onBoardingItems.length - 1 ? CupertinoIcons.check_mark : CupertinoIcons.arrow_right,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
