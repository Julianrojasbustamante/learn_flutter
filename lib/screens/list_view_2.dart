import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
  final options = const ["Caroline", "Superman", "Batman", "Megamente"];

  const Listview2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
              title: Text(options[index]),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo,),
              onTap: (){
                final persona = options[index];
                print(persona);
              },
            ),
        separatorBuilder: (_, __) => Divider(),
      )
    );
  }
}
