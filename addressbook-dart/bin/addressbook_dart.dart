import 'dart:io';

import 'Addressbook.dart';

void main(List<String> arguments) {
  Addressbook addressbook = new Addressbook();
  addressbook.add();
  bool loop = true;
  while (loop) {
    print("0. Exit.\n1. Show All Contact.\n2. Add Contact.\n3. Delete Contact\n4. Delete Contact by Name1");
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
      case 3:
        print("Enter contact id to delete : ");
        int id=int.parse(stdin.readLineSync()!);
        addressbook.deleteContactById(id);
        break;
      case 4:
        print("Enter First Name : ");
        String firstName=(stdin.readLineSync()!).toLowerCase();
        print("Enter Last Name : ");
        String lastName=(stdin.readLineSync()!).toLowerCase();
        int id=addressbook.findIdByName(firstName, lastName);
        if(id==0){
          print("Contact not found...");
        }else{
          addressbook.deleteContactById(id);
        }

        break;
      default:
        print("invalid input");
    }
  }
}
