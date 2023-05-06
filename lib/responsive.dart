
import 'package:flutter/material.dart';

 class ResposiveWidget extends StatelessWidget {
   final Widget largeScreen;
   final Widget? mediumScreen;
   final Widget? smallScreen;

   static bool isSmallScreen(BuildContext context){
     return MediaQuery.of(context).size.width<700;
   }
   static bool isLargeScreen(BuildContext context){
     return MediaQuery.of(context).size.width>800;
   }
   static bool isMediumScreen(BuildContext context){
     return MediaQuery.of(context).size.width>=700 && MediaQuery.of(context).size.width<=800 ;
   }

   const ResposiveWidget({Key? key, required this.largeScreen,this.mediumScreen,this.smallScreen}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return LayoutBuilder(builder: (context,constraints){
       if(constraints.maxWidth>800){
         return largeScreen;
   }
       else if(constraints.maxWidth<=800&& constraints.maxWidth>=700){
         return mediumScreen??largeScreen;
       }
       else{
         return smallScreen??largeScreen;
       }



 }
     );
   }
}
