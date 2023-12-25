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

  final List<dynamic> books;

  HomeGetRecommendedBooksSuccessState(this.books);
  void printBooks(List<dynamic> list){
    for(int i =0 ; i<list.length;i++){
      print(list[i]);
    }
  }
}