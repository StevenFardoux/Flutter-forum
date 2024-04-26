import 'package:flutter/material.dart';
import 'package:tp05/controller/user_controller.dart';
import 'package:tp05/models/user.dart';

class detailScreen extends StatefulWidget {
  const detailScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _detailScreen();
  }
}

class _detailScreen extends State<detailScreen> {
  UserController _userController = UserController();
  @override
  void initState() {
    super.initState();
    _userController.loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? rcvdData =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    print('${rcvdData?["firstName"]}, ${rcvdData?["lastName"]}');
    String? firstName = rcvdData?["firstName"];
    String? lastName = rcvdData?["lastName"];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter', style: TextStyle(color: Colors.white)),
        elevation: 10.0,
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              '${firstName} ${lastName}',
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
