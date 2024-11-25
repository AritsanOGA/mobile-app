class AppApiEndpoint {
  const AppApiEndpoint._();
  static const String scheme = 'http';
  static const String host = '35.157.203.193:8030';
  static const int receiveTimeout = 50000;
  static const int sendTimeout = 50000;

  static Uri baseUri = Uri.parse("https://api.artisanoga.com/api/v1");

//Auth
  static Uri signup = baseUri.replace(path: '/api/v1/employer/signup');
  static Uri login = baseUri.replace(path: '/api/v1/login');
  static Uri getCountry = baseUri.replace(path: '/api/v1/countries');
  static Uri getState = baseUri.replace(path: '/api/v1/countries/states');

  static Uri getCategories = baseUri.replace(path: '/api/v1/categories');
  static Uri getSkills = baseUri.replace(path: '/api/v1/categories/skills');

  static Uri verifyCode = baseUri.replace(path: 'api/v1/verify-code');

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
  //! Payment
  // static Uri withdrawToBank = baseUri.replace(path: '/api/v1/wallet/withdraw');

  static Uri getAllNigeriaBanks =
      baseUri.replace(path: '/api/v1/wallet/all-banks-ng');
  static Uri getUserWalletBalance =
      baseUri.replace(path: '/api/v1/wallet/balance');
  static Uri getTransaction = baseUri.replace(path: '/api/v1/transaction');

  //! News
  static Uri trendingNews = baseUri.replace(path: '/api/v1/news');

  static Uri relatedNews(String id) =>
      baseUri.replace(path: '/api/v1/news/single/$id');

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
