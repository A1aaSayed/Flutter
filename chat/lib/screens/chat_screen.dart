import 'package:chat/constants.dart';
import 'package:chat/models/messages_model.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  static String id = 'ChatScreen';
  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollection);
  TextEditingController controller = TextEditingController();
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;

    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(kCreatedAt, descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<MessageModel> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(
              MessageModel.fromJson(snapshot.data!.docs[i]),
            );
          }
          return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: kPrimaryColor,
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      kLogo,
                      height: 60,
                    ),
                    const Text(
                      'Chat',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        controller: _controller,
                        reverse: true,
                        itemCount: messagesList.length,
                        itemBuilder: (context, index) {
                          return messagesList[index].id == email
                              ? ChatBubble(
                                  message: messagesList[index],
                                )
                              : ChatBubbleForFriend(
                                  message: messagesList[index],
                                );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: controller,
                      onSubmitted: (data) {
                        messages.add({
                          kMessage: data,
                          kCreatedAt: DateTime.now(),
                          'id': email,
                        });
                        controller.clear();
                        _controller.animateTo(
                          0,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn,
                        );
                      },
                      decoration: InputDecoration(
                        hintText: 'Send Message',
                        suffixIcon: const Icon(
                          Icons.send,
                          color: kPrimaryColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: kPrimaryColor,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        } else {
          return const Text('Loading...');
        }
      },
    );
  }
}
