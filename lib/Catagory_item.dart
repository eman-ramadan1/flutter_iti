
import 'package:flutter/material.dart';


class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: ((screenHeight * (2 / 3)) +
            MediaQuery.of(context).viewInsets.bottom),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
          boxShadow: [
            BoxShadow(
            
              blurRadius: 16,
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8),
          child: child,
        ),
      ),
    );
  }
}