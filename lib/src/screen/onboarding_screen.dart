import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_01/src/model/onboarding_model.dart';
import 'package:flutter_01/src/screen/categories_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var curentPage = 0;
  var pageviewController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    autoNextPage();
  }

  autoNextPage() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      if (curentPage < listOnboarding.length - 1) {
        setState(() {
          curentPage = curentPage + 1;
          if (curentPage == listOnboarding.length - 1) {
            Future.delayed(const Duration(seconds: 1), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesScreen()),
              );
            });
          }
        });
      }
      pageviewController.animateToPage(curentPage,
          duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      // }
    });
  }

  onPageChange(int index) {
    setState(() {
      curentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: listOnboarding.length,
              onPageChanged: (index) => onPageChange(index),
              controller: pageviewController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Container(
                        width: 220,
                        height: 92,
                        margin: const EdgeInsets.only(top: 40),
                        child: Text(
                          listOnboarding[index].title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: 330,
                        margin: const EdgeInsets.only(top: 10),
                        child: Image.asset(
                          listOnboarding[index].images,
                          height: 336,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        listOnboarding[index].description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFF838391),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  listOnboarding.length, (index) => buildDot(context, index)),
            ),
          ),
          curentPage == listOnboarding.length - 1
              ? Container(
                  margin: const EdgeInsets.all(40),
                  child: FloatingActionButton(
                      backgroundColor: Color(0xFF20C3AF),
                      child: const Icon(Icons.add),
                      onPressed: () {
                        if (curentPage == listOnboarding.length - 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoriesScreen()));
                        }
                      }),
                )
              : Container(
                  height: 60,
                  margin: const EdgeInsets.all(40),
                  width: double.infinity,
                  color: const Color(0xFF20C3AF),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF20C3AF),
                      onPrimary: Colors.white,
                    ),
                    child: Text("Next"),
                    onPressed: () {
                      if (curentPage == listOnboarding.length - 1) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoriesScreen()));
                      }
                      pageviewController.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn,
                      );
                    },
                  ),
                )
        ],
      ),
    );
  }

  Container buildDot(BuildContext context, int index) {
    return Container(
      height: 10,
      width: curentPage == index ? 20 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFB5C3C7),
      ),
    );
  }
}
