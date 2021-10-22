import 'package:flutter/material.dart';

class FavoriteVote extends StatefulWidget {
  const FavoriteVote({Key? key}) : super(key: key);

  @override
  _FavoriteVoteState createState() => _FavoriteVoteState();
}

class _FavoriteVoteState extends State<FavoriteVote> {
  bool _isFavorited = false;
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        showDialog(
            context: context,
            builder: (context) {
              Future.delayed(const Duration(milliseconds: 500), () {
                Navigator.of(context).pop(true);
              });
              return const AlertDialog(
                title: Text('Unfavorite successfully',
                    style: TextStyle(color: Colors.green)),
              );
            });
      } else {
        _isFavorited = true;
        showDialog(
            context: context,
            builder: (context) {
              Future.delayed(const Duration(milliseconds: 500), () {
                Navigator.of(context).pop(true);
              });
              return const AlertDialog(
                title: Text('Favorite successfully',
                    style: TextStyle(color: Colors.green)),
              );
            });
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
