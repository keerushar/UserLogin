class User {
  final String id;
  final String name;
  final String company;
  final String? location;

  const User(
      {required this.id,
      required this.name,
      required this.company,
      this.location});
}
