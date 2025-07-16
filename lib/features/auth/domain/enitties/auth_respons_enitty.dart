abstract class AuthResponseEntity {
 final String message;
 final Map<String, dynamic> data;
 final int statusCode;
 final bool status;
 AuthResponseEntity({
    required this.message,
    required this.data,
    required this.statusCode,
    required this.status,
  });

  }