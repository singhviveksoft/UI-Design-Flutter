import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/user_list_page.dart';

import 'custom_scrollview_page.dart';

class SatckPage extends StatefulWidget {
  SatckPage({Key? key}) : super(key: key);

  @override
  State<SatckPage> createState() => _SatckPageState();
}

class _SatckPageState extends State<SatckPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return stackSetup();
          },
        ),
      ),
    );
  }

  Stack column() {
    return Stack(
      children: [
        Align(alignment: Alignment.topRight, child: Text('4444444')),
        Positioned(top: 100, left: 70, child: Text("jjjjjjjjjj")),
        Positioned(left: 100, child: Text("pppppppppppp")),
      ],
    );
  }

  Stack stackSetup() {
    return Stack(children: [
      Visibility(
        visible: true,
        child: Container(
          color: Colors.amber,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Visibility(
            visible: true,
            child: GestureDetector(
              onTap: () {
                 Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserPage()));
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.yellow,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
      Visibility(
        visible: true,
        child: Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.green,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.orange,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
      Visibility(
        visible: true,
        child: Positioned.fill(
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.red,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.orange,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
     
    ]);
  }
}
