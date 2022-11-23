class ResponseModel {
  String msg;
  dynamic response;
  bool success;
  int response_code;
  ResponseModel(
      {this.msg = 'null',
      this.response = 'null',
      this.success = false,
      this.response_code = 0});

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return ResponseModel();
    return ResponseModel(
        msg: json['message'],
        response: json['response'],
        success: getBool(json['success']),
        response_code: getDouble(json['_response_code']).toInt());
  }

  static double getDouble(value) {
    return value == null ? 0.0 : value.toDouble();
  }

  static bool getBool(value) {
    return value == null ? false : value;
  }
}
