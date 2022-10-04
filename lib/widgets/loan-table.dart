import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helpers_chain/variables/globalVariables.dart';

import 'my-text.dart';

class LoanTable extends StatefulWidget {
  const LoanTable({Key? key}) : super(key: key);

  @override
  State<LoanTable> createState() => _LoanTableState();
}

class _LoanTableState extends State<LoanTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: KWhite,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
      ),
      child: DataTable(
        columnSpacing: 0,
        horizontalMargin: 0,
        columns: [
          DataColumn(
            label: HeadingText(
              text: 'Number',
              size: 13,
            ),
          ),
          DataColumn(label: VerticalDivider(thickness: 1,indent: 17,endIndent: 17,),),
          DataColumn(
            label: HeadingText(
              text: 'Period',
              size: 12,
            ),
          ),
          DataColumn(label: VerticalDivider(thickness: 1,indent: 17,endIndent: 17,),),
          DataColumn(
            label: HeadingText(
              text: 'Amount',
              size: 12,
            ),
          ),
          DataColumn(label: VerticalDivider(thickness: 1,indent: 17,endIndent: 17,),),
          DataColumn(
            label: HeadingText(
              text: 'Interest',
              size: 12,
            ),
          ),
          DataColumn(label: VerticalDivider(thickness: 1,indent: 17,endIndent: 17,),),
          DataColumn(
            label: HeadingText(
              text: 'Date',
              size: 12,
            ),
          ),
          DataColumn(label: VerticalDivider(thickness: 1,indent: 17,endIndent: 17,),),
          DataColumn(
            label: HeadingText(
              text: 'Status',
              size: 12,
            ),
          ),
        ],
        rows: [
          DataRow(
              cells: [
                DataCell(Center(child: Text('1'))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child: HeadingText(text: '3\nmonths',size: 11,))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child:  HeadingText(text: '₦100.000',fontFamily: '',size: 11,))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child: Text('-'))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child:  HeadingText(text: 'DD/MM/YY',size: 7))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child: Icon(Icons.check_rounded,color: KGreen))),
              ]
          ),
          DataRow(
              cells: [
                DataCell(Center(child: Text('2'))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child: HeadingText(text: '3 months',size: 11,))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child:  HeadingText(text: '₦100.000',fontFamily: '',size: 11,))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child: Text('-'))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child:  HeadingText(text: 'DD/MM/YY',size: 7))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child: SvgPicture.asset('assets/cancel.svg',color: KRed,height: 12,))),
              ]
          ),
          DataRow(
              cells: [
                DataCell(Center(child: Text('3'))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child: HeadingText(text: '3 months',size: 11,))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child:  HeadingText(text: '₦100.000',fontFamily: '',size: 11,))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child: Text('-'))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child:  HeadingText(text: 'DD/MM/YY',size: 7))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child: SvgPicture.asset('assets/cancel.svg',color: KRed,height: 12,))),
              ]
          ),
          DataRow(
              cells: [
                DataCell(Center(child: Text('4'))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child: HeadingText(text: '3 months',size: 11,))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child:  HeadingText(text: '₦100.000',fontFamily: '',size: 11,))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child: Text('-'))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child:  HeadingText(text: 'DD/MM/YY',size: 7))),
                DataCell(VerticalDivider(thickness: 1,indent: 17,endIndent: 17,)),
                DataCell(Center(child: SvgPicture.asset('assets/cancel.svg',color: KRed,height: 12,))),
              ]
          ),


        ],
      ),
    );


  }
}
