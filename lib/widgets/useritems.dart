import 'package:flutter/material.dart';
import 'package:myapp/routes/route_const.dart';

class UserItems extends StatelessWidget {
  final String name;
  final String company;
  final String? location;
  const UserItems(
      {Key? key, required this.name, required this.company, this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(PageRoutes.display, arguments: {
          'name': name,
          'company': company,
          'location': location,
        });
      },
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            title: Text(name),
            subtitle: Text("Company: $company  Location: $location"),
          ),
        ),
      ),
    );
  }
}
