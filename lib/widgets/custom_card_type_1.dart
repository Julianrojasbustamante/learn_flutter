
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Mi title'),
            subtitle: Text('Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem '),
            leading: Icon(Icons.ac_unit_rounded, color: AppTheme.primary,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text('Ok'
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}