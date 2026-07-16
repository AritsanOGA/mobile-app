import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void showApplyForJobDialog(BuildContext context, String jobId) {
  final homeBloc = context.read<HomeBloc>();
  showDialog(
    context: context,
    builder: (dialogContext) {
      return _ApplyForJobDialog(jobId: jobId, homeBloc: homeBloc);
    },
  );
}

class _ApplyForJobDialog extends StatefulWidget {
  final String jobId;
  final HomeBloc homeBloc;

  const _ApplyForJobDialog({required this.jobId, required this.homeBloc});

  @override
  State<_ApplyForJobDialog> createState() => _ApplyForJobDialogState();
}

class _ApplyForJobDialogState extends State<_ApplyForJobDialog> {
  bool isSuitable = false;
  bool isAvailable = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCheckboxTile(
              value: isSuitable,
              text:
                  'I confirm my suitability for this position after reviewing the job details and requirements',
              onChanged: (value) {
                setState(() => isSuitable = value);
              },
            ),
            SizedBox(height: 16.v),
            _buildCheckboxTile(
              value: isAvailable,
              text:
                  'I am available for the online screening and subsequent in-person interview if required.',
              onChanged: (value) {
                setState(() => isAvailable = value);
              },
            ),
            SizedBox(height: 24.v),
            CustomElevatedButton(
              text: 'Apply',
              onPressed: () {
                if (!isSuitable || !isAvailable) {
                  ToastUtils.showRedToast(
                      'Please confirm both statements to proceed');
                  return;
                }
                widget.homeBloc.add(HomeEvent.applyForJob(widget.jobId));
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 12.v),
            SizedBox(
              width: double.maxFinite,
              height: 50.v,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFF2F2F2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Close',
                  style: theme.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckboxTile({
    required bool value,
    required String text,
    required ValueChanged<bool> onChanged,
  }) {
    final primaryColor = theme.colorScheme.primary;
    return InkWell(
      onTap: () => onChanged(!value),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(top: 2.v),
            decoration: BoxDecoration(
              color: value ? primaryColor : Colors.transparent,
              border: Border.all(color: primaryColor, width: 1.5),
              borderRadius: BorderRadius.circular(4),
            ),
            child:
                value ? Icon(Icons.check, size: 14, color: Colors.white) : null,
          ),
          SizedBox(width: 10.h),
          Expanded(
            child: Text(text, style: theme.textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}
