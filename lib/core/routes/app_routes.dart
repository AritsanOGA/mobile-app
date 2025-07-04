import 'package:artisan_oga/core/routes/app_page_routes.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/employer_nav_bar_page.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/forgot_password_page.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/j_s_create_account_page_six_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/j_s_create_account_page_three_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/j_s_create_account_page_two_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/j_s_navbar_page.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/job_search_details_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/job_search_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/password_reset_page.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/splash_page.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/succes_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/verify_emplyer_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/verify_forgot_password_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/verify_job_seeker_screen.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/presentation/pages/accept_reject_page_screen.dart';
import 'package:artisan_oga/features/candidate/presentation/pages/candidates_profile_accept_page_screen.dart';
import 'package:artisan_oga/features/candidate/presentation/pages/search_details_screen.dart';
import 'package:artisan_oga/features/candidate/presentation/pages/view_candidates_page_screen.dart';
import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';
import 'package:artisan_oga/features/home/domain/entities/featured_job_entity.dart';
import 'package:artisan_oga/features/home/presentation/pages/candidate_profile_page.dart';
import 'package:artisan_oga/features/home/presentation/pages/employer_dashboard_page.dart';
import 'package:artisan_oga/features/home/presentation/pages/featured_job_details.dart';
import 'package:artisan_oga/features/home/presentation/pages/job_details_details.screen.dart';
import 'package:artisan_oga/features/home/presentation/pages/candidate_job_history_details_screen.dart';
import 'package:artisan_oga/features/home/presentation/pages/success_job_application_screen.dart';
import 'package:artisan_oga/features/payment/presentation/pages/create_invoice_screen.dart';
import 'package:artisan_oga/features/payment/presentation/pages/invoice_history_screen.dart';
import 'package:artisan_oga/features/payment/presentation/pages/invoice_screen.dart';
import 'package:artisan_oga/features/payment/presentation/pages/invoice_screen1.dart';
import 'package:artisan_oga/features/payment/presentation/pages/invoice_success_payment_screen.dart';
import 'package:artisan_oga/features/payment/presentation/pages/payment_history_screen.dart';
import 'package:artisan_oga/features/payment/presentation/pages/payment_page_screen.dart';
import 'package:artisan_oga/features/settings/presentation/pages/employer_password_change_screen.dart';
import 'package:artisan_oga/features/settings/presentation/pages/js_notification_page.dart';
import 'package:artisan_oga/features/settings/presentation/pages/js_password_change_screen.dart';
import 'package:artisan_oga/features/settings/presentation/pages/js_profile_page1.dart';
import 'package:artisan_oga/features/settings/presentation/pages/notification_job_details_screen.dart';
import 'package:artisan_oga/features/settings/presentation/pages/update_profile_page_one_screen.dart';
import 'package:artisan_oga/features/settings/presentation/pages/update_profile_page_screen.dart';
import 'package:artisan_oga/features/settings/presentation/pages/update_profile_page_two_screen.dart';
import 'package:flutter/material.dart';

import '../../features/authentication/presentation/screens/employer_login_page_screen.dart';
import '../../features/authentication/presentation/screens/employer_sign_uppage_screen.dart';
import '../../features/authentication/presentation/screens/employer_signuppage_one_screen.dart';
import '../../features/authentication/presentation/screens/j_s_create_account_page_five_screen.dart';
import '../../features/authentication/presentation/screens/j_s_create_account_page_four_screen.dart';
import '../../features/home/presentation/pages/dashboard_screen.dart';
import '../../features/home/presentation/pages/successful_job_application_screen.dart';
import '../../presentation/login_options_page_screen/login_options_page_screen.dart';
import '../../presentation/search_result_page_screen/search_result_page_screen.dart';
import '../../presentation/signup_options_page_screen/signup_options_page_screen.dart';
import '../../presentation/successful_page_screen/successful_page_screen.dart';
import '../../presentation/welcome_page_screen/welcome_page_screen.dart';

class AppRoutes {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static const String splashScreen = '/';
  static const String welcomePageScreen = '/welcome_page_screen';
  static const String employerNavBarScreen = '/employer_navbar_screen';
  static const String jobSeekerNavBarScreen = '/job_seeker_navbar_screen';
  static const String signupOptionsPageScreen = '/signup_options_page_screen';

  static const String loginOptionsPageScreen = '/login_options_page_screen';
  static const String successScreen = '/success_page_screen';

