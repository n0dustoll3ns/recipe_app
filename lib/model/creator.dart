class Creator {
  final String name;
  final String image;
  final String? location;

  Creator({
    required this.name,
    required this.location,
  }) : image = 'assets/images/user_photos/$name.png';
}

List<Creator> creators = [
  Creator(name: 'Miquel Ferran', location: 'Alberic, Italy'),
  Creator(name: 'Laura wilson', location: 'Lagos, Nigeria'),
  Creator(name: 'Isabella Ethan', location: 'Nurnberg, Germany'),
  Creator(name: 'Lucas Moura', location: 'São Paulo, Brazil'),
  Creator(name: 'James Milner', location: 'San Francisco, USA'),
];
