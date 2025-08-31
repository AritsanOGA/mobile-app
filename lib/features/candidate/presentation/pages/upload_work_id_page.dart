import 'package:artisan_oga/core/routes/app_routes.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/candidate/domain/entities/upload_card_entity.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:artisan_oga/theme/app_decoration.dart';
import 'package:artisan_oga/theme/custom_text_style.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UploadWorkIDPage extends HookWidget {
  final String id;
  const UploadWorkIDPage({
    required this.id,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<AuthBloc>().add(const AuthEvent.getUserData());
      return null;
    }, []);
    return Scaffold(
      appBar: CustomAppBar(
        titleStatus: false,
        title: '',
      ),
      body: BlocConsumer<CandidatesBloc, CandidatesState>(
        listener: (context, state) {
          if (state.uploadWorkIdState == ViewState.success) {
            Navigator.pushNamed(
              context,
              AppRoutes.successScreen2,
              arguments: {
                'message': 'Uploaded Successfully',
                'onTap': () {
                  // Navigator.pop(context);
                  // Navigator.pop(context);
                  Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.searchDetailsScreen,
                    arguments: id,
                  );
                  // Navigator.pushNamed(
                  //   context,
                  //   AppRoutes.jobSeekerNavBarScreen,
                  // );
                },
              },
            );
          } else if (state.uploadWorkIdState == ViewState.failure) {
            ToastUtils.showRedToast(state.errorMessage ?? '');
          }
        },
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ID Card',
                  style: CustomTextStyles.titleSmallSemiBold,
                ),
                SizedBox(height: 10.v),
                Container(
                    margin: EdgeInsets.only(right: 10.h),
                    padding:
                        EdgeInsets.symmetric(vertical: 6.v, horizontal: 5.v),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                              onTap: () {
                                context
                                    .read<CandidatesBloc>()
                                    .add(CandidatesEvent.selectWorkId());
                              },
                              child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4)),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text('Choose File',
                                          style: theme.textTheme.labelMedium
                                              ?.copyWith(
                                                  color: const Color.fromARGB(
                                                      255, 88, 49, 49))),
                                    ),
                                  ))),
                          SizedBox(width: 5.v),
                          Padding(
                            padding: EdgeInsets.only(top: 5.v, right: 5.v),
                            child: Text(
                                state.workId == null
                                    ? "No file chosen"
                                    : "File selected",
                                style: theme.textTheme.labelLarge),
                          )
                        ])),
                SizedBox(height: 70.v),
                CustomElevatedButton(
                  isBusy: state.uploadWorkIdState == ViewState.loading,
                  onPressed: () {
                    context.read<CandidatesBloc>().add(
                          CandidatesEvent.uploadWorkId(UploadIDCardEntity(
                              card: state.workId!,
                              candidateIdentity:
                                  UserService().authData?.user.identity ?? '')),
                        );
                  },
                  text: "Submit",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
