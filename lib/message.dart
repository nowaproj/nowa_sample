import 'package:nowa_runtime/nowa_runtime.dart';
import 'dart:convert';

@NowaGenerated()
class Message {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Message({this.message = '', this.timestamp});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Message.fromJson({required Map<String, dynamic> json}) {
    return Message(
        message: json['message'] ?? '',
        timestamp: json['timestamp'] != null
            ? DateTime.tryParse(json['timestamp']!)
            : null);
  }

  final String? message;

  final DateTime? timestamp;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Message copyWith({String? message, DateTime? timestamp}) {
    return Message(
        message: message ?? this.message,
        timestamp: timestamp ?? this.timestamp);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'message': message, 'timestamp': timestamp?.toIso8601String()};
  }
}
