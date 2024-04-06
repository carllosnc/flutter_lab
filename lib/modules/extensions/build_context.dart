import 'package:flutter/material.dart';

extension CustomSnack on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        closeIconColor: Colors.white,
        backgroundColor: Colors.black,
        elevation: 0,
        showCloseIcon: true,
        content: Text(message),
      ),
    );
  }
}

extension CustomDialog on BuildContext {
  void showCustomDialog({
    required String title,
    required String message,
    required String positiveText,
    required VoidCallback onPositive,
    String? negativeText,
    VoidCallback? onNegative,
  }) {
    showDialog(
      context: this,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: onPositive,
              child: Text(positiveText),
            ),
            if (negativeText != null)
              TextButton(
                onPressed: onNegative ?? () => Navigator.of(context).pop(),
                child: Text(negativeText),
              ),
          ],
        );
      },
    );
  }
}
