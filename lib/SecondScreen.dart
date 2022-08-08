import 'package:flutter/material.dart';
import 'package:firstapp/form_screen.dart';

class SecondScreen extends StatelessWidget{
  String Name;
  String Fname;
  String Email;
  String Phone;
  String Address;
  String DOB;
  String Gender;
  String Qualify;
  String Desig;
  String Experience;
  String Nationality;
  String LKnown;
  SecondScreen({required this.Name,required this.Fname,required this.Email,required this.Phone,required this.Address,required this.DOB,required this.Gender,required this.Qualify,required this.Desig,required this.Experience,required this.Nationality,required this.LKnown});
  @override
  Widget build(BuildContext context){

    TableRow _tablerow =  TableRow(
      children: [
        Padding(padding: EdgeInsets.all(15),
        child:Text('Bio Data',style: TextStyle(fontSize: 20) ),
    ),
        Padding(padding: EdgeInsets.all(1),
        child: Text(''),)
      ]
    );

    TableRow _tablerow1 =  TableRow(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child:Text('Name',style: TextStyle(fontSize: 14)),
          ),
          Padding(padding: EdgeInsets.all(15),
            child:Text(Name,style: TextStyle(fontSize: 14)),
          )
        ]
    );
    TableRow _tablerow2 =  TableRow(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child:Text('Father Name',style: TextStyle(fontSize: 14)),
          ),
          Padding(padding: EdgeInsets.all(15),
            child:Text(Fname,style: TextStyle(fontSize: 14)),
          )
        ]
    );
    TableRow _tablerow3 = TableRow(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child:Text('Eamil',style: TextStyle(fontSize: 14)),
          ),
          Padding(padding: EdgeInsets.all(15),
            child:Text(Email,style: TextStyle(fontSize: 14)),
          )
        ]
    );
    TableRow _tablerow4 = TableRow(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child:Text('Phone',style: TextStyle(fontSize: 14)),
          ),
          Padding(padding: EdgeInsets.all(15),
            child:Text(Phone,style: TextStyle(fontSize: 14)),
          )
        ]
    );
    TableRow _tablerow5 = TableRow(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child:Text('Address',style: TextStyle(fontSize: 14)),
          ),
          Padding(padding: EdgeInsets.all(15),
            child:Text(Address,style: TextStyle(fontSize: 14)),
          )
        ]
    );
    TableRow _tablerow6 =  TableRow(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child:Text('DOB',style: TextStyle(fontSize: 14)),
          ),
          Padding(padding: EdgeInsets.all(15),
            child:Text(DOB,style: TextStyle(fontSize: 14)),
          )
        ]
    );
    TableRow _tablerow7 = TableRow(
        children: [
          Padding(padding: EdgeInsets.all(14),
            child:Text('Gender',style: TextStyle(fontSize: 14)),
          ),
          Padding(padding: EdgeInsets.all(15),
            child:Text(Gender,style: TextStyle(fontSize: 14)),
          )
        ]
    );
    TableRow _tablerow8 =  TableRow(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child:Text('Qaulification',style: TextStyle(fontSize: 14)),
          ),
          Padding(padding: EdgeInsets.all(15),
            child:Text(Qualify,style: TextStyle(fontSize: 14)),
          )
        ]
    );
    TableRow _tablerow9 =  TableRow(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child:Text('Designation',style: TextStyle(fontSize: 14)),
          ),
          Padding(padding: EdgeInsets.all(15),
            child:Text(Desig,style: TextStyle(fontSize: 14)),
          )
        ]
    );
    TableRow _tablerow10 = TableRow(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child:Text('Experience',style: TextStyle(fontSize: 14)),
          ),
          Padding(padding: EdgeInsets.all(15),
            child:Text(Experience,style: TextStyle(fontSize: 14)),
          )
        ]
    );
    TableRow _tablerow11 = TableRow(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child:Text('Nationality',style: TextStyle(fontSize: 14)),
          ),
          Padding(padding: EdgeInsets.all(15),
            child:Text(Nationality,style: TextStyle(fontSize: 14)),
          )
        ]
    );
    TableRow _tablerow12 = TableRow(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child:Text('Languages',style: TextStyle(fontSize: 14)),
          ),
          Padding(padding: EdgeInsets.all(15),
            child:Text(LKnown,style: TextStyle(fontSize: 14)),
          )
        ]
    );
    return new Scaffold(
      appBar: AppBar(
        title: Text("Response"),
      ),
      body: Center(
        child:SingleChildScrollView(
        child: Table(
          defaultColumnWidth: const FixedColumnWidth(120),
          children: [
            _tablerow,
            _tablerow1,
            _tablerow2,
            _tablerow3,
            _tablerow4,
            _tablerow5,
            _tablerow6,
            _tablerow7,
            _tablerow8,
            _tablerow9,
            _tablerow10,
            _tablerow11,
            _tablerow12
          ],
        ),
      )
      )
    );
  }
  // Widget Labelresponse(){
  //   return Row(
  //     children: [
  //       Container(padding: EdgeInsets.fromLTRB(10, 40, 0, 0),child: Text("Name",style: TextStyle(fontSize: 16)),)
  //     ],
  //   );
  // }
  // Widget UserResponse(){
  //   return TableRow(
  //       children: [
  //         Container(padding: EdgeInsets.fromLTRB(20, 40, 0, 0),child: Text(Name,style: TextStyle(fontSize: 16))),
  //         Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),child: Text(Fname,style: TextStyle(fontSize: 16))),
  //         Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),child: Text(Email,style: TextStyle(fontSize: 16))),
  //         Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),child: Text(Phone,style: TextStyle(fontSize: 16))),
  //         Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),child: Text(Address,style: TextStyle(fontSize: 16))),
  //         Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),child: Text(DOB,style: TextStyle(fontSize: 16))),
  //         Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),child: Text(Gender,style: TextStyle(fontSize: 16))),
  //         Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),child: Text(Qualify,style: TextStyle(fontSize: 16))),
  //         Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),child: Text(Desig,style: TextStyle(fontSize: 16))),
  //         Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),child: Text(Experience,style: TextStyle(fontSize: 16))),
  //         Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),child: Text(Nationality,style: TextStyle(fontSize: 16))),
  //         Container(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),child: Text(LKnown,style: TextStyle(fontSize: 16)))
  //       ],
  //   );
  // }
}