import 'package:flutter/material.dart';
import 'package:tp05/screens/allUsers_screen.dart';
import 'package:tp05/screens/detail_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'package:tp05/screens/register_screen.dart';
import 'package:tp05/screens/login_screen.dart';
import 'providers/auth_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
    create: (context) => AuthProvider(),
    child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/detail': (context) => const detailScreen(),
        '/register': (context) => const RegisterScreen(),
        '/login': (context) => LoginScreen(),
        '/profil': (context) => const ProfileScreen(),
        '/allUsers': (context) => const AllUsersScreen(),
      },
    );
  }
}
