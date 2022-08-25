import 'package:dartz/dartz.dart';

extension EitherX<L, R> on Either<L, R> {
  R? getOrNull() {
    return fold((l) => null, id);
  }
}
