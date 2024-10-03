import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lottie Animation')),
      body: Center(
        child: Lottie.asset('assets/animacao.json'),
      ),
    );
  }
}
