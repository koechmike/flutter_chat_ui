import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/models/message_model.dart';
import 'package:flutter_chat_ui/screens/chat_screen.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  'Favorite Contacts',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sangrita',
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.more_horiz_outlined),
                  iconSize: 30.0,
                  color: Colors.black,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: 120.0,
            // color: Colors.green,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20.0),
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: favorites[index],
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                              AssetImage(favorites[index].imageUrl),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          favorites[index].name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Sangrita',
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
