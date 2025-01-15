import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:googleapis_auth/auth_io.dart';

class NotificationService {
  static const String _projectId = 'payment-24d85';

  Future<String> _getAccessToken() async {
    final credentials = ServiceAccountCredentials.fromJson({
      "type": "service_account",
      "project_id": "payment-24d85",
      "private_key_id": "90804659ae14358e2e356bcb59b3f8789c67ad8f",
      "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQC+E8RRzYbHYMFg\ndh3QsXTs6gWHCx8Tu14quprotXGcXwgfEadsTxVSCGDwWuHeqvhNh75RMvMc+Pwi\nntToAB+x3GYNHL+i0u+dYf7dwQwhO4w+pKtm07hrOdR177dF89w3hNCN9x226ZfZ\nZhjQZQRqS2HnzVn0zCu3TA6N3m3nxmD/hX0n4jF/3gOC7knsFrpSQot3dONwtaS5\nYWh7c5tAYUpzwVeHWhrLMpM9aEMRRaxahzUZNu6KrTdZ4TK8oH5epsYJsgC8/SEJ\nmLo944mxK9Hbq+QDgGyuIKpkCzAYKb/sk2LhL69g9b56oLyCtqrHAGooAvnYmt3j\nVPJMahhbAgMBAAECggEAAIR3q9gyP8QhgZ9OqgsIfO5mrA3rUMFLGJZ+CIPkquds\nJr7Vr17QYTAHcgGWeYpsFrCMGpDNpA6NBb1kIOSrYi5p1SctvVx/jMfpa1yOGTtZ\nB8n+BVW0kUwAh6+hiV3ReX9gZcee8w5eN4XdeOOCVo1UFDzVq6LGuCKMfW+GV7zV\nQCFvI0ue0QJVZwAG2ogb6Vr+dDcVxdRkrQQJDkR99LtKaFAKBd7JKD22Jz/j6MSZ\n9cK2ho3XaGjWAwt2JjWtcG0AbrzX6+nDdvTCCvC/Fro97c326RR/SUn5AWOqmmSI\n+XCpeTD1DEZn7Kn1V7OzjKQxs0aWkXOl/kD9e+fxwQKBgQDO7ejRyTtkRNIfRA/M\n2rHtNtQ4qOTOtCZjv8zGn2Fj9slhXTktlhYUWtEXNR6CN0nRqBKj6LBzm0WkI9/t\nMzn1gP72aBnyVxe0y6CcAHhjH2mWhy/BpI+6gjOcJvQVNUyAh2aCvxuLI9WWNAcO\nyhUgEx7g9Z9jJc3Q+jotiNc91wKBgQDrJtAwsz8C5fIcdKotarSnqGOqIBQPsFdd\nkFaIsMNF7ii5drAtfSISleYQ4eqqCs+sH/90Cl9/RFPLC84uL12npa2A1ibTXuxU\nEbzs7ipJ8YMQ/dEExEbmizxNj02vzPXvCEVNKp3dgWqqtCNH2qnQLZk19djVr0GM\nRsKAVb/BHQKBgQCx3kRK10tq49EtuOZP8wgP3BpNXbfXiXiaM0qEzIj9UStGusgk\nTCdMdcfWx/0idv3H7k2fgKrzpFsXPRMFJAxE4A3IpjDvYzdoW8QBdFIG+gBbuHYv\nYBF/gt1z8vPJqxfIPxq5diXp0vKL+sq6RrAj8uuO+PJ5Wgxw/jW14DML3wKBgQDG\ns0tke3IZLtjAtsw+CFaS/TUKQoTxJN8ODrMwWb0H0FDVNrd0GLK75bI8Pcoe2XfW\nSEuBcGp1jfUIM/eLCzcmPFc58LtqDGHCQCLWSgGt7cgEiZUfZANNOAZCu363uIdv\n7hsxM3ul+n95szHEu76WTJGUCSOqnKbUs84Sx2J6+QKBgQC0OfrC9fuVwLJoJfB0\nNse/ks+sMKAq40a8RNoO9MDNOMgPwWuEN/1chZ+pOBbCrwhCD7RiUm6A8plB0kuU\nQ1nM5zZw2dhNjkeyvne8NRyFkqoci9/+J1qcOfftq5wupJ/XvVNQu8HqmYoi/ok8\nny5TXDWQ/pNDHoLJ2RyNe6LHoQ==\n-----END PRIVATE KEY-----\n",
      "client_email": "firebase-adminsdk-2z893@payment-24d85.iam.gserviceaccount.com",
      "client_id": "101782734877920840453",
      "auth_uri": "https://accounts.google.com/o/oauth2/auth",
      "token_uri": "https://oauth2.googleapis.com/token",
      "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
      "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-2z893%40payment-24d85.iam.gserviceaccount.com",
      "universe_domain": "googleapis.com"
    });

    final scopes = ['https://www.googleapis.com/auth/firebase.messaging'];
    final client = await clientViaServiceAccount(credentials, scopes);
    return client.credentials.accessToken.data;
  }

  Future<bool> sendNotificationToDevice({
    required String deviceToken,
    required String title,
    required String body,
    Map<String, dynamic>? data,
  }) async {
    try {
      final accessToken = await _getAccessToken();
      final response = await http.post(
        Uri.parse('https://fcm.googleapis.com/v1/projects/$_projectId/messages:send'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken',
        },
        body: jsonEncode({
          'message': {
            'token': deviceToken,
            'notification': {
              'title': title,
              'body': body,
            },
            'data': data ?? {},
            'android': {
              'priority': 'high',
              'notification': {
                'sound': 'default'
              }
            },
            'apns': {
              'headers': {
                'apns-priority': '10',
              },
              'payload': {
                'aps': {
                  'alert': {
                    'title': title,
                    'body': body,
                  },
                  'sound': 'default',
                }
              }
            }
          }
        }),
      );
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final messageId = responseData['name']; // FCM message ID
        print('Message sent successfully. ID: $messageId');
        return true;
      } else {
        print('Error sending message: ${response.body}');
        return false;
      }
    } catch (e) {
      print('Exception: $e');
      return false;
    }
  }

}