  static const String invoiceSuccessScreen = '/invoice_success_screen';
  static const String successfulApplicationScreen =
      '/success_application_screen';
  static const String employerSignUppageScreen = '/employer_sign_uppage_screen';

  static const String employerSignuppageOneScreen =
      '/employer_signuppage_one_screen';

  static const String successfulPageScreen = '/successful_page_screen';
  // static const String paymentPageScreen = '/payment_page_screen';

  static const String employerLoginPageScreen = '/employer_login_page_screen';

  static const String employerDashboardPage = '/employer_dashboard_page';

  static const String updateEmployerPage = '/update_employer_page';
  static const String searchResultPageScreen = '/search_result_page_screen';

  static const String paymentsMadePageScreen = '/payments_made_page_screen';

  static const String createInvoicePage = '/create_invoice_page';

  static const String invoicePage = '/invoice_page';
  static const String invoicePage1 = '/invoice_page1';

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
  static const String successfulJobPostedPage = '/successful-job-posted_page';
  static const String successfulJobApplicationPage =
      '/successful-job-applicaion_page';
  static const String viewCandidatesPageScreen = '/view_candidates_page_screen';

  static const String acceptRejectPageScreen = '/accept_reject_page_screen';

  static const String candidatesProfileAcceptPageScreen =
      '/candidates_profile_accept_page_screen';
  static const String candidatesProfilePage = '/candidates_profile_page';
  static const String messagePageScreen = '/message_page_screen';

  static const String messagePageChattingOneScreen =
      '/message_page_chatting_one_screen';

  static const String settingsPage = '/settings_page';

  static const String jSPasswordChangeScreen = '/jS-password-change-screen';

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

  static const String paymentHistoryScreen = '/payment_history_screen';

  static const String invoiceHistoryScreen = '/invoice_history_screen';
  // static const String successfulJobPostedPage = '/successful_job_posted_screen';
  static const String searchJobResultPageScreen =
      '/search_job_result_page_screen';

  static const String notificationBarPageScreen =
      '/notification_bar_page_screen';

  static const String applyForJobsOneScreen = '/apply_for_jobs_one_screen';

  static const String applyForJobsScreen = '/apply_for_jobs_screen';

  static const String activitiesPage = '/activities_page';
  static const String feauredJobDetails = '/featured-job-details';
  static const String jobHistoryDetails = '/job-history-details';
  static const String activitiesTabContainerScreen =
      '/activities_tab_container_screen';

  static const String messagePageOneScreen = '/message_page_one_screen';

  static const String messagePageChattingScreen =
      '/message_page_chatting_screen';

  static const String settingsPageOneScreen = '/settings_page_one_screen';

  static const String employerPasswordChangeScreen =
      '/employer-password-change-screen';

  static const String updateProfilePageTwoScreen =
      '/update_profile_page_two_screen';

  static const String updateProfilePageOneScreen =
      '/update_profile_page_one_screen';

