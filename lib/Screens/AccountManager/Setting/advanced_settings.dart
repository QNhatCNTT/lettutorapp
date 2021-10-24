import 'package:flutter/material.dart';

class AdvSetting extends StatefulWidget {
  const AdvSetting({Key? key}) : super(key: key);

  @override
  _AdvSettingState createState() => _AdvSettingState();
}

class _AdvSettingState extends State<AdvSetting> {
  void _show(BuildContext context) => showGeneralDialog(
        context: context,
        barrierColor: Colors.transparent,
        pageBuilder: (context, anim1, anim2) {
          return SimpleDialog(
            elevation: 3,
            contentPadding: const EdgeInsets.all(15),
            children: [
              SimpleDialogOption(
                padding: const EdgeInsets.all(8),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Container(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: const [
                      Image(
                          image: AssetImage(
                              'assets/images/vietnam-flag-icon-32.png')),
                      SizedBox(
                        width: 3,
                      ),
                      Text('Tiếng Việt', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
              SimpleDialogOption(
                padding: const EdgeInsets.all(8),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Container(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: const [
                      Image(
                          image: AssetImage(
                              'assets/images/united-states-of-america-flag-icon-32.png')),
                      SizedBox(
                        width: 3,
                      ),
                      Text('English', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        transitionDuration: const Duration(milliseconds: 200),
        barrierDismissible: true,
        barrierLabel: '',
        transitionBuilder: (context, a1, a2, child) {
          return Transform.scale(
            scale: a1.value,
            alignment: const Alignment(-0.88, -0.88),
            child: Opacity(
              opacity: a1.value,
              child: child,
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.bottomLeft,
      height: 100,
      width: 150,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade50,
          elevation: 0,
        ),
        onPressed: () {
          _show(context);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Language',
                style: TextStyle(fontSize: 18, color: Colors.black)),
            SizedBox(
              height: 5,
            ),
            Text('English',
                style: TextStyle(fontSize: 17, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
