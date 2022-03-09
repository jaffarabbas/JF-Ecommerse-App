import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/pages/favourite_screen/widgets/favourite_product_card.dart';

class FavouriteProductList extends StatefulWidget {
  const FavouriteProductList({Key? key}) : super(key: key);

  @override
  State<FavouriteProductList> createState() => _FavouriteProductListState();
}

class _FavouriteProductListState extends State<FavouriteProductList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 10.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 30,
            itemBuilder: (context, index) {
              return const FavouriteProductCard();
            },
          ),
        ),
      ),
    );
  }
}
