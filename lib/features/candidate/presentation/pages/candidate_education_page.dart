import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CandidateEducationPage extends HookWidget {
  const CandidateEducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleStatus: false,
        title: '',
      ),
      body: BlocBuilder<CandidatesBloc, CandidatesState>(
        builder: (context, state) {
          return Column(
            children: [
              ...List.generate(4, (index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'dndn',
                            style: CustomTextStyles.titleSmallSemiBold,
                          ),
                          Text('dndn')
                        ],
                      ),
                      SizedBox(height: 14.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('dndn'), Text('dndn')],
                      ),
                      SizedBox(height: 14.v),
                      Text('dmd')
                    ],
                  ),
                );
              })
            ],
          );
        },
      ),
    );
  }
}
