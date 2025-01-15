import 'package:flutter/foundation.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<Map<String, String>> _favorites = [];

  List<Map<String, String>> get favorites => _favorites;

  void toggleFavorite(Map<String, String> joke) {
    final isExist = _favorites.any((element) =>
    element['setup'] == joke['setup'] &&
        element['punchline'] == joke['punchline']);

    if (isExist) {
      _favorites.removeWhere((element) =>
      element['setup'] == joke['setup'] &&
          element['punchline'] == joke['punchline']);
    } else {
      _favorites.add(joke);
    }
    notifyListeners();
  }

  bool isFavorite(Map<String, String> joke) {
    return _favorites.any((element) =>
    element['setup'] == joke['setup'] &&
        element['punchline'] == joke['punchline']);
  }
}