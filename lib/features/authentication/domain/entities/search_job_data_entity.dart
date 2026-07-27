import 'package:equatable/equatable.dart';

class SearchJobDataEntity extends Equatable {
  const SearchJobDataEntity(
      {this.category,
      required this.location,
      required this.skill,
      this.page = 1});
  final int? category;
  final String location;
  final String skill;
  final int page;

  @override
  List<Object> get props => [category!, location, skill, page];
}
