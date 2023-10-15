class EmailModel {
  const EmailModel({
    required this.senderEmail,
    required this.senderName,
    required this.subject,
    required this.message,
  });

  final String senderEmail;
  final String senderName;
  final String subject;
  final String message;
}
