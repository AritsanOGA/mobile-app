class AppApiEndpoint {
  const AppApiEndpoint._();
  static const String scheme = 'http';
  static const String host = '35.157.203.193:8030';
  static const int receiveTimeout = 50000;
  static const int sendTimeout = 50000;

  static const String baseUri = "https://artisanoga.com/";

//Auth
  static const String employerSignup = '/api/v1/employer/signup/';
  static const String candidateSignup = '/api/v1/candidate/signup';
  static const String login = '/api/v1/login';
  static const String refreshToken = '/api/v1/refresh-token';
  static const String getCountry = '/api/v1/countries';
  static const String getState = '/api/v1/countries/states';

  static const String getCategories = '/api/v1/categories';
  static const String getSkills = '/api/v1/categories/skills';
  static const String searchJobs = '/api/v1/search/jobs';
  static const String searchJobDetails = '/api/v1/job-details';
  static const String verifyCode = '/api/v1/verify-code';
  static const String changePassword = '/api/v1/change-password';
  static const String verifyForgotPasswordCode =
      '/api/v1/verify-password-reset-code';
  static const String forgotPassword = '/api/v1/forget-password';
  static const String resetPassword = '/api/v1/reset-password';
  static const String checkEmail = '/api/v1/check-email';
  static const String checkPhone = '/api/v1/check-phone';
  //! Dashboard
  static const String getFeaturedCandidates = '/api/v1/featured-candidates';
  static const String jobSeekerJob = '/api/v1/candidate/jobs-for-you';
  static const String employerJob = '/api/v1/employer/get-all-jobs';
  static const String featuredJob = '/api/v1/featured-jobs';
  static const String postJob = '/api/v1/employer/post-a-job';
  static const String editJob = '/api/v1/employer/update-jobs';
  static const String getAllJobs = '/api/v1/job/get-all-jobs';
  static const String applyForJob = '/api/v1/candidate/job/apply';

  //! Settings

  static const String updateCandidateProfile =
      '/api/v1/candidate/update-profile';
  static const String updateEmployerProfile = '/api/v1/employer/update-profile';
  static const String updatePassword = '/api/v1/update-password';
  static const String getEmployerProfile = '/api/v1/employer/profile';

  static const String getJobSeekerProfile = '/api/v1/candidate/profile';
  static const String getJobSeekerNotification =
      '/api/v1/candidate/notifications';
  static const String jsActivities = '/api/v1/candidate/jobs-for-you';

//! Candidates
  static const String getAssignedCandidate =
      '/api/v1/employer/assigned-applicants';
  static const String acceptCandidate = '/api/v1/employer/accept-candidate';
  static const String rejectCandidate = '/api/v1/employer/reject-candidate';
  static const String rejectCandidateWithoutInterview =
      '/api/v1/employer/reject-candidate-without-interview';
  static const String candidateProfile = '/api/v1/candidate/get-profile';
  static const String getCandidateSkill =
      'api/v1/employer/candidate/technical-skills';

  //! Employer
  static const String getInvoice = '/api/v1/employer/invoice';
  static const String getInvoices = '/api/v1/employer/get-invoices';

  static const String getPayments = '/api/v1/employer/payments';
  static const String noOfCandidate = '/api/v1/employer/get-no-of-candidates';
  static const String bankPayment = '/api/v1/employer/bank-payment';
  static const String generateInvoice = 'api/v1/employer/generate-invoice';

  static const String cardPayment = 'api/v1/employer/card-payment';
}
