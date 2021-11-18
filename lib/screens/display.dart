import 'package:flutter/material.dart';

class DisplayData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String?>;
    final name = routeArgs['name'];
    final company = routeArgs['company'];
    final location = routeArgs['location'];

    return Scaffold(
      appBar: AppBar(
        title: Text(name!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Company',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  company!,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Location',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  location!,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
