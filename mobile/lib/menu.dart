// ignore: unused_import

class MenuData{

  final String dash_title, dash_image, dash_url;

  MenuData({required this.dash_title, required this.dash_image, required this.dash_url});
}

List<MenuData> menuDatas = [
  MenuData(
    dash_title: "Account Balance",
    dash_image: "images/accbal.png",
    dash_url: "AccountBalance()",
  ),
  MenuData(
    dash_title: "Transfer Services",
    dash_image: "images/montra.png",
    dash_url: "TransferServices()",
  ),
  MenuData(
    dash_title: "Bill Payments",
    dash_image: "images/billpay.png",
    dash_url: "BillPayments()",
  ),
  MenuData(
    dash_title: "Cheque Services",
    dash_image: "images/cheser.png",
    dash_url: "ChequeServices()",
  ),
  MenuData(
    dash_title: "Settings",
    dash_image: "images/settings.png",
    dash_url: "Settings()",
  ),
];

class BillMenuData{

  final String dash_title,dash_description, dash_url;

  BillMenuData({required this.dash_title, required this.dash_description,required this.dash_url});
}

List<BillMenuData> billMenuDatas = [
  BillMenuData(
    dash_title: "One Time Bill Payment",
    dash_description:"Make Payments to Unregistered Billers",
    dash_url: "OnetimePayment()",
  ),
  BillMenuData(
    dash_title: "Favourite Bill Payment",
    dash_description:"Make Payments to Registered Billers",
    dash_url: "SelectFavouriteBill()",
  ),
  BillMenuData(
    dash_title: "Manage Favourite Bill",
    dash_description:"Add, Update & Delete Your Favourite Bills",
    dash_url: "Fav_Bill_DashBoard()",
  ),
];

class Fav_Bill_Data{

  final String dash_title,dash_description, dash_url;

  Fav_Bill_Data({required this.dash_title, required this.dash_description,required this.dash_url});
}

List<Fav_Bill_Data> fav_Bill_Datas = [
  Fav_Bill_Data(
    dash_title: "Add Favourite Bill",
    dash_description:"Add new Favourite Bills to the Account",
    dash_url: "AddFavoriteBillPayment()",
  ),
  Fav_Bill_Data(
    dash_title: "View Favourite Bill",
    dash_description:"View, Update & Delete added Favourite Bills",
    dash_url: "ViewAllFavouriteBills()",
  )
];

class SB_Beneficiary{

  final String dash_title,dash_description, dash_url;

  SB_Beneficiary({required this.dash_title, required this.dash_description,required this.dash_url});
}

List<SB_Beneficiary> sb_Beneficiarys = [
  SB_Beneficiary(
    dash_title: "Add Beneficiary",
    dash_description:"Add Your Favourite Beneficiary to the System",
    dash_url: "AddSameBankBeneficiary()",
  ),
  SB_Beneficiary(
    dash_title: "View Beneficiary",
    dash_description:"You can View, Edit & Delete Favourite Beneficiary",
    dash_url: "ViewAllBeneficiarySB()",
  ),
];

class ChequeMenuData{

  final String dash_title,dash_description, dash_url;

  ChequeMenuData({required this.dash_title, required this.dash_description,required this.dash_url});
}

List<ChequeMenuData> chequeMenuDatas = [
  ChequeMenuData(
    dash_title: "Cheque Status Inquiry",
    dash_description:"You can check the status of all the cheques",
    dash_url: "",
  ),
  ChequeMenuData(
    dash_title: "Unrealised Cheque Inquiry",
    dash_description:"You can check the Unrealized Cheque Inquiries",
    dash_url: "",
  ),
];

class SB_Transaction{

  final String dash_title,dash_description, dash_url;

  SB_Transaction({required this.dash_title, required this.dash_description,required this.dash_url});
}

List<SB_Transaction> SB_Transactions = [
  SB_Transaction(
    dash_title: "One Time Transaction",
    dash_description:"Fund transfer to third party Unregistered",
    dash_url: "SameBankTransactionStep1()",
  ),
  SB_Transaction(
    dash_title: "Favourite Beneficiary",
    dash_description:"You can View, Edit & Delete Favourite Beneficiary",
    dash_url: "SB_Dashboard()",
  ),
];
