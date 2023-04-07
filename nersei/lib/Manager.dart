class Manager {
  final String email = 'nerselmak@gmail.com';
  final String sifre = "1234";

  late String mail;
  late String parola;
  Manager(this.mail, this.parola);

  bool kontrol() {
    if (this.mail == email && this.parola == sifre) {
      return true;
    } else {
      return false;
    }
  }
}
