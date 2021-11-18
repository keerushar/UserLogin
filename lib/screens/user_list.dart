import 'package:flutter/material.dart';
import 'package:myapp/models/user_data.dart';
import 'package:myapp/preferences/shared_pref.dart';
import 'package:myapp/routes/route_const.dart';
import 'package:myapp/widgets/useritems.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('User List'),
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            icon: Icon(Icons.more_horiz),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                child: Text('Logout'),
                value: 0,
              ),
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: USER_DATA.length,
        itemBuilder: (context, i) => UserItems(
          name: USER_DATA[i].name,
          company: USER_DATA[i].company,
          location: USER_DATA[i].location,
        ),
      ),
    );
  }

  void onSelected(BuildContext ctx, int item) {
    switch (item) {
      case 0:
        SharedPreferencesHelper().removeValue();
        Navigator.of(ctx).pushNamed(PageRoutes.login);
        break;
    }
  }
}
