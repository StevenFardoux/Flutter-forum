import 'package:tp05/models/user.dart';

class Message {
  String _sujet; 
  String _contenu;
  DateTime _dateEnvoi;
  User _utilisateur;

  Message(this._sujet, this._contenu, this._dateEnvoi, this._utilisateur);

  String get sujet => _sujet;
  String get contenu => _contenu;
  DateTime get dateEnvoi => _dateEnvoi;
  User get utilisateur => _utilisateur;

  set sujet(String sujet) {
    _sujet = sujet;
  }

  set contenu(String contenu) {
    _contenu = contenu;
  }

  set dateEnvoi(DateTime dateEnvoi) {
    _dateEnvoi = dateEnvoi;
  }

  set utilisateur(User uti) {
    _utilisateur = uti;
  }

}