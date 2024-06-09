
import '../../exceptions/exception.dart';
import 'eithers.dart';

class Responses {
  final int code;
  final String? reasonPhrase;
  final dynamic data;

  Responses({required this.code, this.reasonPhrase, this.data = const {}});
  @override
  String toString() {
    return 'code=$code\nstatusMessage=$reasonPhrase\n data=$data';
  }
}

extension ResponsesExtension on Responses {
  Right<AppException, Responses> get toRight => Right(this);
}