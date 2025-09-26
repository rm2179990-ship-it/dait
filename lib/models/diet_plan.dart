class DietPlan {
  final String id;
  final String name;
  final String description;
  final String duration;
  final String targetWeight;
  final List<String> benefits;
  final List<DayMeal> meals;
  final String difficulty;
  final String imageUrl;

  DietPlan({
    required this.id,
    required this.name,
    required this.description,
    required this.duration,
    required this.targetWeight,
    required this.benefits,
    required this.meals,
    required this.difficulty,
    required this.imageUrl,
  });
}

class DayMeal {
  final String day;
  final Meal breakfast;
  final Meal lunch;
  final Meal dinner;
  final List<Meal> snacks;

  DayMeal({
    required this.day,
    required this.breakfast,
    required this.lunch,
    required this.dinner,
    required this.snacks,
  });
}

class Meal {
  final String name;
  final String description;
  final String calories;
  final List<String> ingredients;
  final String instructions;

  Meal({
    required this.name,
    required this.description,
    required this.calories,
    required this.ingredients,
    required this.instructions,
  });
}
