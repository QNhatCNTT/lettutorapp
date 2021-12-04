import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class FavoriteVote extends StatefulWidget {
  final int isFavorite;
  const FavoriteVote({Key? key, required this.isFavorite}) : super(key: key);

  @override
  _FavoriteVoteState createState() => _FavoriteVoteState();
}

class _FavoriteVoteState extends State<FavoriteVote> {
  late int _isFavorited = widget.isFavorite;

  _showFavorite(BuildContext context, String title, String description) {
    MotionToast(
            icon: Icons.check,
            title: title,
            titleStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            description: description,
            descriptionStyle: const TextStyle(fontSize: 16),
            height: 80,
            position: MOTION_TOAST_POSITION.TOP,
            animationType: ANIMATION.FROM_TOP,
            color: Colors.lightGreen.shade300)
        .show(context);
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited == 1) {
        _isFavorited = 0;

        _showFavorite(context, 'Unfavorite', 'Unfavorite Tutor Successfully');
      } else {
        _isFavorited = 1;

        _showFavorite(context, 'Favorite', 'Favorite Tutor Successfully');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      onPressed: _toggleFavorite,
      color: Colors.red[500],
      icon: (_isFavorited == 1
          ? Icon(Icons.favorite, color: Colors.red[500])
          : const Icon(Icons.favorite_border)),
    );
  }
}
