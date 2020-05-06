import './user_mode.dart';

class Message {
  User sender;
  String time;
  String text;
  bool isLiked;
  bool unread;

  Message({User sender, String time, String text, bool isLiked = false, bool unread}) {
    this.sender = sender;
    this.time = time;
    this.text = text;
    this.unread = unread;
    this.isLiked = isLiked;
  }
}
