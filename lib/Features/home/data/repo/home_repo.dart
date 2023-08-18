import '../models/book_model.dart';

abstract class HomeRepo
{
   Future<List<BookModel>> fetchNewBooks();
   Future<List<BookModel>> fetchRecommendedBooks();
   Future<List<BookModel>> fetchSearchedBooks();
}