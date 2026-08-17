class movie {
  final String name;
  final int id;
  final String description;
  final String ReleaseDate;
  final double rating;
  final String posterPath;

  const movie({
    required this.name,
    required this.id,
    required this.description,
    required this.ReleaseDate,
    required this.rating,
    required this.posterPath,
  });

  factory movie.fromjson(Map<String, dynamic> json) {
    return movie(
      name: json['title'] ?? '',
      id: json['id'] ?? 0,
      description: json['overview'] ?? '',
      ReleaseDate: json['release_date'] ?? '',
      rating: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      posterPath: json['poster_path'] ?? '',
    );
  }
}
