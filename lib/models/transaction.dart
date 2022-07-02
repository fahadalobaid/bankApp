class Transactions {
  Transactions(
      {required this.name,
      required this.date,
      required this.value,
      required this.TranId});

  String name;
  String date;
  double value;
  String TranId;
}

List<Transactions> trans = [
  Transactions(
      name: "Xmax", date: "10/06/2022", value: 42.0, TranId: "1I4SYH67N"),
  Transactions(
      name: "BWM", date: "29/6/2022", value: 6.000, TranId: "FAYEMX0N7"),
  Transactions(
      name: "BWM", date: "29/6/2022", value: 6.000, TranId: "FAYEMX0N7"),
  Transactions(
      name: "BWM", date: "29/6/2022", value: 6.000, TranId: "FAYEMX0N7"),
  Transactions(
      name: "BWM", date: "29/6/2022", value: 6.000, TranId: "FAYEMX0N7"),
];
void main() {
  for (Transactions x in trans) {
    print(x.name);
  }
}
