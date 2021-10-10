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

  final String dash_title, dash_image, dash_url;

  BillMenuData({required this.dash_title, required this.dash_image, required this.dash_url});
}

List<BillMenuData> billMenuDatas = [
  BillMenuData(
    dash_title: "One Time Bill Payment",
    dash_image: "images/accbal.png",
    dash_url: "OnetimePayment()",
  ),
  BillMenuData(
    dash_title: "Favourite Bill Payment",
    dash_image: "images/montra.png",
    dash_url: "TransferServices()",
  ),
  BillMenuData(
    dash_title: "Manage Favourite Bill",
    dash_image: "images/billpay.png",
    dash_url: "BillPayments()",
  ),
];

class Fav_Bill_Data{

  final String dash_title, dash_image, dash_url;

  Fav_Bill_Data({required this.dash_title, required this.dash_image, required this.dash_url});
}

List<Fav_Bill_Data> fav_Bill_Datas = [
  Fav_Bill_Data(
    dash_title: "Add Favourite Bill",
    dash_image: "images/accbal.png",
    dash_url: "OnetimePayment()",
  ),
  Fav_Bill_Data(
    dash_title: "View Favourite Bill",
    dash_image: "images/montra.png",
    dash_url: "TransferServices()",
  )
];

class SB_Beneficiary{

  final String dash_title, dash_image, dash_url;

  SB_Beneficiary({required this.dash_title, required this.dash_image, required this.dash_url});
}

List<SB_Beneficiary> sb_Beneficiarys = [
  SB_Beneficiary(
    dash_title: "Add Beneficiary",
    dash_image: "images/accbal.png",
    dash_url: "OnetimePayment()",
  ),
  SB_Beneficiary(
    dash_title: "View Beneficiary",
    dash_image: "images/montra.png",
    dash_url: "TransferServices()",
  ),
];

class ChequeMenuData{

  final String dash_title, dash_image, dash_url;

  ChequeMenuData({required this.dash_title, required this.dash_image, required this.dash_url});
}

List<ChequeMenuData> chequeMenuDatas = [
  ChequeMenuData(
    dash_title: "Cheque Status Inquiry",
    dash_image: "images/accbal.png",
    dash_url: "OnetimePayment()",
  ),
  ChequeMenuData(
    dash_title: "Unrealised Cheque Inquiry",
    dash_image: "images/montra.png",
    dash_url: "TransferServices()",
  ),
];
