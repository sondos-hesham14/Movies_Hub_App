class Movie {
  final String name;
  final int id;
  final String description;
  final String ReleaseDate;
  final double rating;
  final String posterPath;

  const Movie({
    required this.name,
    required this.id,
    required this.description,
    required this.ReleaseDate,
    required this.rating,
    required this.posterPath,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json['title'] ?? '',
      id: json['id'] ?? 0,
      description: json['overview'] ?? '',
      ReleaseDate: json['release_date'] ?? '',
      rating: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      posterPath: json['poster_path'] ?? '',
    );
  }
}