  static const String updateProfilePageThreeScreen =
      '/update_profile_page_three_screen';
  static const String jobSearch = '/job-search_screen';
  static const String candidateJobSearchDetailsScreen =
      '/candidate_job_search_details_screen';
  static const String jobHistoryDetailsScreen = '/job_history_details_screen';
  static const String jobSearchDetailsScreen = '/job_search_details_screen';
  static const String searchDetailsScreen = '/search_details_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String verifyEmployerScreen = '/verify_employer_screen';
  static const String verifyJobSeekerScreen = '/verify_job_seeker_screen';
  static const String forgotPasswordScreen = '/forgot_password_screen';
  static const String verifyForgotPasswordScreen =
      '/verify_forgot_password_screen';
  static const String resetPasswordScreen = '/reset_password_screen';
  static const String jsProfilePage = '/js_profile_page';
  static const String jsNotificationPage = '/js_notification_page';
  static const String notificationJobDetailsPage =
      '/notification_job_detail_page';
  static const String employerDashboard = '/employer-dashboard';
  static Map<String, WidgetBuilder> routes = {
    // welcomePageScreen: (context) => WelcomePageScreen(),
    // signupOptionsPageScreen: (context) => SignupOptionsPageScreen(),
    // loginOptionsPageScreen: (context) => LoginOptionsPageScreen(),
    // employerSignUppageScreen: (context) => EmployerSignUpPageScreen(),
    // //employerSignuppageOneScreen: (context) => EmployerSignuppageOneScreen(),
    // successfulPageScreen: (context) => SuccessfulPageScreen(),
    // employerLoginPageScreen: (context) => EmployerLoginPageScreen(),
    // searchResultPageScreen: (context) => SearchResultPageScreen(),
    // paymentsMadePageScreen: (context) => PaymentsMadePageScreen(),
    // postJobTwoScreen: (context) => PostJobTwoScreen(),
    // postJobThreeScreen: (context) => PostJobThreeScreen(),
    // postJobFourScreen: (context) => PostJobFourScreen(),
    // paymentPageScreen: (context) => PaymentPageScreen(),
    // payWithCardPageScreen: (context) => PayWithCardPageScreen(),
    // paymentSuccessfulScreen: (context) => PaymentSuccessfulScreen(),
    // payWithTransferPageScreen: (context) => PayWithTransferPageScreen(),
    // formTransferPageOneScreen: (context) => FormTransferPageOneScreen(),
    // formTransferPageScreen: (context) => FormTransferPageScreen(),
    // viewCandidatesPageScreen: (context) => ViewCandidatesPageScreen(
    //       job_id: "",
    //     ),
    // acceptRejectPageScreen: (context) => AcceptRejectPageScreen(),
    // candidatesProfileAcceptPageScreen: (context) =>
    //     CandidatesProfileAcceptPageScreen(),
    // messagePageScreen: (context) => MessagePageScreen(),
    // messagePageChattingOneScreen: (context) => MessagePageChattingOneScreen(),
    // changePasswordPageScreen: (context) => ChangePasswordPageScreen(),
    //updateProfilePageScreen: (context) => UpdateProfilePageScreen(),
    // jSCreateAccountPageThreeScreen: (context) =>
    //     JSCreateAccountPageThreeScreen(),
    // jSCreateAccountPageFourScreen: (context) => JSCreateAccountPageFourScreen(),
    // jSCreateAccountPageFiveScreen: (context) => JSCreateAccountPageFiveScreen(),
    // jSCreateAccountPageSixScreen: (context) => JSCreateAccountPageFourScreen(),
    // jSCreateAccountPageScreen: (context) => JSCreateAccountPageFiveScreen(),
    // jSCreateAccountPageTwoScreen: (context) => JSCreateAccountPageFiveScreen(),
    // jSCreateAccountPageOneScreen: (context) => JSCreateAccountPageOneScreen(),
    // verificationPageOneScreen: (context) => VerificationPageOneScreen(),
    // jSLoginPageScreen: (context) => JSLoginPageScreen(),
    // dashboardScreen: (context) => DashboardPage(),
    // searchJobResultPageScreen: (context) => SearchJobResultPageScreen(),
    // notificationBarPageScreen: (context) => NotificationBarPageScreen(),
    // applyForJobsOneScreen: (context) => ApplyForJobsOneScreen(),
    // applyForJobsScreen: (context) => SuccessfulJobApplocationScreen(),
    // activitiesTabContainerScreen: (context) => ActivitiesTabContainerScreen(),
    // messagePageOneScreen: (context) => MessagePageOneScreen(),
    // messagePageChattingScreen: (context) => MessagePageChattingScreen(),
    // settingsPageOneScreen: (context) => SettingsPageOneScreen(),
    // changePasswordPageOneScreen: (context) => ChangePasswordPageOneScreen(),
    // updateProfilePageTwoScreen: (context) => UpdateProfilePageTwoScreen(),
    // updateProfilePageOneScreen: (context) => UpdateProfilePageOneScreen(),
    // updateProfilePageThreeScreen: (context) => UpdateProfilePageThreeScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen()
  };

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return AppPageRouteBuilder(
          navigateTo: SplashPage(),
        );
      case employerDashboard:
        return AppPageRouteBuilder(
          navigateTo: EmployerDashboardPage(),
        );
      case welcomePageScreen:
        return AppPageRouteBuilder(
          navigateTo: WelcomePageScreen(),
        );
      case jobSeekerNavBarScreen:
        return AppPageRouteBuilder(
          navigateTo: JobSeekerNavBarPage(),
        );
      case candidateJobSearchDetailsScreen:
        return AppPageRouteBuilder(
          navigateTo: CandidateJobHistoryDetailsScreen(
            jobId: settings.arguments as String,
          ),
        );
      case employerNavBarScreen:
        return AppPageRouteBuilder(
          navigateTo: EmployerNavBarPage(),
        );
      case invoiceHistoryScreen:
        return AppPageRouteBuilder(
          navigateTo: InvoiceHistoryScreen(),
        );
      case paymentHistoryScreen:
        return AppPageRouteBuilder(
          navigateTo: PaymentHistoryScreen(),
        );
      case invoiceSuccessScreen:
        return AppPageRouteBuilder(
          navigateTo: InvoiceSuccessfulPage(),
        );
      case jsProfilePage:
        return AppPageRouteBuilder(
          navigateTo: JSProfilePage1(),
        );
      case jsNotificationPage:
        return AppPageRouteBuilder(
          navigateTo: JsNotificationPage(),
        );
      case notificationJobDetailsPage:
        return AppPageRouteBuilder(
          navigateTo: NotificationJobDetailsScreen(
            jobId: settings.arguments as String,
          ),
        );
      case successScreen:
        final args = settings.arguments as Map<String, dynamic>;

