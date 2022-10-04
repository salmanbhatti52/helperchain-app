import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';

class DrawerItems extends StatefulWidget {
  final text;
  final image;
  double? iconPadding;
  double? textPadding;
  final VoidCallback? onTap;
  final color;
  DrawerItems({Key? key,
    this.text,
    this.image,
     this.iconPadding,
     this.textPadding,
    this.onTap,
    this.color,
  });

  @override
  State<DrawerItems> createState() => _DrawerItemsState();
}



class _DrawerItemsState extends State<DrawerItems> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Column(
      children: [

        GestureDetector(
         onTap: widget.onTap,
          child: Container(
            height: h * 0.055,
            width: w * 0.46,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: widget.iconPadding),
                SvgPicture.asset(widget.image,height: 21),
                SizedBox(width: widget.textPadding),
                HeadingText(
                  text: widget.text,
                  size: 17,
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 6),


      ],
    );
  }
}
