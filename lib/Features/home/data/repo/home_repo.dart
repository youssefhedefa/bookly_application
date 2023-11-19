import 'package:book/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model.dart';

abstract class HomeRepo
{
   Future<Either<Failures, List<BookModel>>> fetchNewBooks();
   Future<Either<Failures, List<BookModel>>> fetchRecommendedBooks();
   //Future<List<BookModel>> fetchSearchedBooks();
}