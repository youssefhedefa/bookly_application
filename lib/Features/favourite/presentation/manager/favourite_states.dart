abstract class FavouritesStates{}

class FavouritesInitialState extends FavouritesStates{}
class FavouritesLoadingState extends FavouritesStates{}
class FavouritesSuccessState extends FavouritesStates{}
class FavouritesFailureState extends FavouritesStates{
  final String errMessage;

  FavouritesFailureState(this.errMessage);
}