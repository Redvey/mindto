import 'package:flutter/material.dart';
import 'package:mindto/design/app_colors.dart';

final onboardingPagesList = [
  DecoratedBox(
    decoration: BoxDecoration(
      color: background,
      border: Border.all(
        width: 0.0,
        color: background,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 350,
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Image.asset(
            'assets/images/pic_1.png',
          ),
        ),
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'SECURE IT SOLUTIONS',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    'We provide a secure network and data management solutions. We handle all the networking and IT side of your business and let you worry about running your actual business',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
  DecoratedBox(
    decoration: BoxDecoration(
      color: background,
      border: Border.all(
        width: 0.0,
        color: background,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 350,
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Image.asset(
            'assets/images/pic_2.png',
          ),
        ),
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'BUSINESS NETWORK SOLUTIONS',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    'We provide a scalable, reliable, and cost-effective network solutions to 100s of businesses in the DMV area.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: Text(
                    'We set up business networks, VPNs, IP cameras, on-site server, etc for a fraction of the cost most IT companies charge',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
  DecoratedBox(
    decoration: BoxDecoration(
      color: background,
      border: Border.all(
        width: 0.0,
        color: background,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 350,
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Image.asset(
            'assets/images/pic_3.png',
          ),
        ),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'STORAGE & BACKUP SOLUTIONS',
                  style: pageTitleStyle,
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  'As the integrity and value of your company\'s data is most vital, we offer a multitude of solutions in safekeeping, managing, storing, and backing up your data.',
                  style: pageInfoStyle,
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Text(
                  'Whether you choose an on-site or remote storage solutions, we\'ll help you pick and setup the best choice',
                  style: pageInfoStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
  DecoratedBox(
    decoration: BoxDecoration(
      color: background,
      border: Border.all(
        width: 0.0,
        color: background,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 350,
          child: Image.asset(
            'assets/images/pic_4.png',
          ),
        ),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'WEBSITES & APPS DEVELOPMENT',
                  style: pageTitleStyle,
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  'We\'ll build and maintain all your websites and mobile applications. Weather you\'re running a real estate business, consulting, e-commerce, etc, we\'ve got you covered.',
                  style: pageInfoStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
];
