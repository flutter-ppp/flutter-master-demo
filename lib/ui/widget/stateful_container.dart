import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class StatefulContainer extends StatefulWidget {
  final Key key;

  StatefulContainer(this.key) : super(key: key);

  @override
  _StatefulContainerState createState() => _StatefulContainerState();
}

class _StatefulContainerState extends State<StatefulContainer> {
  final Color color = RandomColor().randomColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
