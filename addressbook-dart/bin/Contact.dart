
class Contact {
  int _id = 0;
  String _firstName = "";
  String _lastName = "";
  String _mobile = "";
  String _email = "";

  Contact();

  Contact.parameter(
      int id, String firstName, String lastName, String mobile, String email) {
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _mobile = mobile;
    _email=email;
  }

  int getId() {
    return _id;
  }

  setId(int value) {
    _id = value;
  }

  String getFirstName() {
    return _firstName;
  }

  setFirstName(String value) {
    _firstName = value;
  }

  String getLastName() {
    return _lastName;
  }

  setLastName(String value) {
    _lastName = value;
  }

  String getEmail() {
    return _email;
  }

  setEmail(String value) {
    _email = value;
  }

  String getMobile() {
    return _mobile;
  }

  setMobile(String value) {
    _mobile = value;
  }

  @override
  String toString() {
    return 'Contact{id: $_id, firstName: $_firstName, lastName: $_lastName, mobile: $_mobile, _email: $_email}\n';
  }
}
