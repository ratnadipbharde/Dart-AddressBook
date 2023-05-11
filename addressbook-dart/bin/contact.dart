import 'package:test/test.dart';

class Contact{
late String _firstName;
late String _lastName;
late double _mobile;
late String _email;


Contact(this._firstName, this._lastName, this._mobile, this._email);

  String get firstName => _firstName;

  set firstName(String value) {
    _firstName = value;
  }

String get lastName => _lastName;

String get email => _email;

  set email(String value) {
    _email = value;
  }

  double get mobile => _mobile;

  set mobile(double value) {
    _mobile = value;
  }

  set lastName(String value) {
    _lastName = value;
  }

}