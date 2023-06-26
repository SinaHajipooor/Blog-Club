import 'package:flutter/material.dart';
import '../data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final deviceSize = MediaQuery.of(context).size;
    final stories = AppDatabase.stories;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hi Sina', style: themeData.textTheme.titleMedium),
                    Image.asset('assets/img/icons/notification.png', width: 24, height: 24),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
                child: Text(
                  "Explore today's",
                  style: themeData.textTheme.titleLarge,
                ),
              ),
              SizedBox(
                width: deviceSize.width,
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                  itemBuilder: (context, index) {
                    final story = stories[index];
                    return Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                              width: 68,
                              height: 68,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                gradient: const LinearGradient(begin: Alignment.topLeft, colors: [
                                  Color(0xff376AED),
                                  Color(0xff49B0E2),
                                  Color(0xff9CECFB),
                                ]),
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(19),
                                ),
                                padding: const EdgeInsets.all(4),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset('assets/img/stories/${story.imageFileName}'),
                                ),
                              ),
                            ),
                            Positioned(bottom: 0, right: 0, child: Image.asset('assets/img/icons/${story.iconFileName}', width: 24, height: 24))
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(story.name),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
