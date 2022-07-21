library switch_button;

import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  final bool switchValue;
  final ValueChanged<bool> onChanged;
  final double size;
  final Color activeColor;
  final Color activeTrackColor;
  final Color inactiveThumbColor;
  final Color inactiveTrackColor;

  const SwitchButton({
    required Key key,
    required this.switchValue,
    required this.onChanged,
    this.size = 2.0,
    this.activeColor = Colors.black12,
    this.activeTrackColor = Colors.pink,
    this.inactiveThumbColor = Colors.white,
    this.inactiveTrackColor = Colors.grey,
  }) : super(key: key);

  @override
  SwitchButtonState createState() => SwitchButtonState();
}

class SwitchButtonState extends State<SwitchButton>
    with SingleTickerProviderStateMixin {
  void toggleSwitch(bool value) {
    setState(() {
      widget.onChanged(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
          scale: widget.size,
          child: Switch(
            onChanged: toggleSwitch,
            value: widget.switchValue,
            activeColor: widget.activeColor,
            activeTrackColor: widget.activeTrackColor,
            inactiveThumbColor: widget.inactiveThumbColor,
            inactiveTrackColor: widget.inactiveTrackColor,
          )),
    ]);
  }
}
