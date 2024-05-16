import 'package:flutter/material.dart';
import '../api/user.dart';
import '../util/secure_storage.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../widget/myscaffold.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends State<ProfileScreen> {
  SecureStorage secureStorage = SecureStorage();

  late Future<Map<String, String?>> credentials;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  Future<void> initialize() async {
    credentials = SecureStorage().readCredentials();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        name: 'Profil',
        body: FutureBuilder<Map<String, String?>>(
            future: credentials,
            builder: (context, snapshot) {
              return Center(
                  child: Padding(
                padding: EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      // Text(email),
                      // Text(lastName),
                      // Text(firstName),
                      Text(snapshot.data!['email'] ?? ''),
                      Text(snapshot.data!['lastName'] ?? ''),
                      Text(snapshot.data!['firstName'] ?? ''),
                    ],
                  ),
                ),
              ));
            }));
  }
}


/*
Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(email),
              Text(lastName),
              Text(firstName),
              // Text(credentials['email'] ?? ''),

            ],
          ),
        ),
      );
*/