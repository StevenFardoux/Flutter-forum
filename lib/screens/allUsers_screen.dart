import 'package:flutter/material.dart';
import '../api/user.dart';
import '../models/message_model.dart';
import '../widget/myscaffold.dart';

class AllUsersScreen extends StatefulWidget {
  const AllUsersScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return AllUsersScreenState();
  }
}

class AllUsersScreenState extends State<AllUsersScreen> {
  late Future<List<MessageModel>> futureMessages;
  @override
  void initState() {
    super.initState();
    futureMessages = fetchMessages() as Future<List<MessageModel>>;
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      name: 'Home',
      body: FutureBuilder<List<MessageModel>>(
        future: futureMessages,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erreur: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Aucun message trouvé.'));
          } else {
            List<MessageModel> messages = snapshot.data!;
            return ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                MessageModel message = messages[index];
                return ListTile(
                  title: Text(message.subject),
                  subtitle: Text(message.body),
                  onTap: () {},
                );
              },
            );
          }
        },
      ),
    );
  }
}
