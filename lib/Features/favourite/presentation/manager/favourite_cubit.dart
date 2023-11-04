
import 'package:bloc/bloc.dart';
import 'package:book/Features/favourite/presentation/manager/favourite_states.dart';
import 'package:book/core/utils/api_service.dart';
import 'package:book/core/utils/cach_helper.dart';

class FavouriteCubit extends Cubit<FavouritesStates> {
  FavouriteCubit() : super(FavouritesInitialState());

  List<String> favouritesID = CacheHelper.getFavourites()??[];

  void addToFavourites(String id) {
    if (!favouritesID.contains(id)) {
      favouritesID.add(id);
    }
  }

  List<String> getFavourites() {
    return favouritesID;
  }

  void deleteFavourites(){
    CacheHelper.deleteFavourites(favouritesID);
    emit(FavouritesDeleteSuccessState());
  }

  List<dynamic> favouriteBooks = [];
  late Map<String,dynamic> favouriteBookModel;

  int i = 0 ;

  void fetchFavouriteBooks() {
    for (i ; i < favouritesID.length; i++) {
      emit(FavouritesLoadingState());
      ApiService.getData(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=${favouritesID[i]}',
      ).then(
        (value) {
          //print(value.data['items'][0].toString());
          //favouriteBooks = value.data['items'][0];
          favouriteBooks.add(value.data['items'][0]);
          emit(FavouritesSuccessState());
        },
      ).catchError(
        (errMessage) {
          //print(errMessage.toString());
          emit(
            FavouritesFailureState(
              errMessage.toString(),
            ),
          );
        },

      );
    }
  }
}
