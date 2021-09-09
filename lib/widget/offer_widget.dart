import 'package:flutter/material.dart';
import 'package:grocery_store/util/colors.dart';

class OfferWidget extends StatelessWidget {
  final String pathImage;

  const OfferWidget({
    Key? key,
    required this.pathImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      height: 248,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: GroceryColors.grey)),
      child: Column(
        children: [
          Expanded(
              child: Image(
                  height: 80,
                  width: 110,
                  image: AssetImage(this.pathImage))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Organics Bananas",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: GroceryColors.blackThatsNotBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "7pcs, Priceg",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: GroceryColors.darkGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$4.99",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: GroceryColors.blackThatsNotBlack
                  ),
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
                    fixedSize: MaterialStateProperty.all(Size(45, 45))
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
