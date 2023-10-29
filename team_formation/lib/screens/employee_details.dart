
import 'package:flutter/material.dart';
import 'package:team_formation/models/employee.dart';

class EmployeeDetails extends StatefulWidget
{
  const EmployeeDetails({super.key, required this.data
  });
  final Employee data;
  @override
  State<EmployeeDetails> createState() {
 return _EmployeeDetails();
  }
}

class _EmployeeDetails extends State<EmployeeDetails> {
  @override
  Widget build(BuildContext context) {
//  Dialog leadDialog =
//  Dialog(
//    child: Container(
//     height: 200,
//     width: 400,
//     color: Colors.white,

//    ),
//  );
 return Card(
  elevation: 2,
  child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      CircleAvatar(
        radius: 35,
        backgroundImage: NetworkImage(widget.data.avatar),
      ),
      const SizedBox(width: 20,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text( '${widget.data.firstName}' ' ' '${widget.data.lastName}',style: const TextStyle(
            fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 20
          ),),

          Text(widget.data.domain,style: const TextStyle(
            fontWeight: FontWeight.w500,color: Color.fromARGB(255, 61, 168, 255),fontSize: 16
          ),),
          SizedBox(
            width: 274,
            child: Text(widget.data.email,style: const TextStyle(
            fontWeight: FontWeight.w500,color: Colors.green,fontSize: 16
          ) ),
          ),
          Text(widget.data.gender,style: const TextStyle(
            fontWeight: FontWeight.w500,color: Colors.blue,fontSize: 16
          ),
          ),
        ],

      )

    ],
  ),
  ),

  );
}
}