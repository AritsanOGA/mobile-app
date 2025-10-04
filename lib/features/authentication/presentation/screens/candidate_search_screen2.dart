import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CandidateSearchScreen2 extends HookWidget {
  const CandidateSearchScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final locationController = useTextEditingController();
    final query = useState<String>(''); // To hold the search query
    final filteredCandidates =
        useState<List<dynamic>>([]); // To hold the filtered candidates

    // Filter candidates by name based on the search query
    List<dynamic> applyFilter({
      required List<dynamic> source,
      required String q,
    }) {
      final text = q.trim().toLowerCase();
      if (text.isEmpty) return List<dynamic>.from(source);

      return source.where((item) {
        final name = (item.fullName ?? '').toString().toLowerCase();
        return name.contains(text);
      }).toList();
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kwhite,
        body: BlocBuilder<AuthBloc, AuthState>(
          bloc: context.read<AuthBloc>()..add(AuthEvent.candidateSearch()),
          builder: (context, state) {
            if (query.value.isNotEmpty) {
              filteredCandidates.value = applyFilter(
                source: state.candidateSearch,
                q: query.value,
              );
            } else {
              filteredCandidates.value = state.candidateSearch;
            }
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    child: Row(
                      children: [],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Find New Talents',
                      style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.blueGrey)),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    title: 'Search for talents',
                    controller: locationController,
                    hintText: "Search...",
                    hintStyle: theme.textTheme.titleSmall!,
                    onChanged: (value) {
                      query.value = value;
                    },
                  ),
                  state.candidateSearchState == ViewState.loading
                      ? Column(
                          children: [
                            SizedBox(
                              height: 100.h,
                            ),
                            CircularProgressIndicator(
                              color: theme.primaryColor,
                            ),
                          ],
                        )
                      : filteredCandidates.value.isEmpty
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 200,
                                ),
                                Text('No Result found',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            )
                          : Expanded(
                              child: ListView.builder(
                                  itemCount: filteredCandidates.value.length,
                                  itemBuilder: (context, index) {
                                    final filteredValue =
                                        filteredCandidates.value;
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 10),
                                      child: Material(
                                        elevation: 5,
                                        borderRadius: BorderRadius.circular(20),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      filteredValue[index]
                                                          .fullName,
                                                      style: theme
                                                          .textTheme.bodyMedium
                                                          ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 18)),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors.blueGrey
                                                            .withOpacity(0.6)),
                                                    child: Text(
                                                        filteredValue[index]
                                                            .availability,
                                                        style: theme.textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 10)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                          ImageConstant
                                                              .category),
                                                      SizedBox(
                                                        width: 10.v,
                                                      ),
                                                      Text(
                                                          filteredValue[index]
                                                              .categoryName,
                                                          style: theme.textTheme
                                                              .bodyMedium
                                                              ?.copyWith(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          )),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                          ImageConstant
                                                              .imgMdiLocation),
                                                      SizedBox(
                                                        width: 10.v,
                                                      ),
                                                      Text(
                                                          filteredValue[index]
                                                              .city,
                                                          style: theme.textTheme
                                                              .bodyMedium),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context,
                                                      AppRoutes
                                                          .candidatesProfilePage,
                                                      arguments:
                                                          filteredValue[index]
                                                              .identity);
                                                },
                                                child: Container(
                                                  height: 40.h,
                                                  width: 180.v,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: theme
                                                              .primaryColor),
                                                      color: theme.primaryColor
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Center(
                                                    child: Text('View Profile',
                                                        style: theme.textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                                color: AppColors
                                                                    .kblack)),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
