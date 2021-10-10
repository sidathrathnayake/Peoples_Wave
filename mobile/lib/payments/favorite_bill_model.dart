class Favorite_Bill_Model {
  String serviceProvider;
  String payeeDescription;
  String referenceNumber;

  Favorite_Bill_Model(
    this.serviceProvider,
    this.payeeDescription,
    this.referenceNumber,
  );
}

class Favorite_Bill_Main {
  final String id;
  final String serviceProvider;
  final String payeeDescription;
  final String referenceNumber;

  Favorite_Bill_Main({
    required this.id,
    required this.serviceProvider,
    required this.payeeDescription,
    required this.referenceNumber
  });

  factory Favorite_Bill_Main.fromJson(Map<String, dynamic> json) {
    return Favorite_Bill_Main(
      id: json['billId'],
      serviceProvider: json['serviceProvider'],
      payeeDescription: json['payeeDescription'],
      referenceNumber: json['referenceNumber'],
    );
  }
}

class Favorite_Bill_Update {
  String id;
  String serviceProvider;
  String payeeDescription;
  String referenceNumber;

  Favorite_Bill_Update(
    this.id,
    this.serviceProvider,
    this.payeeDescription,
    this.referenceNumber,
  );
}

class Favorite_Bill_Trasfer {
  String id;
  String serviceProvider;
  String accountNumber;
  String referenceNumber;
  String amount;

  Favorite_Bill_Trasfer(
    this.id,
    this.serviceProvider,
    this.accountNumber,
    this.referenceNumber,
    this.amount,
  );
}