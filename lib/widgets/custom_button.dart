import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.blue),
        textStyle: WidgetStateProperty.all(
          const TextStyle(color: Colors.white),
        ),
        minimumSize: WidgetStateProperty.all(
          Size(MediaQuery.of(context).size.width / 2.5, 50),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),


      //   style: ElevatedButton.styleFrom(
      //   minimumSize: const Size(double.infinity, 40), backgroundColor: Colors.blue,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(8),
      //   ),
      // ),
      // onPressed: onTap,
      // child: Text(text,style: TextStyle(color: Colors.white),),

    );
    // ElevatedButton(
    //   style: ElevatedButton.styleFrom(
    //     minimumSize: const Size(double.infinity, 40), backgroundColor: Colors.blue,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(8),
    //     ),
    //   ),
    //   onPressed: onTap,
    //   child: Text(text,style: TextStyle(color: Colors.white),),
    // );
  }
}