        return AppPageRouteBuilder(
          navigateTo: SuccessScreen(
            message: args['message'] as String,
            onTap: args['onTap'] as VoidCallback,
          ),
        );
      case signupOptionsPageScreen:
        return AppPageRouteBuilder(
          navigateTo: const SignupOptionsPageScreen(),
        );
      case loginOptionsPageScreen:
        return AppPageRouteBuilder(
          navigateTo: const LoginOptionsPageScreen(),
        );
      case createInvoicePage:
        final args = settings.arguments as Map<String, dynamic>;

        return AppPageRouteBuilder(
          navigateTo: CreateInvoiceScreen(
            amount: args['amount'] as String,
            identity: args['identity'] as String,
            planName: args['planName'] as String,
            candidate: args['candidate'] as String,
          ),
        );
      case invoicePage:
        return AppPageRouteBuilder(
          navigateTo: const InvoiceScreen(),
        );
      case jobSearch:
        return AppPageRouteBuilder(
          navigateTo: const JobSearchScreen(),
        );
      case jobSearchDetailsScreen:
        return AppPageRouteBuilder(
          navigateTo: JobSearchDetailsScreen(
            jobId: settings.arguments as String,
          ),
        );
      case searchDetailsScreen:
        return AppPageRouteBuilder(
          navigateTo: SearchDetailsScreen(
            jobId: settings.arguments as String,
          ),
        );
      case invoicePage1:
        return AppPageRouteBuilder(
          navigateTo: Invoice1Screen(
            identity: settings.arguments as String,
          ),
        );
      case employerSignUppageScreen:
        return AppPageRouteBuilder(
          navigateTo: EmployerSignUpPageScreen(),
        );
      // case jSLoginPageScreen:
      //   return AppPageRouteBuilder(
      //     navigateTo: JSLoginPageScreen(),
      //   );

      case employerSignuppageOneScreen:
        return AppPageRouteBuilder(
          navigateTo: EmployerSignuppageOneScreen(
            email: settings.arguments as String,
          ),
        );
      case viewCandidatesPageScreen:
        final args = settings.arguments as Map<String, dynamic>;

        return AppPageRouteBuilder(
          navigateTo: ViewCandidatesPageScreen(
            jobId: args['jobId'] as String,
            jobIdentity: args['jobIdentity'] as String,
          ),
        );
      case verifyEmployerScreen:
        return AppPageRouteBuilder(
          navigateTo: VerifyEmployerScreen(
            email: settings.arguments as String,
          ),
        );
      case verifyJobSeekerScreen:
        return AppPageRouteBuilder(
          navigateTo: VerifyJobSeekerScreen(
            email: settings.arguments as String,
          ),
        );

      case successfulPageScreen:
        return AppPageRouteBuilder(
          navigateTo: const SuccessfulPageScreen(),
        );
      case paymentPageScreen:
        return AppPageRouteBuilder(
          navigateTo: PaymentPageScreen(
            identity: settings.arguments as String,
          ),
        );
      case feauredJobDetails:
        final model = settings.arguments as FeaturedJobResponseEntity;
        return AppPageRouteBuilder(
          navigateTo: FeaturedJobDetailsScreen(
            featuredJobResponseEntity: model,
          ),
        );

      case jobHistoryDetails:
        final model = settings.arguments as EmployerJobResponseEntity;
        return AppPageRouteBuilder(
          navigateTo: JobHistoryDetailsScreen(
            employerJobResponseEntity: model,
          ),
        );

