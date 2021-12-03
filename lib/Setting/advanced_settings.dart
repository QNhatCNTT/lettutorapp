import 'package:flutter/material.dart';

class AdvSettingPage extends StatelessWidget {
  const AdvSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text(
            'Advanced Settings',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: const SafeArea(child: AdvSetting()),
      ),
    );
  }
}

class AdvSetting extends StatefulWidget {
  const AdvSetting({Key? key}) : super(key: key);

  @override
  _AdvSettingState createState() => _AdvSettingState();
}

class _AdvSettingState extends State<AdvSetting> {
  final List<Flag> flags = [
    const Flag('English', '🇺🇸'),
    const Flag('Việt Nam', '🇻🇳'),
  ];
  Flag? _selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Language', style: TextStyle(fontSize: 20)),
          DropdownButton<Flag>(
            underline: const SizedBox(),
            icon: const SizedBox.shrink(),
            hint: Row(
              children: <Widget>[
                Text(flags[0].flag),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  flags[0].name,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
            value: _selected,
            onChanged: (Flag? value) {
              setState(() {
                _selected = value;
              });
            },
            items: flags.map((Flag flag) {
              return DropdownMenuItem<Flag>(
                value: flag,
                child: Row(
                  children: <Widget>[
                    Text(flag.flag),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      flag.name,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class Flag {
  const Flag(this.name, this.flag);
  final String name;
  final String flag;
}
