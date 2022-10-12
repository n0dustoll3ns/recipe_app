class Product {
  final String name;
  final String image;
  Product({
    required this.name,
  }) : image = 'assets/images/ingridients/$name.png';
}

class Ingridient extends Product {
  final int weight;
  Ingridient({required super.name, required this.weight});
}

List<Product> products = [
  Product(name: 'Tomatos'),
  Product(name: 'Cabbage'),
  Product(name: 'Taco'),
  Product(name: 'Slice Bread'),
  Product(name: 'Green Onion'),
  Product(name: 'Omelette'),
  Product(name: 'Hot Dog'),
  Product(name: 'Onion'),
  Product(name: 'Lettuce'),
  Product(name: 'Red & Green Chilli'),
  Product(name: 'Spinach'),
  Product(name: 'Fries'),
  Product(name: 'Chicken'),
  Product(name: 'Burger'),
];
