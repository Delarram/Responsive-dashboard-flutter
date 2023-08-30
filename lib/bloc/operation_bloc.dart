import 'package:flutter/cupertino.dart';

import '../model/contact_model.dart';


class OperationBloc extends ChangeNotifier{
List<Contact> contacts = [];

 int index = -1;
void addContact(Contact contact){
  contacts.add(contact);
  notifyListeners();
}

void updateContact (int index, Contact contact){
  contacts[index] = contact;
  notifyListeners();
}

void deleteContact (int index){
  contacts.removeAt(index);
  notifyListeners();
}

}