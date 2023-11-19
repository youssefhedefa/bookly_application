import 'package:book/Features/home/data/models/book_model.dart';

abstract class HomeStates{}

class HomeInitialState extends HomeStates{}
class HomeSuccessState extends HomeStates{}
class HomeLoadingState extends HomeStates{}
class HomeFailureState extends HomeStates{
  final String errMessage;

  HomeFailureState(this.errMessage);
}

class HomeGetNewBooksSuccessState extends HomeStates{

  final List<BookModel> books;

  HomeGetNewBooksSuccessState(this.books);
}

class HomeGetRecommendedBooksSuccessState extends HomeStates{

  final List<BookModel> books;

  HomeGetRecommendedBooksSuccessState(this.books);
}

