import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/features/settings/data/model/change_password_model.dart';
import 'package:artisan_oga/features/settings/data/model/get_employer_profile_model.dart';
import 'package:artisan_oga/features/settings/data/model/get_js_profile_model.dart';
import 'package:artisan_oga/features/settings/data/model/update_employer_model.dart';
import 'package:artisan_oga/features/settings/data/model/update_js_model.dart';
import 'package:artisan_oga/features/settings/domain/entities/change_password_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_employer_response_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_employer_profile_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';

abstract class SettingsRemoteDataSource {
  Future<GetEmployerResponseEntity> getEmployerProfile();
  Future<GetJobSeekerResponseEntity> getJobSeekerProfile();
  Future<bool> updateJobSeekerProfile(UpdateJobSeekerProfileEntity entity);
  Future<bool> updateEmployerProfile(UpdateEmployerProfileEntity entity);
  Future<bool> changePassword(ChangePasswordEntity entit);
}

class SettingsRemoteDataSourceImpl implements SettingsRemoteDataSource {
  SettingsRemoteDataSourceImpl(
    this.api,
  );
  final ApiService api;
  @override
  Future<bool> changePassword(ChangePasswordEntity entity) async {
    final result = await api.patch(
      url: AppApiEndpoint.updatePassword,
      body: ChangePasswordModel.fromEntity(entity).toJson(),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    return true;
  }

  @override
  Future<GetEmployerResponseEntity> getEmployerProfile() async {
    //try {
    final result = await api.get(
      url: AppApiEndpoint.getEmployerProfile,
    ) as Map<String, dynamic>;

    print('API Response: $result');
    return GetEmployerResponseModel.fromJson(
      result['data'] as Map<String, dynamic>,
    );
    // Ensure 'data' exists and is a Map
    //   if (result['data'] is Map<String, dynamic>) {
    //     return GetEmployerResponseModel.fromJson(
    //       result['data'] as Map<String, dynamic>,
    //     );
    //   } else {
    //     throw Exception('Invalid data format received from API.');
    //   }
    // } catch (e, stackTrace) {
    //   print('Error fetching employer profile: $e');
    //   print('StackTrace: $stackTrace');
    //   throw Exception(
    //       'Failed to fetch employer profile. Please try again later.');
  }

  @override
  Future<GetJobSeekerResponseEntity> getJobSeekerProfile() async {
    final result = await api.get(
      url: AppApiEndpoint.getJobSeekerProfile,
    ) as Map<String, dynamic>;

    return GetJobSeekerResponseModel.fromJson(
      result['data'] as Map<String, dynamic>,
    );
  }

  @override
  Future<bool> updateEmployerProfile(UpdateEmployerProfileEntity entity) async {
    final result = await api.patch(
      url: AppApiEndpoint.updateEmployerProfile,
      body: UpdateEmployerProfileModel.fromEntity(entity).toJson(),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    return true;
  }

  @override
  Future<bool> updateJobSeekerProfile(
      UpdateJobSeekerProfileEntity entity) async {
    final result = await api.patch(
      url: AppApiEndpoint.updateCandidateProfile,
      body: UpdateJobSeekerProfileModel.fromEntity(entity).toJson(),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    return true;
  }
}
