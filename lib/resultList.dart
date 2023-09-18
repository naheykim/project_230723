import 'package:flutter/material.dart';

class ResultList extends StatefulWidget {

  var inputList = [];

  ResultList({required this.inputList});

  @override
  _ResultListState createState() => _ResultListState();
}

class _ResultListState extends State<ResultList> {
  var inputList = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        // Text('hi'),
        Text('${widget.inputList}'),
    );
  }
}
//
// class SimpleDataTable extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // MaterialApp with debugShowCheckedModeBanner false and home
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light(),
//       home: Scaffold(
//         // Scaffold with appbar ans body.
//         appBar: AppBar(
//           title: Text('Simple Data Table'),
//         ),
//         body:
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: DataTable(
//             // Datatable widget that have the property columns and rows.
//               columns: [
//                 // Set the name of the column
//                 DataColumn(label: Text('ID'),),
//                 DataColumn(label: Text('Name'),),
//                 DataColumn(label: Text('LastName'),),
//                 DataColumn(label: Text('Age'),),
//               ],
//               rows:[
//                 // Set the values to the columns
//                 DataRow(cells: [
//                   DataCell(Text("1")),
//                   DataCell(Text("Alex")),
//                   DataCell(Text("Anderson")),
//                   DataCell(Text("18")),
//                 ]),
//                 DataRow(cells: [
//                   DataCell(Text("2")),
//                   DataCell(Text("John")),
//                   DataCell(Text("Anderson")),
//                   DataCell(Text("24")),
//                 ]),
//               ]
//           ),
//         ),
//       ),
//     );
//   }
// }