import 'dart:io';

import 'Addressbook.dart';

void main(List<String> arguments) {
  Addressbook addressbook = new Addressbook();
  addressbook.add();
  bool loop = true;
  while (loop) {
    print("0. Exit.\n1. Show All Contact.\n2. Add Contact.\n");
    print("Enter Your Choice : ");
    int number = int.parse(stdin.readLineSync()!);
    switch (number) {
      case 0:
        loop = false;
        break;
      case 1:
        addressbook.showAddressBook();
        break;
      case 2:
        addressbook.addContact();
        break;
      default:
        print("invalid input");
    }
  }
}
