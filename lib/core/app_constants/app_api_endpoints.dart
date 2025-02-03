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
  static Uri candidateProfile =
      baseUri.replace(path: '/api/v1/candidate/get-profile');
  static Uri getCandidateSkill =
      baseUri.replace(path: 'api/v1/employer/candidate/technical-skills');

  //! News

  static Uri newsComment(String id) =>
      baseUri.replace(path: '/api/v1/comments/$id');

  static Uri commentOnNews(String id) =>
      baseUri.replace(path: '/api/v1/comments/comment/$id');

  static Uri getHighlights =
      baseUri.replace(path: '/api/v1/highlights/trending');

  //! Fixtures
  static Uri getFixtures = baseUri.replace(path: '/api/v1/fixtures');
  static Uri getFixturesByLeague(int id) =>
      baseUri.replace(path: '/api/v1/fixtures/league/$id');
  static Uri predict = baseUri.replace(path: '/api/v1/prediction/predict');
  static Uri fixtureLeague = baseUri.replace(path: '/api/v1/leagues/featured');
  static Uri leadership =
      baseUri.replace(path: '/api/v1/prediction/leaderboard');

  //! Statistics

  static Uri getLeagueStanding(int leagueId) => baseUri.replace(
        path: '/api/v1/leagues/standings/$leagueId',
      );

  static Uri getTopScorer(int leagueId) => baseUri.replace(
        path: 'api/v1/leagues/top-scorers/$leagueId',
      );

  static Uri getTopAssist(int leagueId) => baseUri.replace(
        path: 'api/v1/leagues/top-assists/$leagueId',
      );

  static Uri getCard(int leagueId) => baseUri.replace(
        path: 'api/v1/leagues/top-red/$leagueId',
      );

  static Uri activeLeagues = baseUri.replace(path: '/api/v1/leagues/active');
}
