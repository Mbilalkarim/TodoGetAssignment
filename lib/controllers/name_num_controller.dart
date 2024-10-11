import 'package:get/get.dart';

import '../models/name_num_model.dart';

class NameNumberController extends GetxController {
  final List<NameNumberEntry> _nameNumberList = [
    NameNumberEntry(name: 'Alice', number: 0),
    NameNumberEntry(name: 'Bob', number: 0),
    NameNumberEntry(name: 'Charlie', number: 0),
  ];

  List<NameNumberEntry> get nameNumberList => _nameNumberList;

  void incrementNumber(NameNumberEntry entry) {
    entry.number++;
    update(['listView', 'detail']);
  }
}
