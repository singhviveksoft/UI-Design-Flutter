import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_design/user_data.dart';

class UserDetailPage extends StatefulWidget {
  UserDetailPage({Key? key}) : super(key: key);

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: UserInformationWidget(),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: SafeArea(
  //       child: Container(
  //         width: MediaQuery.of(context).size.width,
  //         height: MediaQuery.of(context).size.height,
  //         decoration: const BoxDecoration(
  //           color: Colors.black,
  //         ),
  //         child: Visibility(
  //           visible: true,
  //           child: SizedBox(
  //             width: double.infinity,
  //             height: 200,
  //             child: Container(
  //               alignment: Alignment(0.0, -3.5),
  //               height: 10,
  //               width: 10,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class SizedOverflowBoxWidget extends StatelessWidget {
  const SizedOverflowBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.purple,
            child: SizedOverflowBox(
              size: Size(MediaQuery.of(context).size.width, 200.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(urlImages[2]),
                radius: 160.0,
              ),
            ),
          ),
          Container(
            foregroundDecoration: BoxDecoration(color: Colors.transparent),
            width: 200.0,
            height: 200.0,
            color: Colors.transparent,
          ),
          Container(
            width: 200.0,
            height: 200.0,
            color: Colors.amber,
          ),
          Container(
            width: 200.0,
            height: 200.0,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}

Column _containerItem() {
  return Column(
    children: [
      Container(
        width: 200.0,
        height: 200.0,
        color: Colors.amber,
      ),
      Container(
        width: 200.0,
        height: 200.0,
        color: Colors.green,
      ),
      Container(
        width: 200.0,
        height: 200.0,
        color: Colors.red,
      ),
      Container(
        width: 200.0,
        height: 200.0,
        color: Colors.yellow,
      ),
      Container(
        width: 200.0,
        height: 200.0,
        color: Colors.red,
      ),
    ],
  );
}

class UserInformationWidget extends StatelessWidget {
  const UserInformationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: SizedBox(
              width: double.infinity,
              height: 200,
              child: Container(
                alignment: Alignment(0.0, 2.5),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(urlImages[2]),
                  radius: 60.0,
                ),
              ),
            ),
          ),
          Container(
            child: Text(
              '',
              style: TextStyle(fontSize: 30.0),
            ),
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.grey,
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            color: Colors.white,
            height: 30,
          ),
          Container(
            color: Colors.orange,
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            color: Colors.red,
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          Container(
            color: Colors.yellow,
            width: MediaQuery.of(context).size.width,
            height: 300,
          ),
          Expanded(
            child: Container(
              color: Colors.yellowAccent,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Container(
            color: Colors.yellow,
            width: MediaQuery.of(context).size.width,
            height: 300,
          ),
          Container(
            color: Colors.yellow,
            width: MediaQuery.of(context).size.width,
            height: 300,
          ),
        ],
      ),
      Positioned(
        top: 180,
        left: 50,
        right: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: 150,
          ),
        ),
      ),
    ]);
  }
}
