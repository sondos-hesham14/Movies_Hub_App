class CastMember {
  final String name;
  final String imageUrl;

  CastMember({
    required this.name,
    required this.imageUrl,
  });
}

class Movie {
  final String title;
  final String genre;
  final String duration;
  final double rating;
  final String synopsis;
  final String posterUrl;
  final List<CastMember> cast;

  Movie({
    required this.title,
    required this.genre,
    required this.duration,
    required this.rating,
    required this.synopsis,
    required this.posterUrl,
    required this.cast,
  });
}
