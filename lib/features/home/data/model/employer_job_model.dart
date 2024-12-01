import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';

class EmployerJobResponseModel  extends EmployerJobResponseEntity{
    final int? id;
    final String? commuteType;
    final dynamic invoiceId;
    final int? recruiterId;
    final int? closed;
    final String? identity;
    final String? status;
    final int? featured;
    final String? compensationType;
    final String? jobStatus;
    final int? userId;
    final String? jobTitle;
    final String? jobDescription;
    final String? url;
    final String? firstname;
    final dynamic lastname;
    final String? email;
    final String? phone;
    final String? industry;
    final String? position;
    final String? hireType;
    final dynamic quantity;
    final dynamic businessCategoryName;
    final String? businessCategoryId;
    final dynamic ageRange;
    final String? gender;
    final String? experience;
    final String? levelOfEducation;
    final String? itSkills;
    final String? basicSalary;
    final int? minSalary;
    final int? maxSalary;
    final dynamic allowances;
    final String? state;
    final String? city;
    final int? hiredCount;
    final String? applicationDeadline;
    final String? officeAddress;
    final String? accommodationAvailable;
    final dynamic accommodationFor;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final dynamic topJobs;
    final String? workType;
    final int? country;

    EmployerJobResponseModel({
        this.id,
        this.commuteType,
        this.invoiceId,
        this.recruiterId,
        this.closed,
        this.identity,
        this.status,
        this.featured,
        this.compensationType,
        this.jobStatus,
        this.userId,
        this.jobTitle,
        this.jobDescription,
        this.url,
        this.firstname,
        this.lastname,
        this.email,
        this.phone,
        this.industry,
        this.position,
        this.hireType,
        this.quantity,
        this.businessCategoryName,
        this.businessCategoryId,
        this.ageRange,
        this.gender,
        this.experience,
        this.levelOfEducation,
        this.itSkills,
        this.basicSalary,
        this.minSalary,
        this.maxSalary,
        this.allowances,
        this.state,
        this.city,
        this.hiredCount,
        this.applicationDeadline,
        this.officeAddress,
        this.accommodationAvailable,
        this.accommodationFor,
        this.createdAt,
        this.updatedAt,
        this.topJobs,
        this.workType,
        this.country,
    });

    factory EmployerJobResponseModel.fromJson(Map<String, dynamic> json) => EmployerJobResponseModel(
        id: json["id"],
        commuteType: json["commute_type"],
        invoiceId: json["invoice_id"],
        recruiterId: json["recruiter_id"],
        closed: json["closed"],
        identity: json["identity"],
        status: json["status"],
        featured: json["featured"],
        compensationType: json["compensation_type"],
        jobStatus: json["job_status"],
        userId: json["user_id"],
        jobTitle: json["job_title"],
        jobDescription: json["job_description"],
        url: json["url"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        phone: json["phone"],
        industry: json["industry"],
        position: json["position"],
        hireType: json["hire_type"],
        quantity: json["quantity"],
        businessCategoryName: json["business_category_name"],
        businessCategoryId: json["business_category_id"],
        ageRange: json["age_range"],
        gender: json["gender"],
        experience: json["experience"],
        levelOfEducation: json["level_of_education"],
        itSkills: json["it_skills"],
        basicSalary: json["basic_salary"],
        minSalary: json["min_salary"],
        maxSalary: json["max_salary"],
        allowances: json["allowances"],
        state: json["state"],
        city: json["city"],
        hiredCount: json["hired_count"],
        applicationDeadline: json["application_deadline"],
        officeAddress: json["office_address"],
        accommodationAvailable: json["accommodation_available"],
        accommodationFor: json["accommodation_for"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        topJobs: json["top_jobs"],
        workType: json["work_type"],
        country: json["country"],
    );}