import 'package:meta/meta.dart';

import '../entities/account_entity.dart';

abstract class Auhtentication {
  Future<AccountEntity> auth({
    @required String email,
    @required String password,
  });
}
