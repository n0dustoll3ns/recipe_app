import 'package:recipe_app/model/notification.dart';

List<String> cuisines = [
  'Indian',
  'Italian',
  'Asian',
  'Chinese',
  'French',
  'Vietnam',
  'American',
  'Greek',
];
List<String> timeFilters = [
  'All',
  'Newest',
  'Oldest',
  'Popularity',
];
List<String> categoryFiltrers = [
  'All',
  'Cereal',
  'Vegetables',
  'Dinner ★',
  'Chinese',
  'Local Dish',
  'Fruit',
  'BreakFast',
  'Spanish',
  'Dutch',
  'Lunch',
];

List<bool Function(NotificationMessage)> notificationSorters = [
  (NotificationMessage message) => message.dateTime.day == DateTime.now().day,
  (NotificationMessage message) => message.dateTime.day + 1 == DateTime.now().day,
  (NotificationMessage message) => message.dateTime.day + 1 < DateTime.now().day,
];
List<bool Function(NotificationMessage message)> notificationFilters = [
  (NotificationMessage message) => true,
  (NotificationMessage message) => message.unread == false,
  (NotificationMessage message) => message.unread == true,
];

List<String> mainPageIcons = [
  'assets/icons/home',
  'assets/icons/favorite',
  'assets/icons/notification_bing',
  'assets/icons/profile',
];
