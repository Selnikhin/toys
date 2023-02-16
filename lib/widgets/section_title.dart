import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key? key, required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Text(title,
          style: TextStyle(fontSize: 22, fontFamily: 'Sriracha'),
        ),
      );

  }
}
