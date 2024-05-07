class DepositsCardListModel {
  String id;
  String name;
  String cardBrandLogo;
  String description;

  DepositsCardListModel({
    required this.id,
    required this.name,
    required this.cardBrandLogo,
    required this.description,
  });
}

class DepositsCardMobileTableModel {
  String card;
  String type;
  String balance;

  DepositsCardMobileTableModel(
      {required this.card, required this.type, required this.balance});
}
