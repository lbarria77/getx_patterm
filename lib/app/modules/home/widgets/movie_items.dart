import 'package:flutter/material.dart';
import 'package:get_patterm_demo/app/data/models/movies.dart';

class MovieItems extends StatelessWidget {
  final Movie movie;

  const MovieItems({
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(movie.title),
        subtitle: Text(movie.overview),
      ),
    );
  }
}
