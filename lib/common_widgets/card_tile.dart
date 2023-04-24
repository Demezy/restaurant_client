import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    required this.onPressed,
    required this.content,
    Key? key,
  }) : super(key: key);

  final Function() onPressed;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: content,
      ),
    );
  }
}
