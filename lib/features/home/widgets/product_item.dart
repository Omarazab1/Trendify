import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendify/core/utils/app_colors.dart';
import 'package:trendify/core/utils/app_styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w ,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/bag.jpg',
                  //height: 110,
                  ),
                ),
                Text('Sports Bag',
                style: AppStyles.cardTitle,
                ),
                 SizedBox(height: 2.h ,),
                 Text('Comfortable bag for men',
                style: TextStyle(fontSize: 8.sp,
                color: AppColors.kGreyBlue),),
                SizedBox(height: 4.h,),
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemSize: 15,
                  itemBuilder: (BuildContext context, int index) {
                       return const Icon(
                         Icons.star,
                         color: Colors.yellow,
                       );

                  },
                  onRatingUpdate: (index){
                  },
                ),
                SizedBox(height: 5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text('\$100',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kPrimaryColor,
                    ),),
                    SizedBox(width: 6.w,),
                    const Icon(Icons.favorite,
                    color: Colors.red,),
                  ]
                ),
              ],
            ),
        ),
      ),
    );
  }
}
