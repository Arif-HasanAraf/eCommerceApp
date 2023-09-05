import 'package:ecommerceapp/Widget/DimonsionSize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String FristHalf;
  late String SecoundHalf;

  bool hiddentext = true;

  double TextHeight = Dimonsion.screenHeight/5.65;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.text.length>TextHeight){
      FristHalf = widget.text.substring(0, TextHeight.toInt());
      SecoundHalf = widget.text.substring(TextHeight.toInt()+1, widget.text.length);
    } else{
      FristHalf = widget.text;
      SecoundHalf ="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SecoundHalf.isEmpty?Text(FristHalf, style: TextStyle(fontSize: 15),):Column(
        children: [
          Text(hiddentext?(FristHalf+"..."):(FristHalf+SecoundHalf),style: TextStyle(fontSize: 15),),
          InkWell(
            onTap: (){
              setState(() {
                hiddentext=! hiddentext;
              });

            },
            child: Row(
              children: [
                Text(hiddentext?"Show More": "Show less"),
                Icon(hiddentext?Icons.arrow_drop_down_outlined: Icons.arrow_drop_up_outlined)
              ],
            ),
          )
        ],

      ),

    );
  }
}
