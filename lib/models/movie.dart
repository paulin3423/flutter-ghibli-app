class Movie {
  final String id;
  final String title;
  final String description;
  final String director;
  final String producer;
  final String releaseDate;
  final String image;

  Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.director,
    required this.producer,
    required this.releaseDate,
    required this.image,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      director: json['director'],
      producer: json['producer'],
      releaseDate: json['release_date'],
      image: json['image'],
    );
  }
}
