import 'package:equatable/equatable.dart';

class SearchJobDataEntity extends Equatable {
  const SearchJobDataEntity(
      {required this.category, required this.location, required this.skill});
  final int category;
  final String location;
  final String skill;

  @override
  List<Object> get props => [category, location, skill];
}
