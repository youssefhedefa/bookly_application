import 'package:bloc/bloc.dart';
import 'package:book/Features/search/presentation/manager/search_states.dart';
import 'package:book/core/utils/api_service.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInitialState());

  List<dynamic> searchedBooks = [];

  void getSearchedBooks(value) {
    searchedBooks = [];
    emit(SearchLoadingState());
    ApiService.getData(
      endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=$value',
    ).then(
      (value) {
        searchedBooks.add(value.data['items'][0]);
        emit(SearchSuccessState());
      },
    ).catchError(
      (errMessage) {
        print(errMessage.toString());
        emit(SearchFailureState(errMessage.toString()));
      },
    );
  }
}
