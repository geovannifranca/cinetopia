import 'package:cinetopia/app/helpers/consts.dart';
import 'package:cinetopia/app/models/movie_model.dart';
import 'package:flutter/material.dart';

class MoveCard extends StatelessWidget {
  final MovieModel popularMovie;

  const MoveCard({super.key, required this.popularMovie});

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
            image: DecorationImage(
              image: NetworkImage("$imageUrlPrefix${popularMovie.imageUrl}"),
              fit: BoxFit.cover,
            ),
          ),
          margin: EdgeInsets.only(right: 20),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  popularMovie.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Text(
                "Lançament: ${popularMovie.releaseDate}",
                style: TextStyle(color: Color(0XFFA5A5A5)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
