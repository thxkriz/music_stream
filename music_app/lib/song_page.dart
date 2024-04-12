import 'dart:html';

import 'package:flutter/material.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
      backgroundColor: Colors.grey[300]
      Body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            boxShadow: [
              
            ],
          ),
        ),
      ),
    );
  }
}
