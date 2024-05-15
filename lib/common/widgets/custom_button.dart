import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50), // Change button size
        primary: color ?? Theme.of(context).primaryColor, // Use primary color if color is not provided
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Change button shape
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color == null ? Colors.white : Theme.of(context).primaryColor, // Use primary color for text
          fontSize: 16, // Change text size
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
