import 'package:flutter/material.dart';



class DescriptionText extends StatefulWidget {
  var text, textColor, textWeight, textAlign, textDecoration;
  double? size;

  DescriptionText({
    this.text,
    this.size,
    this.textDecoration,
    this.textColor,
    this.textAlign,
    this.textWeight,
  });
  @override
  State<DescriptionText> createState() => _DescriptionTextState();
}
class _DescriptionTextState extends State<DescriptionText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
    style: TextStyle(
      fontSize: 16,
      color: widget.textColor,
      fontWeight: widget.textWeight,
    ),
    textAlign: widget.textAlign,
    );
  }
}





class HeadingText extends StatefulWidget {
  var text, textColor, textWeight, textAlign, textDecoration, fontFamily;
  double? size;
  HeadingText({
    this.fontFamily,
    this.text,
    this.size,
    this.textDecoration,
    this.textColor,
    this.textAlign,
    this.textWeight,
  });
  @override
  State<HeadingText> createState() => _HeadingTextState();
}

class _HeadingTextState extends State<HeadingText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
      style: TextStyle(
        fontSize: widget.size,
        fontWeight: widget.textWeight,
        color: widget.textColor,
        fontFamily: widget.fontFamily,
        decoration: widget.textDecoration

      ),);
  }
}

