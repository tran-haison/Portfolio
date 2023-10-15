import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/data/email_model.dart';

@Singleton()
class EmailService {
  const EmailService(
    this._dio,
  );

  final Dio _dio;

  Future<void> sendEmail({
    required EmailModel emailModel,
  }) async {
    final data = {
      'personalizations': [
        {
          'to': [
            {
              'email': 'haison250199@gmail.com',
            },
          ],
          'subject': '${emailModel.subject} | ${emailModel.senderName}}',
        },
      ],
      'from': {
        'email': emailModel.senderEmail,
      },
      'content': [
        {
          'type': 'text/plain',
          'value': emailModel.message,
        },
      ],
    };

    await _dio.post(
      '/mail/send',
      data: data,
    );
  }
}
