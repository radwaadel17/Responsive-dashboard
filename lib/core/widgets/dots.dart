import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';

class ActiveDot extends StatelessWidget {
  const ActiveDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8,
      width: 32,
      decoration: BoxDecoration(
        color: AppColors.buleColor , 
        borderRadius: BorderRadius.circular(12) , 
      ), duration:  Duration(milliseconds: 300),
    
    );
  }
}
class NonActiveDot extends StatelessWidget {
  const NonActiveDot ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:4 ,   right: 4),
      child: AnimatedContainer(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          color: Color(0xffE8E8E8) , 
          shape: BoxShape.circle 
        ), duration: Duration(milliseconds: 300),
      
      ),
    );
  }
}