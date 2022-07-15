import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/profile_detail_page.dart';
import 'package:ui_design/user_data.dart';
import 'package:ui_design/user_detail.dart';

import 'aspect_ratio.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 213, 224, 230),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
              floating: true,
              pinned: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  urlImages[1],
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
              )),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserDetailPage()));
                    },
                    child: BoxDecorationWidget()),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.grey,
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Today, June 20',
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: DiscriptionWidget()),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AspectRatioWidget()));
                    },
                    child: DiscriptionWidget()),
                const SizedBox(
                  height: 20.0,
                ),
                DiscriptionWidget(),
                const SizedBox(
                  height: 20.0,
                ),
                DiscriptionWidget(),
                const SizedBox(
                  height: 20.0,
                ),
                DiscriptionWidget(),
              ]),
            ),
          ),
        ],
      )),
    );
  }
}

class DiscriptionWidget extends StatelessWidget {
  const DiscriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(left: 8.0),
            color: Colors.amber,
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Today, June 20',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 8.0),
            color: Colors.pink,
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Today, June 20',
                softWrap: false,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 8.0),
            color: Colors.yellow,
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Today, June 20',
                softWrap: false,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 8.0),
            color: Colors.yellow,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(urlImages[1]),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(urlImages[1]),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(urlImages[1]),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(urlImages[1]),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(urlImages[1]),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: OutlinedButton(
                    onPressed: null, child: Text("Add a spaces"))),
          )
        ]),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey, blurRadius: 2.0, offset: Offset(5.0, 5.0))
            ]),
      ),
    );
  }
}

class BoxDecorationWidget extends StatelessWidget {
  BoxDecorationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: const LinearGradient(
                colors: [Colors.indigo, Colors.lightGreen]),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey, blurRadius: 2.0, offset: Offset(5.0, 5.0))
            ]),
        width: MediaQuery.of(context).size.width,
        height: 150,
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(urlImages[1]),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Column(
                      children: const [
                        Text(
                          'Hhhhhhhhhhhgg ggggggggggg fffffff',
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          'Hhhhhhhhhhhgg ggggggggggg fffffff',
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                const IconButton(
                  alignment: Alignment.topRight,
                  icon: Icon(Icons.volume_up),
                  onPressed: null,
                )
              ]),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Robin',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
