import 'package:bloc/bloc.dart';
import 'package:book/core/utils/api_service.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  List<dynamic> newestBooks = [];
  List<dynamic> recommendedBooks = [];


  void fetchNewestBooks() {
    emit(HomeLoadingState());
    ApiService.getData(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming').then(
      (value) {
       // print(value.data['items'].toString());
        newestBooks = value.data['items'];
        emit(HomeSuccessState());
      },
    ).catchError(
      (errMessage) {
        print(errMessage.toString());
        emit(
          HomeFailureState(
            errMessage.toString(),
          ),
        );
      },
    );
  }

  void fetchRecommendedBooks() {
    emit(HomeLoadingState());
    ApiService.getData(endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:design').then(
          (value) {
        // print(value.data['items'].toString());
            recommendedBooks = value.data['items'];
        emit(HomeSuccessState());
      },
    ).catchError(
          (errMessage) {
        print(errMessage.toString());
        emit(
          HomeFailureState(
            errMessage.toString(),
          ),
        );
      },
    );
  }



}
