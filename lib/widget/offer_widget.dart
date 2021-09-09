import 'package:flutter/material.dart';
import 'package:grocery_store/util/colors.dart';

class OfferWidget extends StatelessWidget {
  final String pathImage;
  final String title;
  final String description;
  final String price;

  const OfferWidget(
      {Key? key,
      required this.pathImage,
      required this.title,
      required this.description,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      height: 248,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: GroceryColors.grey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 25, bottom: 25, left: 33, right: 33),
            child: Image(width: 100, height: 80, image: AssetImage(this.pathImage)),
          ),

          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: TextStyle(
                      color: GroceryColors.blackThatsNotBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  this.description,
                  style: TextStyle(
                      color: GroceryColors.darkGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  this.price,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: GroceryColors.blackThatsNotBlack),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                            color: GroceryColors.green,
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(GroceryColors.green),
                      fixedSize: MaterialStateProperty.all(Size(45, 45))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
