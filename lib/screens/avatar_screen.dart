import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
           Container(
             margin: EdgeInsets.only(right: 15),
             child: CircleAvatar(
               child: const Text('JR'),
               backgroundColor: Colors.indigo.shade900,
             ),
           )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C4E03AQEaWV5jSQ2Jaw/profile-displayphoto-shrink_800_800/0/1633485262523?e=1666224000&v=beta&t=SbsjXS0qxfEv0Y-8sze-8E56XjzPB7tHzCpJRRQ6nxo'),
        ),
      ),
    );
  }
}
