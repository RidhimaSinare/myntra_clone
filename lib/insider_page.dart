import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class Insider_Page extends StatefulWidget {
  const Insider_Page({super.key});

  @override
  State<Insider_Page> createState() => _Insider_PageState();
}

class _Insider_PageState extends State<Insider_Page> {
  late ConfettiController _confettiController;
  late AnimationController _controller;
  bool selected = true;
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
      body: Container(
        color: Colors.black,
        child: Container(
          color: Colors.black,
          child: Center(
            child: Stack(children: [
              Center(
                child: AnimatedAlign(
                  alignment: selected ? Alignment.center : Alignment.topCenter,
                  duration: const Duration(seconds: 1),
                  curve: Curves.linear,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    height: MediaQuery.of(context).size.height * 0.3,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.crown,
                                color: Color(0xFFFFD700),
                                size: 35,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'insider',
                                style: TextStyle(
                                    color: Color(0xFFFFD700),
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            'An Invite-Only Loyalty Program',
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          Text(
                            'Welcome, Name',
                            style: TextStyle(fontSize: 45, color: Colors.white),
                          ),
                          Text(
                            "You've been invited to a 3-month free trial to",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text("Myntra Select Insider",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
              // Container(
              //   child: Column(
              //     children: [
              //     Row(

              //     )
              //     ],
              //   ),
              // )
              Align(
                alignment: Alignment.bottomCenter,
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
              )
            ]),
          ),
        ),
      ),
    );
  }
}
