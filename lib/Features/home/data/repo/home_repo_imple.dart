import 'package:book/Features/home/data/models/book_model.dart';
import 'package:book/Features/home/data/repo/home_repo.dart';
import 'package:book/core/errors/failures.dart';
import 'package:book/core/utils/api_request.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {

  final ApiRequest apiRequest;
  final String categoryType;


  HomeRepoImpl(this.apiRequest, this.categoryType);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewBooks() async {
    try {
      var data = await apiRequest.getData(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=subject: computer science',
      );
      List<BookModel> books =[];

      for(var item in data['items']){
        books.add(BookModel.fromJson(item),);
      }
      return right(books);

    }catch (e) {

      if(e is DioException){
        return left(ServerFailure.fromDioException(e),);
      }
      return left(ServerFailure(e.toString(),),);
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchRecommendedBooks() async {
    try {
      var data = await apiRequest.getData(
        endPoint:
        'volumes?Filtering=free-ebooks&q=subject: computer science',
      );
      List<BookModel> books =[];

      for(var item in data['items']){
        books.add(BookModel.fromJson(item),);
      }
      return right(books);

    }catch (e) {

      if(e is DioException){
        return left(ServerFailure.fromDioException(e),);
      }
      return left(ServerFailure(e.toString(),),);
    }
  }
}
