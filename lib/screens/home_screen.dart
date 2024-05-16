import 'package:flutter/material.dart';
import 'package:tp05/controller/message_controller.dart';
import 'package:tp05/controller/user_controller.dart';
import 'package:tp05/models/message.dart';
import 'package:tp05/models/user.dart';
import 'package:tp05/widget/myscaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}





// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//   @override
//   State<StatefulWidget> createState() {
//     return _HomeScreen();
//   }
// }

// class _HomeScreen extends State<HomeScreen> {
//   MessageController _messageController = MessageController();
//   @override
//   void initState() {
//     super.initState();
//     _messageController.loadmessages();
//   }

//   void _showAddUserDialog() {
//     TextEditingController _prenomController = TextEditingController();
//     TextEditingController _nomController = TextEditingController();
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Ajouter un utilisateur'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               TextField(
//                 controller: _prenomController,
//                 decoration: const InputDecoration(
//                   labelText: 'Prénom',
//                 ),
//               ),
//               TextField(
//                 controller: _nomController,
//                 decoration: const InputDecoration(
//                   labelText: 'Nom',
//                 ),
//               ),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Annuler'),
//             ),
//             TextButton(
//               onPressed: () {
//                 _messageController.messages
//                     .add(Message("", "", DateTime.now(), User(_nomController.text, _prenomController.text)));
//                 setState(() {});
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Ajouter'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _showDetail(firstName, lastName) {
//     print("Call detail with this arg : ${firstName}, ${lastName}");
//     Navigator.pushNamed(
//     context,
//     '/detail',
//     arguments: {"firstName": firstName, "lastName": lastName} 
//   );
//   }

//   Widget _buildUserList() {
//     return ListView.builder(
//       itemCount: _messageController.messages.length,
//       itemBuilder: (BuildContext context, int index) {
//         Message message = _messageController.messages[index];
//         User user = _messageController.messages[index].utilisateur;

        
//         return Dismissible(
//           key: Key(user.nom),
//           direction: DismissDirection.startToEnd,
//           onDismissed: (direction) {
//             _messageController.messages.removeAt(index);
//             setState(() {});
//           },
//           background: Container(
//             color: Colors.red,
//             alignment: Alignment.centerRight,
//             padding: EdgeInsets.only(right: 20),
//             child: Icon(Icons.delete, color: Colors.black),
//           ),
//           child: Card(
//             child: Column(
//               children: <Widget>[
//                 ListTile(
//                   leading: Icon(Icons.person),
//                   title: Text('${user.prenom} ${user.nom}'),
//                   subtitle: Text('${message.sujet} : \n${message.contenu}'),

//                   onTap: () => _showDetail(user.prenom, user.nom),
//                 ),
                
//                 Row(
//                   children: [
//                     Text("${message.dateEnvoi}"),
//                   ],
//                 )
//               ]
//             ), 
//           ) 
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter', style: TextStyle(color: Colors.white)),
//         elevation: 10.0,
//         centerTitle: true,
//       ),
//       backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
//       body: _buildUserList(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _showAddUserDialog,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
