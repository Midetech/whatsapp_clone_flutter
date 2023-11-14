import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard(
      {super.key,
      required this.name,
      required this.message,
      required this.time});
  final String name;
  final String message;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff1A120B),
      borderOnForeground: false,
      child: ListTile(
        tileColor: Color(0xff1A120B),
        contentPadding: const EdgeInsets.all(0),
        leading: const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 72, 72, 71),
          child: Icon(
            Icons.person,
            color: Colors.blue,
          ),
        ),
        title: Text(name, style: const TextStyle(color: Colors.white)),
        subtitle: Text(message, style: const TextStyle(color: Colors.white)),
        trailing: Text(time, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
