import 'dart:math';

class VirtualDB {
  final List<Map<String, dynamic>> _items = [];
  static final VirtualDB _db = VirtualDB._privateConstructor();

  VirtualDB._privateConstructor();

  factory VirtualDB() {
    return _db;
  }
  Future<void> insert(Map<String, dynamic> item) async {
    item['id'] = Random().nextInt(300);
    _items.add(item);
  }

  Future<void> remove(int id) async {
    _items.removeWhere((item) => item['id'] == id);
  }

  Future<void> update(Map<String, dynamic> updateItem) async {
    int i = _items.indexWhere((item) => item['id'] == updateItem['id']);
    _items[i] = updateItem;
  }

  Future<List<Map<String, dynamic>>> list() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return _items;
  }

  Future<Map<String, dynamic>> findOne(int id) async {
    return _items.firstWhere((item) => item['id'] == id);
  }
}
