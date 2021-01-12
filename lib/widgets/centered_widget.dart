import 'package:flutter/material.dart';

class CenteredWidget extends StatelessWidget {
  final Widget child;

  const CenteredWidget({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1700),
        child: child,
      ),
    );
  }
}
