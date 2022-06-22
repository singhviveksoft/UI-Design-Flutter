import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/user_data.dart';
import 'package:ui_design/user_model.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'custom_scrollview_page.dart';
import 'main.dart';

class UserPage extends StatefulWidget {
  UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<User> users = [];
  @override
  void initState() {
    users = getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User Item'),
          centerTitle: true,
        ),
        body: ReorderableListView.builder(
            itemBuilder: (context, index) {
              var user = users[index];
              return buildListItem(index, user);
            },
            itemCount: users.length,
            onReorder: (oldIndex, newIndex) {
              var index = newIndex > oldIndex ? newIndex - 1 : newIndex;
              final user = users.removeAt(oldIndex);
              users.insert(index, user);
            }));
  }

  Widget buildListItem(int index, User user) {
    return Dismissible(
      key: ValueKey(user),
      direction: DismissDirection.endToStart,
      onDismissed: (_) {
        setState(() {
          users.removeAt(index);
        });
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>  DetailPage()));
        },
        child: ListTile(
          key: ValueKey(user),
          title: Text(user.name),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(user.urlImage),
            radius: 30,
          ),
        ),
      ),
    );
  }
}
