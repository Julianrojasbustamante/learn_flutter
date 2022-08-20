import 'package:flutter/material.dart';

import 'package:fl_commponents/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2( imgUrl: 'https://images.unsplash.com/photo-1660836214775-e7e866ce9774?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',),
          SizedBox(height: 10,),
          CustomCardType2(title: '- My coffee', imgUrl: 'https://images.unsplash.com/photo-1660836222865-b8dfc6070328?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',),
          SizedBox(height: 10,),
          CustomCardType2(title: '- My tea', imgUrl: 'https://images.unsplash.com/photo-1580666622398-d5bffc4c9051?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', ),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
}
