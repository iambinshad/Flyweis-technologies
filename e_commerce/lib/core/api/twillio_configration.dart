
import 'dart:convert';
import 'package:http/http.dart' as http;

void sendTwilioSMS(String number,String otp) async {
  final accountSid = 'ACe176242916f6018fe9821611e30a6acc';
  final authToken = '4617fdbe93e4a70385cbcb409d3a96c2';

  final twilioPhoneNumber = '+18147184745';
  final userPhoneNumber = "+91${number}";
  final messageBody = 'OTP Number:$otp';

  final url = Uri.parse('https://api.twilio.com/2010-04-01/Accounts/$accountSid/Messages.json');

  final response = await http.post(
    url,
    headers: {
      'Authorization': 'Basic ' + base64Encode(utf8.encode('$accountSid:$authToken')),
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: {
      'From': twilioPhoneNumber,
      'To': userPhoneNumber,
      'Body': messageBody,
    },
  );

  if (response.statusCode == 201) {
    print('SMS sent successfully');
  } else {
    print('Failed to send SMS');
    print('Response body: ${response.body}');
  }
}

