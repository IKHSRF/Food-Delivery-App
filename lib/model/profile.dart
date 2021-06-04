class Profile {
  final String name;
  final String email;
  final String photo;
  final String noHp;
  final String address;

  Profile({
    required this.name,
    required this.email,
    required this.photo,
    required this.noHp,
    required this.address,
  });
}

Profile profile = Profile(
  name: "User Display Name",
  email: 'user@gmail.com',
  photo: "assets/images/profile.jpg",
  noHp: "012345678910",
  address: "Jakarta Barat",
);
