import 'package:flutter/foundation.dart';

import '../../domain/usecases/authentication.dart';
import '../http/http.dart';

class RemoteAuthentication {
  final HttpClient httpClient;
  final String url;

  RemoteAuthentication({@required this.httpClient, @required this.url});

  Future<void> auth(AuthenticationParams params) async {
    final body ={ 'email': params.email, 'password': params.secret };
    await httpClient.request(url: url, method: 'POST', body: body);
  }
}
