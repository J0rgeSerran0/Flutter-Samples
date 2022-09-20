import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:flutter/cupertino.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('This is the Tab3 Page!'),
              const SizedBox(width: 6),
              PushButton(
                buttonSize: ButtonSize.large,
                child: const Text('Tab3 Button'),
                onPressed: () => debugPrint('button from tab3 clicked!'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
