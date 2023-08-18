abstract class HomeStates{}

class HomeInitialState extends HomeStates{}
class HomeSuccessState extends HomeStates{}
class HomeLoadingState extends HomeStates{}
class HomeFailureState extends HomeStates{
  final String errMessage;

  HomeFailureState(this.errMessage);
}