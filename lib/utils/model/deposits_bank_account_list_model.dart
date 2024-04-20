class DepositsBankAccountListModel {
  String name;
  String bankLogo;
  String description;

  DepositsBankAccountListModel(
      {required this.name, required this.bankLogo, required this.description});
}

class DepositsAccountMobileTableModel {
  String account;
  String type;
  String balance;

  DepositsAccountMobileTableModel(
      {required this.account, required this.type, required this.balance});
}
