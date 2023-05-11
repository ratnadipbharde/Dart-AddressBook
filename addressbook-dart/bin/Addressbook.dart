import 'dart:io';

import 'Contact.dart';

class Addressbook {

  Map<int,Contact>map={};

  addContact() {
    Contact contact1=Contact.parameter(1, "Ratnadip", "Bharde", "8983253934", "ratnadipbharde@gmail.com");
    map.addAll({contact1.getId():contact1});
    Contact contact2=Contact.parameter(2, "dipak", "kache", "4587451258", "dipakkache@gmail.com");
    map.addAll({contact2.getId():contact2});
    Contact contact = Contact();
    contact.setId(map.length+1);
    print("Enter First Name : ");
    contact.setFirstName(stdin.readLineSync()!);
    print("Enter Last Name : ");
    contact.setLastName(stdin.readLineSync()!);
    print("Enter Mobile Number : ");
    contact.setMobile(stdin.readLineSync()!);
    print("Enter Email Id : ");
    contact.setEmail(stdin.readLineSync()!);
    map.addAll({contact.getId():contact});
  }
showAddressBook(){
print([map.values]);
}
}
