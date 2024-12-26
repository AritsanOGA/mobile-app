import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidates_event.dart';
part 'candidates_state.dart';
part 'candidates_bloc.freezed.dart';

class CandidatesBloc extends Bloc<CandidatesEvent, CandidatesState> {
  CandidatesBloc() : super(_Initial()) {
    on<CandidatesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
