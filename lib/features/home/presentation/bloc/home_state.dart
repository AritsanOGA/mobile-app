part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
     String? errorMessage,
      @Default(ViewState.idle) ViewState viewState,
      
      @Default([]) List<FeaturedCandidatesEntity> featureCandidateList,
    
  }) = _Initial;
}
