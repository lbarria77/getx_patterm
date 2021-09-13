import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_patterm_demo/app/data/models/movies.dart';
import 'package:get_patterm_demo/app/modules/home/controllers/home_controller.dart';
import 'package:get_patterm_demo/app/modules/home/widgets/movie_items.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (_) => Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton(
                    icon: Icon(Icons.exit_to_app),
                    onPressed: _.logOut,
                  )
                ],
                title: Text('HomeView'),
                centerTitle: true,
              ),
              body: Center(
                  child: ListView.builder(
                itemCount: _.movies.length,
                itemBuilder: (ctx, index) {
                  final Movie movie = _.movies[index];
                  return MovieItems(movie: movie);
                },
              )),
            ));
  }
}
