import 'package:book/Features/home/data/models/book_model.dart';
import 'package:book/Features/home/data/repo/home_repo.dart';
import 'package:book/core/utils/api_service.dart';

class HomeRepoImpl extends HomeRepo{

  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<List<BookModel>> fetchNewBooks() async {

    try
    {
     // var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');


    }catch(errMessage)
    {

    }



    throw UnimplementedError();
  }

  @override
  Future<List<BookModel>> fetchRecommendedBooks() {
    // TODO: implement fetchRecommendedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookModel>> fetchSearchedBooks() {
    // TODO: implement fetchSearchedBooks
    throw UnimplementedError();
  }

}