      case dashboardScreen:
        return AppPageRouteBuilder(
          navigateTo: DashboardPage(),
        );
      case jSCreateAccountPageTwoScreen:
        return AppPageRouteBuilder(
          navigateTo: JSCreateAccountPagetTwoScreen(
            email: settings.arguments as String,
          ),
        );
      case jSCreateAccountPageThreeScreen:
        return AppPageRouteBuilder(
          navigateTo: JSCreateAccountPagetThreeScreen(
            email: settings.arguments as String,
          ),
        );
      case jSCreateAccountPageSixScreen:
        return AppPageRouteBuilder(
          navigateTo: JSCreateAccountPageSixScreen(
            email: settings.arguments as String,
          ),
        );
      case employerLoginPageScreen:
        return AppPageRouteBuilder(
          navigateTo: const EmployerLoginPageScreen(),
        );
      case acceptRejectPageScreen:
        final args = settings.arguments as Map<String, dynamic>;

        return AppPageRouteBuilder(
          navigateTo: AcceptRejectPageScreen(
            jobIdentity: args['jobIdentity'] as String,
            getAssignedApplicantsEntity:
                args['applicantEntity'] as GetAssignedApplicantsEntity,
          ),
        );
      case searchResultPageScreen:
        return AppPageRouteBuilder(
          navigateTo: SearchResultPageScreen(),
        );
      case employerPasswordChangeScreen:
        return AppPageRouteBuilder(
          navigateTo: EmployerPasswordChangeScreen(),
        );
      case jSPasswordChangeScreen:
        return AppPageRouteBuilder(
          navigateTo: JSPasswordChangeScreen(),
        );

      case candidatesProfileAcceptPageScreen:
        return AppPageRouteBuilder(
          navigateTo: CandidatesProfileAcceptPageScreen(
            id: settings.arguments as String,
          ),
        );

      case candidatesProfilePage:
        return AppPageRouteBuilder(
          navigateTo: CandidatesProfilePage(
            id: settings.arguments as String,
          ),
        );
      case jSCreateAccountPageFourScreen:
        return AppPageRouteBuilder(
          navigateTo: JSCreateAccountPageFourScreen(
            email: settings.arguments as String,
          ),
        );
      case jSCreateAccountPageFiveScreen:
        return AppPageRouteBuilder(
          navigateTo: JSCreateAccountPageFiveScreen(
            email: settings.arguments as String,
          ),
        );
      case employerDashboardPage:
        return AppPageRouteBuilder(
          navigateTo: EmployerDashboardPage(),
        );
      case forgotPasswordScreen:
        return AppPageRouteBuilder(
          navigateTo: ForgotPasswordPage(),
        );
      case verifyForgotPasswordScreen:
        return AppPageRouteBuilder(
          navigateTo: VerifyForgotPasswordPage(
            email: settings.arguments as String,
          ),
        );
      case resetPasswordScreen:
        return AppPageRouteBuilder(
          navigateTo: PasswordResetPage(
            email: settings.arguments as String,
          ),
        );
      case successfulJobPostedPage:
        return AppPageRouteBuilder(
          navigateTo: const SuccessfulJobPostedPage(),
        );
      case successfulJobApplicationPage:
        return AppPageRouteBuilder(
          navigateTo: const SuccessfulJobApplicationPage(),
        );
      // case updateProfilePageThreeScreen:
      //   return AppPageRouteBuilder(
      //     navigateTo: UpdateProfilePageThreeScreen(),
      //   );
      case updateProfilePageTwoScreen:
        return AppPageRouteBuilder(
          navigateTo: UpdateProfilePageTwoScreen(),
        );
      case updateProfilePageOneScreen:
        return AppPageRouteBuilder(
          navigateTo: UpdateProfilePageOneScreen(),
        );
      case updateEmployerPage:
        return AppPageRouteBuilder(
          navigateTo: EmployerProfilePageScreen(),
        );
      // case bottomNavBar:
      //   return MaterialPageRoute(builder: (context) => const BottomNavBar());

      // case updateProfilePage:
      //   return AppPageRouteBuilder(navigateTo: const UpdateProfileScreen());
      // case passwordManaagerPage:
      //   return AppPageRouteBuilder(navigateTo: const PasswordManagerScreen());
      // case settingsPage:
      //   return AppPageRouteBuilder(navigateTo: const SettingsScreeen());
      // case paymentMethodPage:
      //   return AppPageRouteBuilder(navigateTo: const PaymentMethodScreen());
      // case machineDetailsPage:
      //   return AppPageRouteBuilder(navigateTo: MachineDetailsScreen());
      // case cashDetailsPage:
      //   return AppPageRouteBuilder(navigateTo: CashDetailsScreen());
      // case generalPage:
      //   return AppPageRouteBuilder(navigateTo: const GeneralScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
