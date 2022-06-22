import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'moving_card.dart';

class CardPage extends StatefulWidget {
  CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(16),
            child: const Center(
              child: MovingCardWidget(
                urlFront: 'assets/1_front.png',
                urlBack: 'assets/1_back.png',
              ),
            )));
  }
}
