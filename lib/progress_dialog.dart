import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget {

  String? message;
  ProgressDialog({this.message});

  @override
  Widget build(BuildContext context) {           //IT GIVES US A BAR WHICH IS MADE HERE MANUALLY AND INSIDE IT WE HAVE A CIRCULAR PROGRESS INDICATOR TO SHOW THAT ITS PROCESSING
    return Dialog(
      backgroundColor: Colors.green,
      child: Container(
        margin: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Row(
            children: [
              const SizedBox(width: 8.0),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.green),
              ),
              const SizedBox(width: 26.0),

              Text(
                message!,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
