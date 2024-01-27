import 'package:flutter/material.dart';

class CustomFavoriteButton extends StatelessWidget {
  const CustomFavoriteButton({super.key,});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      width: 61,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            
          ),
          side: const BorderSide(
            color:  Color(0xFF009393)
          ),
          elevation: 0,
          backgroundColor:Colors.white,
        ),
        onPressed: () {},
        child:const Icon(Icons.favorite, color: Color(0xFF009393),),
        
      ),
    );
  }
}
