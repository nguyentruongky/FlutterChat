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
  Message(
      sender: lanNgoc,
      text: "Hi. Can I help you?",
      time: "now",
      unread: true,
      isLiked: false),
  Message(
      sender: ngoThanhVan,
      text: "Hi. Er … I really like these trainers. How much are they?",
      time: "yesterday",
      unread: false,
      isLiked: false),
  Message(
      sender: nhaPhuong,
      text: "Oh … what colour would you like?",
      time: "2 hours ago",
      unread: true,
      isLiked: false),
];

var messages = [
  Message(
      sender: lanNgoc,
      text: "Hi. Can I help you?",
      time: "now",
      unread: true,),
  Message(
      sender: midu,
      text: "Hello. How much is this magazine?",
      time: "yesterday",
      unread: false,
      isLiked: false),
  Message(
      sender: nhaPhuong,
      text: "Let’s see … Top Sounds, that’s £1.99.",
      time: "2 hours ago",
      unread: true,
      isLiked: true),
  Message(
      sender: midu,
      text: "OK, can I have the magazine and do you have a bottle of water?",
      time: "now",
      unread: true,
      isLiked: false),
  Message(
      sender: ngoThanhVan,
      text: "Yes",
      time: "yesterday",
      unread: false,
      isLiked: false),
  Message(
      sender: nhaPhuong,
      text: "Have you got cold ones?",
      time: "2 hours ago",
      unread: true,
      isLiked: true),
  Message(
      sender: lanNgoc,
      text: "Over there in the fridge. Is that everything?",
      time: "now",
      unread: true,
      isLiked: false),
  Message(
      sender: midu,
      text: " I think so. Oh … and these sweets.",
      time: "yesterday",
      unread: false,
      isLiked: false),
  Message(
      sender: midu,
      text: "How much is that?",
      time: "2 hours ago",
      unread: true,
      isLiked: false),
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
