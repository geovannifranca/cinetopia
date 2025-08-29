import 'package:cinetopia/ui/widgets/move_card.dart';
import 'package:flutter/material.dart';

class SearchMovies extends StatelessWidget {
  const SearchMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Image.asset(
            "assets/images/popular.png",
            height: 80,
            width: 80,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            "Filmes populares",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 40)),
        SliverToBoxAdapter(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0XFFA368E5)),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
        SliverList.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 32),
          itemCount: 10,
          itemBuilder: (context, index) => MoveCard(),
        ),
      ],
    );
  }
}
