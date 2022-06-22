import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/stack_widget.dart';

import 'card_page.dart';
import 'moving_card.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
                      width: 50,
                      height: 50,
                    ),
                    const OutlinedButton(onPressed: null, child: Text('Help'))
                  ],
                ),
                SizeBoxwidget(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Hello and Welcome to\n Bahrain card',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizeBoxwidget(
                  height: 25,
                ),
                TextFormField(
                  initialValue: 'UserName',
                ),
                TextFormField(
                  initialValue: 'Password',
                ),
                SizeBoxwidget(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                SizeBoxwidget(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      child: LoginOptionWidget(
                        iconData: Icons.login,
                        title: 'Sign Up\n Now',
                      ),
                    ),
                    SizeBoxwidget(
                      width: 10,
                    ),
                    const Expanded(
                      child: LoginOptionWidget(
                        iconData: Icons.login,
                        title: 'Sign Up\n Now',
                      ),
                    ),
                    SizeBoxwidget(
                      width: 10,
                    ),
                    const Expanded(
                      child: LoginOptionWidget(
                        iconData: Icons.login,
                        title: 'Sign Up\n Now',
                      ),
                    ),
                  ],
                ),
                FirstLandingPage()
              ],
            );
          },
        ),
      ),
    );
  }
}

//container

class LoginOptionWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  const LoginOptionWidget(
      {Key? key, required this.iconData, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      width: 100,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData),
          const SizedBox(
            height: 10,
          ),
          Text(title)
        ],
      ),
    );
  }
}

class FirstLandingPage extends StatelessWidget {
  const FirstLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Discovery variety \n of offer & product',
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
        SizeBoxwidget(
          height: 10,
        ),
        const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text('For Her'),
            )),
        SizeBoxwidget(
          height: 10,
        ),
        LandingPageCardWidget(
          iconData: Icons.heart_broken,
          title: 'ggggggggggg nnn',
          likeCount: '2356',
          cardSize: 250,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [Text('DEAL AROUND YOU'), Text('VIEW ALL')],
        ),
        const SizedBox(
          height: 350,
          child: IteamList(),
        ),
      ],
    );
  }
}

class IteamList extends StatelessWidget {
  const IteamList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CardPage()));
            },
            child: LandingPageCardWidget(
              iconData: Icons.heart_broken,
              title: 'ggggggggggg nnn',
              likeCount: '2356',
              cardSize: 230,
            ),
          );
        });
  }
}

// ignore: must_be_immutable
class SizeBoxwidget extends StatelessWidget {
  double? width;
  double? height;
  SizeBoxwidget({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}

// ignore: must_be_immutable
class LandingPageCardWidget extends StatelessWidget {
  String? title;
  IconData? iconData;
  String? likeCount;
  double cardSize;
  LandingPageCardWidget(
      {Key? key,
      this.iconData,
      this.likeCount,
      this.title,
      required this.cardSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.white,
          height: cardSize,
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 180,
                child: Image.network(
                  'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
                  fit: BoxFit.cover,
                ),
              ),
              SizeBoxwidget(
                height: 15,
              ),
              Visibility(
                visible: false,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      title ?? '',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 15),
                child: Row(
                  children: [
                    Icon(iconData),
                    Text(
                      likeCount ?? '',
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
