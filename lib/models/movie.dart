class Movie {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String backdropPath;
  final String relaseDate;
  final double voteAverage;

  Movie(
      {required this.id,
      required this.title,
      required this.overview,
      required this.posterPath,
      required this.backdropPath,
      required this.relaseDate,
      required this.voteAverage});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        id: json['id'],
        title: json['title'],
        overview: json['overview'],
        posterPath: json['posterpath'],
        backdropPath: json['backdropPath'],
        relaseDate: json['relaseDate'],
        voteAverage: double.parse(json['voteAverage']));
  }
}
