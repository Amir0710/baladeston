class User {
  final int id;
  final String fullName;
  final String email;
  final String phoneNumber;
  final String? avatarUrl;
  final String status;

  const User({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    this.avatarUrl,
    required this.status,
  });
}
