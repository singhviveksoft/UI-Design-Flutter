import 'package:flutter/material.dart';

class AspectRatioWidget extends StatefulWidget {
  const AspectRatioWidget({Key? key}) : super(key: key);

  @override
  State<AspectRatioWidget> createState() => _AspectRatioWidgetState();
}

class _AspectRatioWidgetState extends State<AspectRatioWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      width: 60,
      color: Colors.red,
      child: ConstrainedBox(
          constraints: const BoxConstraints(
              minWidth: 90, maxWidth: 200, minHeight: 20, maxHeight: 80)),
    )));
  }
}
