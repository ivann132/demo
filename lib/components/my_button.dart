import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? onPressed;

  const MyButton({super.key, required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
      color: Colors.grey[300],
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: onPressed,
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
