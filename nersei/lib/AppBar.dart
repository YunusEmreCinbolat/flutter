import 'package:flutter/material.dart';
import 'package:nersei/Contact.dart';
import 'package:nersei/main.dart';

import 'Login.dart';

class appbar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      centerTitle: true,
      title: Column(
        children: [
          Text(
            'Nersel',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Nersel()));
                },
                icon: Icon(Icons.phone),
              ),
              SizedBox(width: 50.0),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Giris()),
                  );
                },
                icon: Icon(Icons.login),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
