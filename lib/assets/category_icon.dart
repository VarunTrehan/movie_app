import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final String icon;
  final String label;

  const CategoryIcon({
    super.key,
    required this.icon,
    required this.label,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              icon,
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.white70, fontSize: 13),
        )
      ],
    );
  }
}
