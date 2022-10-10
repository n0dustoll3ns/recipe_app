class Recipe {
  final String creatorName;
  final String name;
  final Duration duration;
  final String image;
  final double rating;
  Recipe({
    required this.creatorName,
    required this.name,
    required this.duration,
    required this.image,
    required this.rating,
  });
}

List<Recipe> userRecipes = [
  Recipe(
      creatorName: 'James Milner',
      name: 'Steak with tomato sauce and bulgur rice.',
      duration: const Duration(minutes: 10),
      image: 'assets/images/user_recipes/1.png',
      rating: 4.5),
  Recipe(
      creatorName: 'Laura wilson',
      name: 'Pilaf sweet with lamb-and-raisins',
      duration: const Duration(minutes: 15),
      image: 'assets/images/user_recipes/2.png',
      rating: 4.0),
  Recipe(
      creatorName: 'Lucas Moura',
      name: 'Rice Pilaf, Broccoli and Chicken',
      duration: const Duration(minutes: 28),
      image: 'assets/images/user_recipes/3.png',
      rating: 3.8),
  Recipe(
      creatorName: 'Isabella Ethan',
      name: 'Chicken meal with sauce',
      duration: const Duration(minutes: 32),
      image: 'assets/images/user_recipes/4.png',
      rating: 3.2),
  Recipe(
      creatorName: 'Miquel Ferran',
      name: 'Stir-fry chicken with broccoli in sweet and sour sauce and rice.',
      duration: const Duration(minutes: 45),
      image: 'assets/images/user_recipes/5.png',
      rating: 4.2),
];

List<Recipe> searchRecipes = [
  Recipe(
      creatorName: 'Chef John',
      name: 'Traditional spare ribs baked',
      duration: const Duration(minutes: 10),
      image: 'assets/images/search_result/1.png',
      rating: 4.5),
  Recipe(
      creatorName: 'Spicy Nelly',
      name: 'Lamb chops with fruity couscous and mint',
      duration: const Duration(minutes: 15),
      image: 'assets/images/search_result/2.png',
      rating: 4.0),
  Recipe(
      creatorName: 'Mark Kelvin',
      name: 'spice roasted chicken with flavored rice',
      duration: const Duration(minutes: 28),
      image: 'assets/images/search_result/3.png',
      rating: 3.8),
  Recipe(
      creatorName: 'Laura wilson',
      name: 'Chinese style Egg fried rice with sliced pork fillet',
      duration: const Duration(minutes: 32),
      image: 'assets/images/search_result/4.png',
      rating: 3.2),
  Recipe(
      creatorName: 'Spicy Nelly',
      name: 'Lamb chops with fruity couscous and mint',
      duration: const Duration(minutes: 15),
      image: 'assets/images/search_result/2.png',
      rating: 4.0),
  Recipe(
      creatorName: 'Chef John',
      name: 'Traditional spare ribs baked',
      duration: const Duration(minutes: 10),
      image: 'assets/images/search_result/1.png',
      rating: 4.5),
  Recipe(
      creatorName: 'Mark Kelvin',
      name: 'spice roasted chicken with flavored rice',
      duration: const Duration(minutes: 28),
      image: 'assets/images/search_result/3.png',
      rating: 3.8),
  Recipe(
      creatorName: 'Laura wilson',
      name: 'Chinese style Egg fried rice with sliced pork fillet',
      duration: const Duration(minutes: 32),
      image: 'assets/images/search_result/4.png',
      rating: 3.2),
];
