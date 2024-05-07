class DepositsBankAccountListModel {
  String id;
  String name;
  String bankLogo;
  String description;

  DepositsBankAccountListModel({
    required this.id,
    required this.name,
    required this.bankLogo,
    required this.description,
  });
}

class DepositsAccountMobileTableModel {
  String id;
  String account;
  String type;
  String balance;

  DepositsAccountMobileTableModel({
    required this.id,
    required this.account,
    required this.type,
    required this.balance,
  });
}
