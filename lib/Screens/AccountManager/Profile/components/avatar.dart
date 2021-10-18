import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imagePath;
  final Icon icon;
  final VoidCallback onPressed;
  const Avatar({
    Key? key,
    required this.imagePath,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 0,
            child: buildEditIcon(color, icon),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          // child: InkWell(
          //   onTap: onClicked,
          // ),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color, Icon icon) => buildCircle(
        color: Colors.white,
        child: buildCircle(
          color: color,
          child: IconButton(
            // icon: const Icon(Icons.edit),
            icon: icon,
            color: Colors.white,
            iconSize: 20,
            onPressed: onPressed,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(1),
          color: color,
          child: child,
        ),
      );
}
