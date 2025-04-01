import 'package:equatable/equatable.dart';

class SearchJobEntity extends Equatable {
  final int id;
  final int featured;
  final String jobTitle;
  final String jobDescription;
  final String basicSalary;
  final String? allowances;
  final String city;
  final String industry;
  final String businessCategoryId;
  final String jobStatus;
  final String compensationType;
  final DateTime createdAt;
  final String identity;
  final int closed;
  final String url;

  const SearchJobEntity({
    required this.id,
    required this.featured,
    required this.jobTitle,
    required this.jobDescription,
    required this.basicSalary,
    this.allowances,
    required this.city,
    required this.industry,
    required this.businessCategoryId,
    required this.jobStatus,
    required this.compensationType,
    required this.createdAt,
    required this.identity,
    required this.closed,
    required this.url,
  });

  @override
  List<Object?> get props => [
        id,
        featured,
        jobTitle,
        jobDescription,
        basicSalary,
        allowances,
        city,
        industry,
        businessCategoryId,
        jobStatus,
        compensationType,
        createdAt,
        identity,
        closed,
        url,
      ];
}
