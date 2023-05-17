import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nike_store/widgets/BottomCartSheet.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF475269),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.category_outlined,
            color: Colors.white,
            size: 32,
          ),
          InkWell(
            onTap: () {
              showSlidingBottomSheet(context, builder: (context) {
                return SlidingSheetDialog(
                    elevation: 8,
                    cornerRadius: 16,
                    builder: (context, state) {
                      return BottomCartSheet();
                    });
              });
            },
            child: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 32,
            ),
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 32,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 32,
          )
        ],
      ),
    );
  }
}
