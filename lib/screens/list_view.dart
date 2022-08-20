import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  final options = const ["Caroline", "Superman", "Batman", "Megamente"];

  const Listview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview'),
      ),
      body: ListView(
        children: [
           ...options.map(
                   (persona) => ListTile(
                     title: Text(persona),
                     trailing: Icon(Icons.arrow_forward_ios_rounded),
                     onTap: (){},
                   ),
           ).toList()
        ],
      )
    );
  }
}
