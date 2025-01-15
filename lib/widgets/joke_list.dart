import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/favorites_provider.dart';

class JokeList extends StatelessWidget {
  final Map<String, dynamic> joke;

  const JokeList({super.key, required this.joke});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  joke['setup'],
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Consumer<FavoritesProvider>(
                builder: (context, favoritesProvider, child) {
                  final jokeMap = {
                    'setup': joke['setup'].toString(),
                    'punchline': joke['punchline'].toString(),
                  };

                  return IconButton(
                    icon: Icon(
                      favoritesProvider.isFavorite(jokeMap)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      favoritesProvider.toggleFavorite(jokeMap);
                    },
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            joke['punchline'],
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}