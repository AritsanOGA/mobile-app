class AppApiEndpoint {
  const AppApiEndpoint._();
  static const String scheme = 'http';
  static const String host = '35.157.203.193:8030';
  static const int receiveTimeout = 50000;
  static const int sendTimeout = 50000;

  static Uri baseUri = Uri.parse("http://54.159.228.215:8050/api/v1");

//Auth
  static Uri employerSignup = baseUri.replace(path: '/api/v1/employer/signup/');
  static Uri candidateSignup =
      baseUri.replace(path: '/api/v1/candidate/signup');
  static Uri login = baseUri.replace(path: '/api/v1/login');
  static Uri refreshToken = baseUri.replace(path: '/api/v1/refresh-token');
  static Uri getCountry = baseUri.replace(path: '/api/v1/countries');
  static Uri getState = baseUri.replace(path: '/api/v1/countries/states');

  static Uri getCategories = baseUri.replace(path: '/api/v1/categories');
  static Uri getSkills = baseUri.replace(path: '/api/v1/categories/skills');
   static Uri searchJobs = baseUri.replace(path: '/api/v1/search/jobs');
  static Uri verifyCode = baseUri.replace(path: '/api/v1/verify-code');
  static Uri changePassword = baseUri.replace(path: '/api/v1/change-password');
  static Uri verifyForgotPasswordCode =
      baseUri.replace(path: '/api/v1/verify-password-reset-code');
  static Uri forgotPassword = baseUri.replace(path: '/api/v1/send-reset-code');

  //! Dashboard
  static Uri getFeaturedCandidates =
      baseUri.replace(path: '/api/v1/featured-candidates');
  static Uri jobSeekerJob =
      baseUri.replace(path: '/api/v1/candidate/jobs-for-you');
  static Uri employerJob =
      baseUri.replace(path: '/api/v1/employer/get-all-jobs');
  static Uri featuredJob = baseUri.replace(path: '/api/v1/featured-jobs');
  static Uri postJob = baseUri.replace(path: '/api/v1/employer/post-a-job');
  static Uri getAllJobs = baseUri.replace(path: '/api/v1/job/get-all-jobs');
  static Uri applyForJob = baseUri.replace(path: '/api/v1/candidate/job/apply');

  //! Settings

  static Uri updateCandidateProfile =
      baseUri.replace(path: '/api/v1/candidate/update-profile');
  static Uri updateEmployerProfile =
      baseUri.replace(path: '/api/v1/employer/update-profile');
  static Uri updatePassword = baseUri.replace(path: '/api/v1/update-password');
  static Uri getEmployerProfile =
      baseUri.replace(path: '/api/v1/employer/profile');

  static Uri getJobSeekerProfile =
      baseUri.replace(path: '/api/v1/candidate/profile');

//! Candidates
  static Uri getAssignedCandidate =
      baseUri.replace(path: '/api/v1/employer/assigned-applicants');
  static Uri acceptCandidate =
      baseUri.replace(path: '/api/v1/employer/accept-candidate');
  static Uri rejectCandidate =
      baseUri.replace(path: '/api/v1/employer/reject-candidate');
  static Uri rejectCandidateWithoutInterview = baseUri.replace(
      path: '/api/v1/employer/reject-candidate-without-interview');
  static Uri candidateProfile =
      baseUri.replace(path: '/api/v1/candidate/get-profile');
  static Uri getCandidateSkill =
      baseUri.replace(path: 'api/v1/employer/candidate/technical-skills');

  //! Employer
  static Uri getInvoice = baseUri.replace(path: '/api/v1/employer/invoice');
    static Uri getInvoices = baseUri.replace(path: '/api/v1/employer/get-invoices');

  static Uri getPayments = baseUri.replace(path: '/api/v1/employer/payments');


  static Uri bankPayment =
      baseUri.replace(path: '/api/v1/employer/bank-payment');
  static Uri generateInvoice =
      baseUri.replace(path: 'api/v1/employer/generate-invoice');

  static Uri cardPayment =
      baseUri.replace(path: 'api/v1/employer/card-payment');
}
