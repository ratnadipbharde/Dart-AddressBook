import 'dart:io';

import 'Contact.dart';

class Addressbook {
  Map<int, Contact> map = {};

  add() {
    Contact contact1 = Contact.parameter(
        1, "Ratnadip", "Bharde", "8983253934", "ratnadipbharde@gmail.com");
    map.addAll({contact1.getId(): contact1});
    Contact contact2 = Contact.parameter(
        2, "dipak", "kache", "4587451258", "dipakkache@gmail.com");
    map.addAll({contact2.getId(): contact2});
  }

  showAddressBook() {
    print([map.values]);
  }

  addContact() {
    Contact contact = Contact();
    contact.setId(map.length + 1);
    print("Enter First Name : ");
    contact.setFirstName((stdin.readLineSync()!).toLowerCase());
    print("Enter Last Name : ");
    contact.setLastName((stdin.readLineSync()!).toLowerCase());
    print("Enter Mobile Number : ");
    contact.setMobile(stdin.readLineSync()!);
    print("Enter Email Id : ");
    contact.setEmail((stdin.readLineSync()!).toLowerCase());
    map.addAll({contact.getId(): contact});
  }

  deleteContactById(int id) {
    map.remove(id);
  }

  int findIdByName(String firstName, String lastName) {
    var id=0;
    map.forEach((key, value) {
      if (value.getFirstName() == firstName || value.getLastName()==lastName) {
         id = value.getId();
      }
    });
    return id;
  }

}
