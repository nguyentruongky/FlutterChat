import 'package:chat/models/message_model.dart';
import 'package:chat/models/test_data.dart';
import 'package:chat/models/user_mode.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final User user;
  ChatScreen({this.user});

  @override
  Widget build(BuildContext context) {
    _buildMessage(Message message, bool isMe) {
      final msgItem = Container(
          margin: isMe
              ? EdgeInsets.only(top: 8, bottom: 8, left: 80)
              : EdgeInsets.only(top: 8, bottom: 8),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
              color: isMe ? Color(0xFFFEF9EB) : Color(0xFFFFEFEE),
              borderRadius: isMe
                  ? BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15))
                  : BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                message.time,
                style: TextStyle(
                    color: Colors.blueGrey.withAlpha(70),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                message.text,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ));

      if (isMe) {
        return msgItem;
      }
      return Row(
        children: <Widget>[
          msgItem,
          !isMe
              ? IconButton(
                  icon: message.isLiked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                  iconSize: 30,
                  color: message.isLiked ? Theme.of(context).primaryColor : Colors.blueGrey,
                  onPressed: () {},
                )
              : SizedBox.shrink()
        ],
      );
    }

    _buildMessageComposer() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        height: 70,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.photo),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
            Expanded(
                child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration:
                  InputDecoration.collapsed(hintText: "Send a message..."),
            )),
            IconButton(
              icon: Icon(Icons.send),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          ),
          title: Text(
            user.name,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {},
            )
          ]),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      child: ListView.builder(
                          reverse: true,
                          padding: EdgeInsets.only(top: 15),
                          itemCount: messages.length,
                          itemBuilder: (context, index) {
                            final message = messages[index];
                            final isMe = message.sender.id == currentUser.id;
                            return _buildMessage(message, isMe);
                          }),
                    ))),
            _buildMessageComposer()
          ],
        ),
      ),
    );
  }
}
