import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mindto/design/app_colors.dart';
import 'package:mindto/features/onboarding/ui/widgets/page_views.dart';
import 'package:onboarding/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late int index;
  final activePainter = Paint();
  final inactivePainter = Paint();

  static const width = 100.0;
  @override
  void initState() {
    super.initState();
    index = 0;
    activePainter.color = Colors.white;
    activePainter.strokeWidth = 1;
    activePainter.strokeCap = StrokeCap.round;
    activePainter.style = PaintingStyle.fill;

    inactivePainter.color = pageImageColor;
    inactivePainter.strokeWidth = 1;
    inactivePainter.strokeCap = StrokeCap.round;
    inactivePainter.style = PaintingStyle.stroke;
  }

  SizedBox get _signinButton {
    return SizedBox(
      width: width,
      child: Align(
        alignment: Alignment.centerRight,
        child: Material(
          borderRadius: signinButtonBorderRadius,
          color: signinButtonColor,
          child: InkWell(
            borderRadius: signinButtonBorderRadius,
            onTap: () {
              context.go('/auth');
            },
            child: const Padding(
              padding: signinButtonPadding,
              child: Text(
                'Sign in',
                style: signinButtonTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _skipButton({void Function(int)? setIndex}) {
    return SizedBox(
      width: width,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Material(
          borderRadius: defaultSkipButtonBorderRadius,
          color: defaultSkipButtonColor,
          child: InkWell(
            borderRadius: defaultSkipButtonBorderRadius,
            onTap: () {
              if (setIndex != null) {
                index = 3;
                setIndex(3);
              }
            },
            child: const Padding(
              padding: defaultSkipButtonPadding,
              child: Text(
                'Skip',
                style: defaultSkipButtonTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox get _signupButton {
    return SizedBox(
      width: width,
      child: Align(
        alignment: Alignment.centerRight,
        child: Material(
          borderRadius: defaultProceedButtonBorderRadius,
          color: defaultProceedButtonColor,
          child: InkWell(
            borderRadius: defaultProceedButtonBorderRadius,
            onTap: () {},
            child: const Padding(
              padding: defaultProceedButtonPadding,
              child: Text(
                'Sign up',
                style: defaultProceedButtonTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Onboarding(
          swipeableBody: onboardingPagesList,
          startIndex: 0,
          onPageChanges: (_, __, currentIndex, sd) {
            index = currentIndex;
          },
          buildFooter:
              (context, dragDistance, pagesLength, currentIndex, setIndex, sd) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: background,
                border: Border.all(
                  width: 0.0,
                  color: background,
                ),
              ),
              child: ColoredBox(
                color: background,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      index != pagesLength - 1
                          ? _skipButton(setIndex: setIndex)
                          : const SizedBox(width: width),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 10, right: 80),
                          alignment: Alignment.centerLeft,
                          child: Indicator<TrianglePainter>(
                            painter: TrianglePainter(
                              currentPageIndex: currentIndex,
                              pagesLength: pagesLength,
                              netDragPercent: dragDistance,
                              activePainter: activePainter,
                              inactivePainter: inactivePainter,
                              slideDirection: sd,
                              showAllActiveIndicators: false,
                            ),
                          ),
                        ),
                      ),
                      index != pagesLength - 1 ? _signupButton : _signinButton,
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
