import 'package:equatable/equatable.dart';

class SearchJobDataEntity extends Equatable {
  const SearchJobDataEntity(
      {required this.category, required this.location, required this.skill});
  final String category;
  final String location;
  final String skill;

  @override
  List<Object> get props => [category, location, skill];
}
