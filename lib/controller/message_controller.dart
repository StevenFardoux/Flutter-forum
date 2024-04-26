
import 'dart:math';

import 'package:tp05/controller/user_controller.dart';
import 'package:tp05/models/message.dart';

class MessageController {
  UserController _userController = UserController();
  final List<Message> _messages = [];
  List<Message> get messages => _messages;

  Future<void> loadmessages() async {
    _userController.loadUsers();
    int nbUsers = _userController.users.length;
    messages.add(Message(
      "JS is broken", 
      "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 
      DateTime(2024,01,01),
      _userController.users[Random().nextInt(nbUsers)]
    ));
    messages.add(Message(
      "C++ >>>>>>> all", 
      "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 
      DateTime(2024,01,01),
      _userController.users[Random().nextInt(nbUsers)]
    ));
    messages.add(Message(
      "C++ master", 
      "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 
      DateTime(2024,01,01),
      _userController.users[Random().nextInt(nbUsers)]
    ));
    messages.add(Message(
      "stop all and do C++ !", 
      "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 
      DateTime(2024,01,01),
      _userController.users[Random().nextInt(nbUsers)]
    ));
    messages.add(Message(
      "my conversion to C++stianity", 
      "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 
      DateTime(2024,01,01),
      _userController.users[Random().nextInt(nbUsers)]
    ));
    messages.add(Message(
      "How to improve your living conditions (stop JS)", 
      "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 
      DateTime(2024,01,01),
      _userController.users[Random().nextInt(nbUsers)]
    ));
    messages.add(Message(
      "the most sucicidal language 2024 is JS", 
      "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 
      DateTime(2024,01,01),
      _userController.users[Random().nextInt(nbUsers)]
    ));
    messages.add(Message(
      "my wife left me but I have C++.", 
      "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 
      DateTime(2024,01,01),
      _userController.users[Random().nextInt(nbUsers)]
    ));
  }
}