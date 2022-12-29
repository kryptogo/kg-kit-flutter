import 'package:flutter/material.dart';

class KgTestWidget extends StatelessWidget {
  const KgTestWidget({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    //write a widget with theme data button style
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(8),
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
