class Meal {
  final String name;
  final Duration duration;
  final String image;
  final double rating;
  Meal({
    required this.name,
    required this.duration,
    required int imgID,
    required this.rating,
  }) : image = 'assets/images/meals/$imgID.png';
}

List<Meal> meals = [
  Meal(name: 'Classic Greek Salad', duration: const Duration(minutes: 15), imgID: 1, rating: 4.5),
  Meal(name: 'Crunchy Nut Coleslaw', duration: const Duration(minutes: 10), imgID: 2, rating: 4.0),
  Meal(
      name: 'Shrimp Chicken Andouille Sausage Jambalaya',
      duration: const Duration(minutes: 35),
      imgID: 3,
      rating: 3.8),
  Meal(name: 'Barbecue Chicken Jollof Rice', duration: const Duration(minutes: 40), imgID: 4, rating: 3.2),
  Meal(name: 'Portuguese Piri Piri Chicken', duration: const Duration(minutes: 30), imgID: 5, rating: 4.2),
];
