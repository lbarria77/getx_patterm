import 'package:flutter/material.dart';
import 'package:get_patterm_demo/app/data/models/movies.dart';
import 'package:get_patterm_demo/app/utils/constants.dart';

class MovieItems extends StatelessWidget {
  final Movie movie;

  const MovieItems({
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Image.network("${Constants.THE_MOVIE_DB_IMG_PATH}${movie.posterPath}"),
        title: Text(movie.title),
        subtitle: Text(movie.overview),
      ),
    );
  }
}
