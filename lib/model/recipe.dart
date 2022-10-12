import 'creator.dart';

class Recipe {
  final Creator creator;
  final String name;
  final Duration duration;
  final String image;
  final double rating;
  Recipe({
    required this.creator,
    required this.name,
    required this.duration,
    required this.image,
    required this.rating,
  });
}

List<Recipe> userRecipes = [
  Recipe(
      creator: creators[4],
      name: 'Steak with tomato sauce and bulgur rice.',
      duration: const Duration(minutes: 10),
      image: 'assets/images/user_recipes/1.png',
      rating: 4.5),
  Recipe(
      creator: creators[1],
      name: 'Pilaf sweet with lamb-and-raisins',
      duration: const Duration(minutes: 15),
      image: 'assets/images/user_recipes/2.png',
      rating: 4.0),
  Recipe(
      creator: creators[3],
      name: 'Rice Pilaf, Broccoli and Chicken',
      duration: const Duration(minutes: 28),
      image: 'assets/images/user_recipes/3.png',
      rating: 3.8),
  Recipe(
      creator: creators[2],
      name: 'Chicken meal with sauce',
      duration: const Duration(minutes: 32),
      image: 'assets/images/user_recipes/4.png',
      rating: 3.2),
  Recipe(
      creator: creators[0],
      name: 'Stir-fry chicken with broccoli in sweet and sour sauce and rice.',
      duration: const Duration(minutes: 45),
      image: 'assets/images/user_recipes/5.png',
      rating: 4.2),
];

List<Recipe> searchRecipes = [
  Recipe(
      creator: creators[4],
      name: 'Traditional spare ribs baked',
      duration: const Duration(minutes: 10),
      image: 'assets/images/search_result/1.png',
      rating: 4.5),
  Recipe(
      creator: creators[1],
      name: 'Lamb chops with fruity couscous and mint',
      duration: const Duration(minutes: 15),
      image: 'assets/images/search_result/2.png',
      rating: 4.0),
  Recipe(
      creator: creators[3],
      name: 'spice roasted chicken with flavored rice',
      duration: const Duration(minutes: 28),
      image: 'assets/images/search_result/3.png',
      rating: 3.8),
  Recipe(
      creator: creators[1],
      name: 'Chinese style Egg fried rice with sliced pork fillet',
      duration: const Duration(minutes: 32),
      image: 'assets/images/search_result/4.png',
      rating: 3.2),
  Recipe(
      creator: creators[2],
      name: 'Lamb chops with fruity couscous and mint',
      duration: const Duration(minutes: 15),
      image: 'assets/images/search_result/2.png',
      rating: 4.0),
  Recipe(
      creator: creators[0],
      name: 'Traditional spare ribs baked',
      duration: const Duration(minutes: 10),
      image: 'assets/images/search_result/1.png',
      rating: 4.5),
  Recipe(
      creator: creators[2],
      name: 'spice roasted chicken with flavored rice',
      duration: const Duration(minutes: 28),
      image: 'assets/images/search_result/3.png',
      rating: 3.8),
  Recipe(
      creator: creators[0],
      name: 'Chinese style Egg fried rice with sliced pork fillet',
      duration: const Duration(minutes: 32),
      image: 'assets/images/search_result/4.png',
      rating: 3.2),
];

List<Recipe> savedRecipes = [
  Recipe(
      creator: creators[1],
      name: 'Traditional spare ribs baked',
      duration: const Duration(minutes: 20),
      image: 'assets/images/saved_recipes/1.png',
      rating: 3.8),
  Recipe(
      creator: creators[0],
      name: 'spice roasted chicken with flavored rice',
      duration: const Duration(minutes: 32),
      image: 'assets/images/saved_recipes/2.png',
      rating: 3.2),
  Recipe(
      creator: creators[3],
      name: 'Spicy fried rice mix chicken bali',
      duration: const Duration(minutes: 15),
      image: 'assets/images/saved_recipes/3.png',
      rating: 4.2),
  Recipe(
      creator: creators[4],
      name: 'Lamb chops with fruity couscous and mint',
      duration: const Duration(minutes: 45),
      image: 'assets/images/saved_recipes/4.png',
      rating: 4.5),
];      
