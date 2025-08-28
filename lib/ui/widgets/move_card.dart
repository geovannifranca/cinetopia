import 'package:flutter/material.dart';

class MoveCard extends StatelessWidget {
  const MoveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 90,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.only(right: 20),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: const Text(
                "Título do Filme",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const Text(
              "Lançament: 2014-04-04",
              style: TextStyle(color: Color(0XFFA5A5A5)),
            ),
          ],
        ),
      ],
    );
  }
}
