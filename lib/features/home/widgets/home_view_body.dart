import 'package:flutter/material.dart';
import 'package:trendify/core/utils/app_colors.dart';
import 'package:trendify/features/home/widgets/custom_card.dart';

class HomeViewBody extends StatelessWidget {
   HomeViewBody({super.key});
    var height , width ;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.kPrimaryColor,
          width: width,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(),
                height: height * 0.25,
                width: width,
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Icon(Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          InkWell(
                            child: Icon(Icons.search,
                              color: Colors.white,
                              size: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text('Trendify',style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox(height: 4,),
                    Text('Find Your Style, Tech, and Shine',style: TextStyle(
                      color: AppColors.kLightGreyColor,
                      fontSize: 14,
                    ),),
                  ],
                ),
              ),
               SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                    color:Colors.white,
                     borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(30),
                         topRight: Radius.circular(30),
                     ),
                  ),
                  height: height,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 75,),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        childAspectRatio: 1.5,
                        mainAxisSpacing: 100,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: 10,
                      clipBehavior: Clip.none,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const CustomProductCard();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
