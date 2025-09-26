import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static const String _favoriteMealsKey = 'favorite_meals';
  static const String _completedMealsKey = 'completed_meals';
  static const String _currentDietKey = 'current_diet';
  static const String _startDateKey = 'start_date';

  // Save favorite meals
  static Future<void> addFavorite(String mealId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList(_favoriteMealsKey) ?? [];
    if (!favorites.contains(mealId)) {
      favorites.add(mealId);
      await prefs.setStringList(_favoriteMealsKey, favorites);
    }
  }

  // Remove from favorites
  static Future<void> removeFavorite(String mealId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList(_favoriteMealsKey) ?? [];
    favorites.remove(mealId);
    await prefs.setStringList(_favoriteMealsKey, favorites);
  }

  // Get favorite meals
  static Future<List<String>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_favoriteMealsKey) ?? [];
  }

  // Check if meal is favorite
  static Future<bool> isFavorite(String mealId) async {
    final favorites = await getFavorites();
    return favorites.contains(mealId);
  }

  // Mark meal as completed
  static Future<void> markMealCompleted(String mealId, DateTime date) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> completed = prefs.getStringList(_completedMealsKey) ?? [];
    String completedEntry = '${mealId}_${date.toIso8601String()}';
    if (!completed.contains(completedEntry)) {
      completed.add(completedEntry);
      await prefs.setStringList(_completedMealsKey, completed);
    }
  }

  // Get completed meals
  static Future<List<String>> getCompletedMeals() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_completedMealsKey) ?? [];
  }

  // Set current diet
  static Future<void> setCurrentDiet(String dietId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_currentDietKey, dietId);
    await prefs.setString(_startDateKey, DateTime.now().toIso8601String());
  }

  // Get current diet
  static Future<String?> getCurrentDiet() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_currentDietKey);
  }

  // Get start date
  static Future<DateTime?> getStartDate() async {
    final prefs = await SharedPreferences.getInstance();
    String? dateString = prefs.getString(_startDateKey);
    if (dateString != null) {
      return DateTime.parse(dateString);
    }
    return null;
  }

  // Clear current diet
  static Future<void> clearCurrentDiet() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_currentDietKey);
    await prefs.remove(_startDateKey);
  }

  // Get progress statistics
  static Future<Map<String, int>> getProgressStats() async {
    final completed = await getCompletedMeals();
    final favorites = await getFavorites();
    
    return {
      'completedMeals': completed.length,
      'favoriteMeals': favorites.length,
      'daysActive': await _getDaysActive(),
    };
  }

  static Future<int> _getDaysActive() async {
    final startDate = await getStartDate();
    if (startDate != null) {
      return DateTime.now().difference(startDate).inDays + 1;
    }
    return 0;
  }
}
