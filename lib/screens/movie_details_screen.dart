import 'package:flutter/material.dart';
import '../models/movie.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailsScreen({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF151925),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.network(
                      movie.posterPath,
                      height: 380,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 380,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withValues(alpha: 0.4),
                            Colors.transparent,
                            const Color(0xFF151925),
                          ],
                          stops: const [0.0, 0.5, 1.0],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 48,
                      left: 16,
                      right: 16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
                            onPressed: () => Navigator.pop(context),
                          ),
                          IconButton(
                            icon: const Icon(Icons.bookmark_border, color: Colors.white, size: 24),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.ReleaseDate,
                        style: const TextStyle(
                          color: Color(0xFFFF2D55),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),

                      Text(
                        movie.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),

                      Row(
                        children: [
                          Row(
                            children: List.generate(5, (index) {
                              return Icon(
                                index < movie.rating.floor()
                                    ? Icons.star
                                    : Icons.star_border,
                                color: const Color(0xFFFF2D55),
                                size: 16,
                              );
                            }),
                          ),
                          const Spacer(),
                          Text(
                            movie.ReleaseDate,
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      Text(
                        movie.description,
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 13,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 24),

                      const Text(
                        'Cast',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),

                    /*  SizedBox(
                        height: 90,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: movie.Cast.length,
                          itemBuilder: (context, index) {
                            final member = movie.Cast[index];
                            return Container(
                              margin: const EdgeInsets.only(right: 12),
                              width: 64,
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      member.imageUrl,
                                      height: 64,
                                      width: 64,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    member.name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.grey[300],
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),*/
                      const SizedBox(height: 100), // Padding for Floating Button
                    ],
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 24,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF2D55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  elevation: 5,
                ),
                onPressed: () {
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Buy tickets',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_ios, size: 14, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
