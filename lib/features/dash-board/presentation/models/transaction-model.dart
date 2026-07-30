class TransactionModel {
  final String titile;
  final String subtitle;
  final String price;
  final bool isDeposite ; 

  TransactionModel(
    {
    this.isDeposite = false,
    required this.titile,
    required this.subtitle,
    required this.price,
  });
}
