import 'package:e_commerce_app/screens/sign_in/sign_in_screen.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../screens/splash/components/splash_content.dart';
import 'package:e_commerce_app/size_config.dart';

import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> pageViewData = [
    {
      'text': 'Welcome to Tokyo, lets shop!',
      'image': 'assets/images/splash_1.png'
    },
    {
      'text':
          'We help people contact with stores \naround United states of Amirica',
      'image': 'assets/images/splash_2.png'
    },
    {
      'text': 'show the easy way to shop.\njust stay at home with us',
      'image': 'assets/images/splash_3.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: pageViewData.length,
                itemBuilder: (context, index) {
                  return SplashContent(
                    image: pageViewData[index]['image'],
                    text: pageViewData[index]['text'],
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(pageViewData.length,
                          (index) => buildDot(index: index)).toList(),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    DefaultButton(
                      text: 'Continue',
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0XFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
