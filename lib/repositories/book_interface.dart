import 'package:repo_bootstore/models/books.dart';

abstract class IBookRepository {
  Future<List<Book>> getAll();
  Future<Book?> getOne(int id);
  Future<void> insert(Book book);
  Future<void> update(Book book);
  Future<void> delete(int id);
}
