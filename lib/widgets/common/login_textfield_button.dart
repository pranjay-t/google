import 'package:flutter/material.dart';
import 'package:google_clone/screens/pallette.dart';

class LoginTextfieldButton extends StatelessWidget {
  final String text;
  const LoginTextfieldButton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Pallete.borderColor,
              width: 4,
            ),
    );
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth:340, 
      ),
      child: TextFormField(
        
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal:18,vertical: 23),
          hintText: text,
          hintStyle: TextStyle(fontSize:16,color: Colors.grey),
          border: border,
          enabledBorder: border,
          focusedBorder: border,
          )
        ),
      );
  }
}