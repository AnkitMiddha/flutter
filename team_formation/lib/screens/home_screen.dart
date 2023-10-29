
import 'package:flutter/material.dart';
import 'package:team_formation/data/dummy_data.dart';
import 'package:team_formation/models/employee.dart';
import 'package:team_formation/models/pagination_control.dart';
import 'package:team_formation/screens/employee_details.dart';
// import 'package:team_formation/models/employee.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int  currentPage =1;
  final usersPerPage = 10;
  


   getPaginatedUsers() {
    final startIndex = (currentPage - 1) * usersPerPage;
    final endIndex = startIndex + usersPerPage ;
    return dummyData.sublist(startIndex, endIndex);
  } 

  @override
  Widget build(BuildContext context) {
    final paginatedUsers = getPaginatedUsers();
  return Scaffold(
    appBar: AppBar(
      title: const Text("Team Formation"),
    
    ),
    body:  Column(
      children:[const TextField(decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        fillColor: Colors.white54,
        filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            hintText: 'Search Here',
      ),
      
      ),
      const SizedBox(height: 30,),
      paginatedUsers.isNotEmpty ?
       Expanded(
         child: ListView.builder(itemCount: paginatedUsers.length,itemBuilder: (context,index)  =>  EmployeeDetails (data: 
          Employee (available: paginatedUsers[index]['available'].toString(),
             avatar:  paginatedUsers[index]['avatar'].toString(),
         domain:  paginatedUsers[index]['domain'].toString(),
           firstName: paginatedUsers[index]['first_name'].toString(),
             lastName: paginatedUsers[index]['last_name'].toString(),
             gender: paginatedUsers[index]['gender'].toString(),
             email: paginatedUsers[index]['email'].toString(),
             id: paginatedUsers[index]['id'],
          ),
          ),
         
         ),
       )
       : const Expanded(child: 
       Center(
        child: Text('No user found! Search different'),
       )
       ),
          PaginationControls(
            currentPage: currentPage,
            totalPages: (dummyData.length / usersPerPage).ceil(),
            onPageChanged: (newPage) {
              setState(() {
                currentPage = newPage ;
              
            });}
          )
       

      ],
    
    ),   
  );
  }
}