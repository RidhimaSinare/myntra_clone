import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import 'textpart.dart';

class Insider_Page extends StatefulWidget {
  const Insider_Page({super.key});

  @override
  State<Insider_Page> createState() => _Insider_PageState();
}

class _Insider_PageState extends State<Insider_Page> {
  late ConfettiController _confettiController;
  late AnimationController _controller;
  bool selected = true;
  bool opaque = true;
  @override
  void getstate() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timer.tick == 3) {
        timer.cancel();
        setState(() {
          selected = false;
        });
      }
    });

    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timer.tick == 4) {
        timer.cancel();
        setState(() {
          opaque = false;
        });
      }
    });
  }

  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 2));
    _confettiController.play();
    getstate();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'MYNTRA INSIDER',
          style:
              TextStyle(color: Color(0xFF3A3B3C), fontWeight: FontWeight.w500),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Container(
            color: Colors.black,
            child: Center(
              child: Stack(children: [
                Center(
                  child: AnimatedAlign(
                    alignment:
                        selected ? Alignment.center : Alignment.topCenter,
                    duration: const Duration(seconds: 1),
                    curve: Curves.linear,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.3,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            const Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.crown,
                                      color: Color(0xFFFFD700),
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'insider',
                                      style: TextStyle(
                                          color: Color(0xFFFFD700),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  'An Invite-Only Loyalty Program',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                                Text(
                                  'Welcome, Name',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                                Text(
                                  "You've been invited to a 3-month free trial to",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                                Text("Myntra Select Insider",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                    child: Align(
                  alignment: Alignment(-2.0, 0.25),
                  child: AnimatedOpacity(
                    opacity: opaque ? 0 : 1,
                    duration: Duration(seconds: 1),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.5,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 40.0, right: 40.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Benefits of Becoming A Select Insider",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextPart(
                                icon: FontAwesomeIcons.truck,
                                text1: "Free Shipping ",
                                text2: "on all orders",
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextPart(
                                  icon: FontAwesomeIcons.circle,
                                  text1: "Get Early Access ",
                                  text2: "to sales & events"),
                              SizedBox(
                                height: 15,
                              ),
                              TextPart(
                                  icon: FontAwesomeIcons.coins,
                                  text1: "Earn SuperCoins ",
                                  text2: "with every purchase"),
                              SizedBox(
                                height: 15,
                              ),
                              TextPart(
                                  icon: FontAwesomeIcons.box,
                                  text1: "Earn Brand Rewards & Streaming ",
                                  text2: "Coupons"),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15.0),
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "How It Works",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextBottom(text: "Join Insider on a free trial"),
                              SizedBox(
                                height: 15,
                              ),
                              TextBottom(
                                  text:
                                      "Shop for ₹2000 within 3 months. Your total\n spend will be updated after the return\n window of each order is over."),
                              SizedBox(
                                height: 15,
                              ),
                              TextBottom(
                                  text:
                                      "Get upgraded to Myntra Select for 12 months"),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "For more info, visit FAQs.",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ConfettiWidget(
                    colors: [Color(0xFFFFD700), Colors.white],
                    numberOfParticles: 30,
                    maxBlastForce: 30,
                    confettiController: _confettiController,
                    blastDirection: -pi / 4,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ConfettiWidget(
                    colors: [Color(0xFFFFD700), Colors.white],
                    numberOfParticles: 30,
                    maxBlastForce: 30,
                    confettiController: _confettiController,
                    blastDirection: -3 * pi / 4,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: ConfettiWidget(
                    colors: [Color(0xFFFFD700), Colors.white],
                    numberOfParticles: 30,
                    maxBlastForce: 30,
                    confettiController: _confettiController,
                    blastDirection: pi / 2,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedOpacity(
                    opacity: opaque ? 0 : 1,
                    duration: Duration(seconds: 1),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      height: 70,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink),
                          onPressed: () {},
                          child: Text(
                            'Join',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
