import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _count = 0;
  final String imageUrl = 'https://picsum.photos/250?image=9';

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    if (_count > 0) {
      setState(() {
        _count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('assets/images/icon_flutter.png'),
              height: 350,
              width: 350,
            )
          ],
        ),
        Divider(
          height: 15,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 11,
                ),
                Text('Lorem lpsum is simply dummy text of the printing')
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Row(children: [
              IconButton(
                  onPressed: _increment, icon: const Icon(Icons.thumb_up)),
              IconButton(
                  onPressed: _decrement, icon: const Icon(Icons.thumb_down)),
              Text('$_count Likes'),
            ]),
          ],
        )
      ],
      )
    );
    }
}