import 'package:flutter/material.dart';
import '../models/movie.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Hero(
              tag: movie.id,
              child: CachedNetworkImage(
                imageUrl: movie.image,
                height: 300,
                fit: BoxFit.cover,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            SizedBox(height: 20),
            Text(movie.title, style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(height: 10),
            Text(
              'Directed by ${movie.director}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 10),
            Text(
              'Produced by ${movie.producer}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 10),
            Text(
              'Released: ${movie.releaseDate}',
              style: Theme.of(context).textTheme.titleMedium,
            ),

            SizedBox(height: 20),
            Text(movie.description),
          ],
        ),
      ),
    );
  }
}
