library switch_cover_button;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchCoverButton extends StatefulWidget {
  final bool switchValue;
  final ValueChanged<bool> onChanged;
  final double size;
  final Color activeThumbColor;
  final Color inactiveThumbColor;
  final Color inactiveTrackColor;

  const SwitchCoverButton({
    required Key key,
    required this.switchValue,
    required this.onChanged,
    this.size = 2,
    this.activeThumbColor = Colors.blue,
    this.inactiveThumbColor = Colors.white,
    this.inactiveTrackColor = Colors.black12,
  }) : super(key: key);

  @override
  SwitchCoverButtonState createState() => SwitchCoverButtonState();
}

class SwitchCoverButtonState extends State<SwitchCoverButton>
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
        child: CupertinoSwitch(
          onChanged: toggleSwitch,
          value: widget.switchValue,
          activeColor: widget.activeThumbColor,
          trackColor: widget.inactiveTrackColor,
          thumbColor: widget.inactiveThumbColor,
        ),
      ),
    ]);
  }
}
