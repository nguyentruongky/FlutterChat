import 'package:chat/models/message_model.dart';
import 'package:flutter/material.dart';

class RecentChatRow extends StatelessWidget {
  const RecentChatRow({
    Key key,
    @required this.chat,
  }) : super(key: key);

  final Message chat;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5, right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: chat.unread ? Color(0xFFFFEEEE) : Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(chat.sender.imageUrl)),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    chat.sender.name,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Text(
                      chat.text,
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(chat.time,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.normal)),
              SizedBox(
                height: 5,
              ),
              chat.unread ? 
              Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Text("NEW",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.bold)),
                alignment: Alignment.center,
              ) : SizedBox.shrink()
            ],
          )
        ],
      ),
    );
  }
}
