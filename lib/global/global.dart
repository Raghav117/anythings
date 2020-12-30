import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

bool contactsPermission;
int ind;
List numb = List();
List name = List();
Map selectedname = Map();
List selectednumbList = List();
List selectednameList = List();

checkContactsPermission() async {
  // bool result = await SimplePermissions.checkPermission(Permission.ReadExternalStorage);
  var result = await Permission.contacts.status;
  // var requestContacts = await Permission.contacts.status;
  // await [Permission.contacts].request();

  if (result.isDenied) {
    await requestContactsPermission();
  } else if (result.isGranted) {
    syncContacts();
    contactsPermission = true;
  } else {
    await requestContactsPermission();
  }
}

requestContactsPermission() async {
  // PermissionStatus result = await SimplePermissions.requestPermission(Permission.ReadExternalStorage);
  Map<Permission, PermissionStatus> result =
      await [Permission.contacts].request();
  if (result[Permission.contacts].isDenied) {
    contactsPermission = false;
  } else if (result[Permission.contacts].isGranted) {
    contactsPermission = true;
    syncContacts();
  } else {
    contactsPermission = false;
  }
  // setState(() {});
}

syncContacts() async {
  Iterable<Contact> contacts =
      await ContactsService.getContacts(withThumbnails: false);
  for (var contact in contacts) {
    if (contact.phones.isNotEmpty) {
      print(contact.displayName + contact.phones.first.value.toString());
      name.add(contact.displayName);
      numb.add(contact.phones.first.value.toString());
    }
  }
  print(name);
  print(numb);
}
