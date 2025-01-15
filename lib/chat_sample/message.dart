import 'dart:typed_data';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class Message {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Message({this.message = '', this.timestamp, this.image});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Message.fromJson({required Map<String, dynamic> json}) {
    return Message(
      message: json['message'] ?? '',
      timestamp: json['timestamp'] != null
          ? DateTime.tryParse(json['timestamp']!)
          : null,
      image: json['image'],
    );
  }

  final String? message;

  final DateTime? timestamp;

  final Uint8List? image;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Message copyWith({String? message, DateTime? timestamp, Uint8List? image}) {
    return Message(
      message: message ?? this.message,
      timestamp: timestamp ?? this.timestamp,
      image: image ?? this.image,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'timestamp': timestamp?.toIso8601String(),
      'image': image,
    };
  }
}
