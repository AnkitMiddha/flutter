import 'package:bike_app/screen/home_screen.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(6),
          child: Column(
            children: [
              Container(
                width: 800,
                decoration:  BoxDecoration(
                  color: const Color(0xfff1f1f1),
                       border: Border.all(style: BorderStyle.solid),
                         borderRadius: BorderRadius.circular(8),
                ),
                child:const Row(
           mainAxisAlignment:  MainAxisAlignment.spaceAround,
                      //  Padding(padding: EdgeInsets.all(10));
                          children: [
                            Column(children: [
                              Text(
                                'Start Date',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '9-06-23',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ]),
                            Icon(Icons.calendar_month),
                          ],
                        ),
              ),
              const SizedBox(height: 40,),
                          Container(
                width: 800,
                decoration:  BoxDecoration(
                  color: const Color(0xfff1f1f1),
                    border: Border.all(style: BorderStyle.solid),
                         borderRadius: BorderRadius.circular(8),
                ),
                child:const Row(
 mainAxisAlignment:  MainAxisAlignment.spaceAround,
                      //  Padding(padding: EdgeInsets.all(10));
                          children: [
                            Column(children: [
                              Text(
                                'End Date',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '12-06-23',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ]),
                            Icon(Icons.calendar_month),
                          ],
                        ),
                        
                   
                
              ),
              const SizedBox(
                height: 30,
              ),
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
              SizedBox(
                height: 400,
                child: Column(
                 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Divider(
                      color: Colors.grey,
                    ),
                   const Expanded(
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Days'),
                          SizedBox(width: 28,),
                          Text('5  '),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                   const Expanded(
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      
                          Text('Rent'),
                           SizedBox(width: 1,),
                          Text('₹5996'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                      const Expanded(
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Additional items'),
                          Text('₹6400'),
                        ],
                                         ),
                     ),
                    const SizedBox(
                      height: 8,
                    ),
                  const  Expanded(
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Coupon Discount'),
                          Text('₹ 396'),
                        ],
                                         ),
                     ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('₹12000'),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        padding: const EdgeInsets.only(top: 16.0),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          onPressed: () => _dialogBuilder(context),
                          child: const Text("Pay",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
       bottomNavigationBar: SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon:const  Icon(Icons.home),
          onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => const  HomeScreen()));
          },
          ),
          IconButton(
            icon: const Icon(Icons.map),
            onPressed: () {},
          ),
          IconButton(
            icon: const  Icon(Icons.wallet),
            onPressed: () {},
          ),
          IconButton(
            icon: const  Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
    ),
    );
  }
    Future<void> _dialogBuilder (BuildContext context)
  {
   return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
    return   AlertDialog(
      title: const Text('Payment Done'),
      content: const  Text("You have successfully rented bike"),
      actions: [
          TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const  Text('Ok'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const  HomeScreen()));
              },
            ),
      ],
    );
      },
   );
  }
  }

