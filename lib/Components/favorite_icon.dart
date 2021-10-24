import 'package:flutter/material.dart';

class FavoriteVote extends StatefulWidget {
  const FavoriteVote({Key? key}) : super(key: key);

  @override
  _FavoriteVoteState createState() => _FavoriteVoteState();
}

class _FavoriteVoteState extends State<FavoriteVote> {
  bool _isFavorited = false;
  void show(String text) => showGeneralDialog(
        barrierLabel: "Label",
        barrierDismissible: false,
        barrierColor: Colors.transparent,
        transitionDuration: const Duration(milliseconds: 700),
        context: context,
        pageBuilder: (context, anim1, anim2) {
          Future.delayed(const Duration(milliseconds: 1000), () {
            Navigator.of(context).pop(true);
          });
          return AlertDialog(
              title: Text(text,
                  style: const TextStyle(fontSize: 16, color: Colors.green)));
        },
        transitionBuilder: (context, anim1, anim2, child) {
          return SlideTransition(
            position:
                Tween(begin: const Offset(0, -1), end: const Offset(0, -0.3))
                    .animate(anim1),
            child: child,
          );
        },
      );

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        show('Unfavorite successfully');
      } else {
        _isFavorited = true;
        show('Favorite successfully');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      onPressed: _toggleFavorite,
      color: Colors.red[500],
      icon: (_isFavorited
          ? Icon(Icons.favorite, color: Colors.red[500])
          : const Icon(Icons.favorite_border)),
    );
  }
}
