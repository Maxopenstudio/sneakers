/*
Author: XamDesign
Date: 10.06.2023
*/

class Message {
  final String text;
  final String url;
  final String image;
  final DateTime timestamp;
  final bool isSentByMe;

  Message({
    required this.text,
    required this.timestamp,
    required this.isSentByMe,
    this.url = "",
    this.image = "",
  });
}
