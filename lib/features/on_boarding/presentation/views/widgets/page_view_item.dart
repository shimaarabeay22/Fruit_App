import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.image, required this.backgroundImage, required this.title, required this.subTitle, required this.isVisible});

   final String image ;
   final String backgroundImage;
   final Widget title;
   final String subTitle;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          width: double.infinity,
          height:MediaQuery.of(context).size.height*0.5 ,
          child: Stack(
           alignment: AlignmentDirectional.topStart ,
            children: [
              Positioned.fill(child: SvgPicture.asset(backgroundImage,fit: BoxFit.fill,)),
              Positioned(
                left: 0,
                  right: 0,
                  bottom: 0,
                  child: SvgPicture.asset(image,)),
              Visibility(

                visible:isVisible ,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('تخط',style: TextStyles.bold16,),
                ),
              )
            ]
          ),
        ),
         SizedBox(height: 45),
         title,
        SizedBox(height: 20,),
        Text(subTitle,style: TextStyle(fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)
      ],
    );
  }
}
