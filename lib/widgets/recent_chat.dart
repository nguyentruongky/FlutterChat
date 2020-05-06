import 'package:chat/models/message_model.dart';
import 'package:chat/models/test_data.dart';
import 'package:chat/screens/chat_screen.dart';
import 'package:chat/widgets/favourite_contacts.dart';
import 'package:flutter/material.dart';

import 'recent_chat_row.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(children: <Widget>[
          FavouriteContact(),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  final chat = chats[index];
                  return GestureDetector(
                    onTap: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen(user: chat.sender,)));
                    },
                    child: RecentChatRow(chat: chat));
                },
                itemCount: chats.length,
              ),
            ),
          ))
        ]),
      ),
    );
  }
}
