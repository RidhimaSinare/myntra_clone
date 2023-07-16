import 'package:flutter/material.dart';

import 'imagebox.dart';

class Store_Page extends StatelessWidget {
  const Store_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50),
                child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/myntra.jpg')),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  'Select Your Store',
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Color(0xFF3A3B3C)),
                ),
              ),
              ImageBox(
                imageaddress:
                    'https://tse2.mm.bing.net/th?id=OIP.220JFeJsCILm1Vc9GARkTwHaDn&pid=Api&P=0&h=180',
                heading: 'MYNTRA',
                firstline: "India's Online Fashion &",
                secondline: 'Beauty Store',
                colour: Colors.pink,
              ),
              SizedBox(
                height: 25.0,
              ),
              ImageBox(
                  imageaddress:
                      'https://tse3.mm.bing.net/th?id=OIP.gZ88J6ZtQDbWqgKTuGkLJwAAAA&pid=Api&P=0&h=180',
                  heading: 'FWD',
                  firstline: 'Unmissable Deals On',
                  secondline: 'Seriously Lit Looks',
                  colour: Colors.pink),
              SizedBox(
                height: 25.0,
              ),
              ImageBox(
                imageaddress:
                    'https://tse1.mm.bing.net/th?id=OIP.lrcrHGWZH4LEaav9oKnn7QHaEA&pid=Api&P=0&h=180',
                heading: 'LUXE',
                firstline: 'The Most Coveted',
                secondline: 'Luxury Finds',
                colour: Colors.white,
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
