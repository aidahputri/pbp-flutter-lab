class Budget {
  static List<Budget> listBudget = [];
  String title;
  int nominal;
  String type;
  DateTime date;

  Budget({
    required this.title,
    required this.nominal,
    required this.type,
    required this.date,
  });

  static void addBudget({
    required judul,
    required nominal,
    required jenis,
    required tanggal,
  }) {
    listBudget.add(Budget(
      title: judul,
      nominal: nominal,
      type: jenis,
      date: tanggal,
    ));
  }
}