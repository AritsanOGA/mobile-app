import 'package:flutter/material.dart';
import '../presentation/welcome_page_screen/welcome_page_screen.dart';
import '../presentation/signup_options_page_screen/signup_options_page_screen.dart';
import '../presentation/login_options_page_screen/login_options_page_screen.dart';
import '../presentation/employer_sign_uppage_screen/employer_sign_uppage_screen.dart';
import '../presentation/employer_signuppage_one_screen/employer_signuppage_one_screen.dart';
import '../presentation/successful_page_screen/successful_page_screen.dart';
import '../presentation/employer_login_page_screen/employer_login_page_screen.dart';
import '../presentation/search_result_page_screen/search_result_page_screen.dart';
import '../presentation/payments_made_page_screen/payments_made_page_screen.dart';
import '../presentation/post_job_two_screen/post_job_two_screen.dart';
import '../presentation/post_job_three_screen/post_job_three_screen.dart';
import '../presentation/post_job_four_screen/post_job_four_screen.dart';
import '../presentation/payment_page_screen/payment_page_screen.dart';
import '../presentation/pay_with_card_page_screen/pay_with_card_page_screen.dart';
import '../presentation/payment_successful_screen/payment_successful_screen.dart';
import '../presentation/pay_with_transfer_page_screen/pay_with_transfer_page_screen.dart';
import '../presentation/form_transfer_page_one_screen/form_transfer_page_one_screen.dart';
import '../presentation/form_transfer_page_screen/form_transfer_page_screen.dart';
import '../presentation/view_candidates_page_screen/view_candidates_page_screen.dart';
import '../presentation/accept_reject_page_screen/accept_reject_page_screen.dart';
import '../presentation/candidates_profile_accept_page_screen/candidates_profile_accept_page_screen.dart';
import '../presentation/message_page_screen/message_page_screen.dart';
import '../presentation/message_page_chatting_one_screen/message_page_chatting_one_screen.dart';
import '../presentation/change_password_page_screen/change_password_page_screen.dart';
import '../presentation/update_profile_page_screen/update_profile_page_screen.dart';
import '../presentation/j_s_create_account_page_three_screen/j_s_create_account_page_three_screen.dart';
import '../presentation/j_s_create_account_page_four_screen/j_s_create_account_page_four_screen.dart';
import '../presentation/j_s_create_account_page_five_screen/j_s_create_account_page_five_screen.dart';
import '../presentation/j_s_create_account_page_six_screen/j_s_create_account_page_six_screen.dart';
import '../presentation/j_s_create_account_page_screen/j_s_create_account_page_screen.dart';
import '../presentation/j_s_create_account_page_two_screen/j_s_create_account_page_two_screen.dart';
import '../presentation/j_s_create_account_page_one_screen/j_s_create_account_page_one_screen.dart';
import '../presentation/verification_page_one_screen/verification_page_one_screen.dart';
import '../presentation/j_s_login_page_screen/j_s_login_page_screen.dart';
import '../presentation/dashboard_screen/dashboard_screen.dart';
import '../presentation/search_job_result_page_screen/search_job_result_page_screen.dart';
import '../presentation/notification_bar_page_screen/notification_bar_page_screen.dart';
import '../presentation/apply_for_jobs_one_screen/apply_for_jobs_one_screen.dart';
import '../presentation/apply_for_jobs_screen/apply_for_jobs_screen.dart';
import '../presentation/activities_tab_container_screen/activities_tab_container_screen.dart';
import '../presentation/message_page_one_screen/message_page_one_screen.dart';
import '../presentation/message_page_chatting_screen/message_page_chatting_screen.dart';
import '../presentation/settings_page_one_screen/settings_page_one_screen.dart';
import '../presentation/change_password_page_one_screen/change_password_page_one_screen.dart';
import '../presentation/update_profile_page_two_screen/update_profile_page_two_screen.dart';
import '../presentation/update_profile_page_one_screen/update_profile_page_one_screen.dart';
import '../presentation/update_profile_page_three_screen/update_profile_page_three_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomePageScreen = '/welcome_page_screen';

  static const String signupOptionsPageScreen = '/signup_options_page_screen';

  static const String loginOptionsPageScreen = '/login_options_page_screen';

  static const String employerSignUppageScreen = '/employer_sign_uppage_screen';

  static const String employerSignuppageOneScreen =
      '/employer_signuppage_one_screen';

  static const String successfulPageScreen = '/successful_page_screen';

  static const String employerLoginPageScreen = '/employer_login_page_screen';

  static const String employerDashboardPage = '/employer_dashboard_page';

  static const String searchResultPageScreen = '/search_result_page_screen';

  static const String paymentsMadePageScreen = '/payments_made_page_screen';

  static const String postJobOnePage = '/post_job_one_page';

  static const String postJobTwoScreen = '/post_job_two_screen';

  static const String postJobThreeScreen = '/post_job_three_screen';

  static const String postJobFourScreen = '/post_job_four_screen';

  static const String paymentPageScreen = '/payment_page_screen';

  static const String payWithCardPageScreen = '/pay_with_card_page_screen';

  static const String paymentSuccessfulScreen = '/payment_successful_screen';

  static const String payWithTransferPageScreen =
      '/pay_with_transfer_page_screen';

  static const String formTransferPageOneScreen =
      '/form_transfer_page_one_screen';

  static const String formTransferPageScreen = '/form_transfer_page_screen';

  static const String manageJobsPage = '/manage_jobs_page';

  static const String viewCandidatesPageScreen = '/view_candidates_page_screen';

  static const String acceptRejectPageScreen = '/accept_reject_page_screen';

  static const String candidatesProfileAcceptPageScreen =
      '/candidates_profile_accept_page_screen';

  static const String messagePageScreen = '/message_page_screen';

  static const String messagePageChattingOneScreen =
      '/message_page_chatting_one_screen';

  static const String settingsPage = '/settings_page';

  static const String changePasswordPageScreen = '/change_password_page_screen';

  static const String updateProfilePageScreen = '/update_profile_page_screen';

  static const String jSCreateAccountPageThreeScreen =
      '/j_s_create_account_page_three_screen';

  static const String jSCreateAccountPageFourScreen =
      '/j_s_create_account_page_four_screen';

  static const String jSCreateAccountPageFiveScreen =
      '/j_s_create_account_page_five_screen';

  static const String jSCreateAccountPageSixScreen =
      '/j_s_create_account_page_six_screen';

  static const String jSCreateAccountPageScreen =
      '/j_s_create_account_page_screen';

  static const String jSCreateAccountPageTwoScreen =
      '/j_s_create_account_page_two_screen';

  static const String jSCreateAccountPageOneScreen =
      '/j_s_create_account_page_one_screen';

  static const String verificationPageOneScreen =
      '/verification_page_one_screen';

  static const String jSLoginPageScreen = '/j_s_login_page_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String searchJobResultPageScreen =
      '/search_job_result_page_screen';

  static const String notificationBarPageScreen =
      '/notification_bar_page_screen';

  static const String applyForJobsOneScreen = '/apply_for_jobs_one_screen';

  static const String applyForJobsScreen = '/apply_for_jobs_screen';

  static const String activitiesPage = '/activities_page';

  static const String activitiesTabContainerScreen =
      '/activities_tab_container_screen';

  static const String messagePageOneScreen = '/message_page_one_screen';

  static const String messagePageChattingScreen =
      '/message_page_chatting_screen';

  static const String settingsPageOneScreen = '/settings_page_one_screen';

  static const String changePasswordPageOneScreen =
      '/change_password_page_one_screen';

  static const String updateProfilePageTwoScreen =
      '/update_profile_page_two_screen';

  static const String updateProfilePageOneScreen =
      '/update_profile_page_one_screen';

  static const String updateProfilePageThreeScreen =
      '/update_profile_page_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomePageScreen: (context) => WelcomePageScreen(),
    signupOptionsPageScreen: (context) => SignupOptionsPageScreen(),
    loginOptionsPageScreen: (context) => LoginOptionsPageScreen(),
    employerSignUppageScreen: (context) => EmployerSignUpPageScreen(),
    employerSignuppageOneScreen: (context) => EmployerSignuppageOneScreen(),
    successfulPageScreen: (context) => SuccessfulPageScreen(),
    employerLoginPageScreen: (context) => EmployerLoginPageScreen(),
    searchResultPageScreen: (context) => SearchResultPageScreen(),
    paymentsMadePageScreen: (context) => PaymentsMadePageScreen(),
    postJobTwoScreen: (context) => PostJobTwoScreen(),
    postJobThreeScreen: (context) => PostJobThreeScreen(),
    postJobFourScreen: (context) => PostJobFourScreen(),
    paymentPageScreen: (context) => PaymentPageScreen(),
    payWithCardPageScreen: (context) => PayWithCardPageScreen(),
    paymentSuccessfulScreen: (context) => PaymentSuccessfulScreen(),
    payWithTransferPageScreen: (context) => PayWithTransferPageScreen(),
    formTransferPageOneScreen: (context) => FormTransferPageOneScreen(),
    formTransferPageScreen: (context) => FormTransferPageScreen(),
    viewCandidatesPageScreen: (context) => ViewCandidatesPageScreen(
          job_id: "",
        ),
    acceptRejectPageScreen: (context) => AcceptRejectPageScreen(),
    candidatesProfileAcceptPageScreen: (context) =>
        CandidatesProfileAcceptPageScreen(),
    messagePageScreen: (context) => MessagePageScreen(),
    messagePageChattingOneScreen: (context) => MessagePageChattingOneScreen(),
    changePasswordPageScreen: (context) => ChangePasswordPageScreen(),
    //updateProfilePageScreen: (context) => UpdateProfilePageScreen(),
    jSCreateAccountPageThreeScreen: (context) =>
        JSCreateAccountPageThreeScreen(),
    jSCreateAccountPageFourScreen: (context) => JSCreateAccountPageFourScreen(),
    jSCreateAccountPageFiveScreen: (context) => JSCreateAccountPageFiveScreen(),
    jSCreateAccountPageSixScreen: (context) => JSCreateAccountPageSixScreen(),
    jSCreateAccountPageScreen: (context) => JSCreateAccountPageScreen(),
    jSCreateAccountPageTwoScreen: (context) => JSCreateAccountPageTwoScreen(),
    jSCreateAccountPageOneScreen: (context) => JSCreateAccountPageOneScreen(),
    verificationPageOneScreen: (context) => VerificationPageOneScreen(),
    jSLoginPageScreen: (context) => JSLoginPageScreen(),
    dashboardScreen: (context) => DashboardPage(),
    searchJobResultPageScreen: (context) => SearchJobResultPageScreen(),
    notificationBarPageScreen: (context) => NotificationBarPageScreen(),
    applyForJobsOneScreen: (context) => ApplyForJobsOneScreen(),
    applyForJobsScreen: (context) => ApplyForJobsScreen(),
    activitiesTabContainerScreen: (context) => ActivitiesTabContainerScreen(),
    messagePageOneScreen: (context) => MessagePageOneScreen(),
    messagePageChattingScreen: (context) => MessagePageChattingScreen(),
    settingsPageOneScreen: (context) => SettingsPageOneScreen(),
    changePasswordPageOneScreen: (context) => ChangePasswordPageOneScreen(),
    updateProfilePageTwoScreen: (context) => UpdateProfilePageTwoScreen(),
    updateProfilePageOneScreen: (context) => UpdateProfilePageOneScreen(),
    updateProfilePageThreeScreen: (context) => UpdateProfilePageThreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
