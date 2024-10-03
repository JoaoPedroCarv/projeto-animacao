import 'package:flutter/material.dart';

class AnimatedSizePage extends StatefulWidget {
  @override
  _AnimatedSizePageState createState() => _AnimatedSizePageState();
}

class _AnimatedSizePageState extends State<AnimatedSizePage> {
  double _size = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedSize')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _size = _size == 100.0 ? 200.0 : 100.0;
            });
          },
          child: AnimatedSize(
            duration: Duration(seconds: 1),
            child: Container(
              height: _size,
              width: _size,
              color: Colors.blue,
            ),
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );
  }
}
