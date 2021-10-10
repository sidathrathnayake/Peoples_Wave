class OTP_SB {
  final String otp;

  OTP_SB({
    required this.otp,
  });

  factory OTP_SB.fromJson(Map<String, dynamic> json) {
    return OTP_SB(
      otp: json['otp'],
    );
  }
}

class OTP_SB_New {
  String otp;

  OTP_SB_New(
    this.otp,
  );
}
