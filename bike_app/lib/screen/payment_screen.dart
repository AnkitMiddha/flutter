import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Check Out',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: Container(
                  height: 50,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Color(0xfff1f1f1),
                    ),
                child: 
                //  const Padding(padding: EdgeInsets.all(10)),
                const  Row(
                  children:[
                      Column(children: [
                      Text('Start Date' , style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                      Text('9-06-23',style: TextStyle(fontWeight: FontWeight.w500) ,)
                    ]),
                    
                  
                  Icon(Icons.calendar_month)

                ],
              
            ),
              ),
            // const SizedBox(
            //   height: 30,
            // ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Apply Coupon',
                filled: true,
                fillColor: const Color(0xfff1f1f1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Details',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            ),
            

          ],
        ),
      ),
    );
  }
}
