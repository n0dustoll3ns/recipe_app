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
    required int imgID,
    required this.rating,
  }) : image = 'assets/images/user_recipes/$imgID.png';
}

List<Recipe> meals = [
  Recipe(
      creatorName: 'James Milner',
      name: 'Steak with tomato sauce and bulgur rice.',
      duration: const Duration(minutes: 10),
      imgID: 1,
      rating: 4.5),
  Recipe(
      creatorName: 'Laura wilson',
      name: 'Pilaf sweet with lamb-and-raisins',
      duration: const Duration(minutes: 15),
      imgID: 2,
      rating: 4.0),
  Recipe(
      creatorName: 'Lucas Moura',
      name: 'Rice Pilaf, Broccoli and Chicken',
      duration: const Duration(minutes: 28),
      imgID: 3,
      rating: 3.8),
  Recipe(
      creatorName: 'Isabella Ethan',
      name: 'Chicken meal with sauce',
      duration: const Duration(minutes: 32),
      imgID: 4,
      rating: 3.2),
  Recipe(
      creatorName: 'Miquel Ferran',
      name: 'Stir-fry chicken with broccoli in sweet and sour sauce and rice.',
      duration: const Duration(minutes: 45),
      imgID: 5,
      rating: 4.2),
];
