import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class Message {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Message({this.message = ''});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Message.fromJson({required Map<String, dynamic> json}) {
    return Message(message: json['message'] ?? '');
  }

  final String? message;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Message copyWith({String? message}) {
    return Message(message: message ?? this.message);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'message': message};
  }
}
