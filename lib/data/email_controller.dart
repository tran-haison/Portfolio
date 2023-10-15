import 'package:injectable/injectable.dart';
import 'package:portfolio/data/email_model.dart';
import 'package:portfolio/data/email_service.dart';

@Singleton()
class EmailController {
  const EmailController(
    this._emailService,
  );

  final EmailService _emailService;

  Future<void> sendEmail({
    required String email,
    required String name,
    required String subject,
    required String message,
  }) async {
    final emailModel = EmailModel(
      senderEmail: email,
      senderName: name,
      subject: subject,
      message: message,
    );

    await _emailService.sendEmail(
      emailModel: emailModel,
    );
  }
}
