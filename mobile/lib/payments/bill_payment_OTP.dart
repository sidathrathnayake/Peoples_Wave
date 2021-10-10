class OTP_Bill_Pay {
  final String otp;

  OTP_Bill_Pay({
    required this.otp,
  });

  factory OTP_Bill_Pay.fromJson(Map<String, dynamic> json) {
    return OTP_Bill_Pay(
      otp: json['otp'],
    );
  }
}

class OTP_Bill_Pay_New {
  String otp;

  OTP_Bill_Pay_New(
    this.otp,
  );
}
