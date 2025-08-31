import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Future<void> workPhotoDialog(BuildContext context, String image) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: AppColors.kwhite,
        insetPadding: EdgeInsets.all(16), 
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            imageUrl: 'https://$image',
            fit: BoxFit.cover,
            width: double.infinity,
            height:
                400, 
            progressIndicatorBuilder: (_, __, ___) => const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
            errorWidget: (_, __, ___) =>
                const Icon(Icons.broken_image, size: 80),
          ),
        ),
      );
    },
  );
}
