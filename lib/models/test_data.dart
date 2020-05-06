import 'package:chat/models/message_model.dart';
import 'package:chat/models/user_mode.dart';

final User currentUser = midu;
final User ngoThanhVan =
    User(id: 4, name: "Thanh Van", imageUrl: "assets/avatars/NgoThanhVan.jpg");

final User midu =
    User(id: 1, name: "Midu", imageUrl: "assets/avatars/Midu.jpg");

final User nhaPhuong =
    User(id: 2, name: "Nha Phuong", imageUrl: "assets/avatars/NhaPhuong.jpg");

final User lanNgoc = User(
    id: 3, name: "Lan Ngoc", imageUrl: "assets/avatars/NinhDuongLanNgoc.jpg");

var chats = [
  Message(sender: lanNgoc, text: "Hello", time: "now", unread: true),
  Message(sender: ngoThanhVan, text: "Hello", time: "yesterday", unread: false),
  Message(sender: nhaPhuong, text: "Hello", time: "2 hours ago", unread: true),
];

var messages = [
  Message(sender: lanNgoc, text: "Hello", time: "now", unread: true),
  Message(sender: midu, text: "Hello", time: "yesterday", unread: false),
  Message(sender: nhaPhuong, text: "Hello", time: "2 hours ago", unread: true, isLiked: true),
  Message(sender: midu, text: "Hello", time: "now", unread: true),
  Message(sender: ngoThanhVan, text: "Hello", time: "yesterday", unread: false),
  Message(sender: nhaPhuong, text: "Hello", time: "2 hours ago", unread: true, isLiked: true),
  Message(sender: lanNgoc, text: "Hello", time: "now", unread: true),
  Message(sender: lanNgoc, text: "Hello", time: "yesterday", unread: false),
  Message(sender: nhaPhuong, text: "Hello", time: "2 hours ago", unread: true),
];

var favourites = [
  lanNgoc,
  ngoThanhVan,
  nhaPhuong,
  midu,
  lanNgoc,
  ngoThanhVan,
  nhaPhuong,
  midu
];
