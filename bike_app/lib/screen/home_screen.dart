import 'package:bike_app/screen/bike_details.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 100)),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg'),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Ankit Middha',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                ],
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              const Padding(padding: EdgeInsets.all(14)),
              TextField(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(238, 239, 238, 238),
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    const SizedBox(
                      width: 6,
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(),
                      onPressed: () {},
                      child: const Text('Adventure'),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Cruiser',
                          style: TextStyle(color: Colors.white),
                        )),
                    const SizedBox(
                      width: 6,
                    ),
                    OutlinedButton(
                        onPressed: () {}, child: const Text('Sportsbike ')),
                    const SizedBox(
                      width: 6,
                    ),
                    OutlinedButton(
                        onPressed: () {}, child: const Text('Mountainbike')),
                    const SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'Popular ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Items')
                  ])),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        Image.network(
                          'https://www.royalenfield.com/content/dam/royal-enfield/meteor-new/section8/new/MatteBlk/J1D2_MatteBlk_000.jpg',
                          height: 120,
                        ),
                        const Text(
                          'Meterone',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text('Royal Enefeild'),
                        const Text('699/per day')
                      ]),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    InkWell(
                      onTap: () {    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const  BikeDetails()));},
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(children: [
                          Image.network(
                            'https://www.royalenfield.com/content/dam/royal-enfield/meteor-new/section8/new/MatteBlk/J1D2_MatteBlk_000.jpg',
                            height: 120,
                          ),
                          const Text(
                            'Scout Bobber',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Text('Indian'),
                          const Text('1499/per day')
                        ]),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        Image.network(
                          'https://www.royalenfield.com/content/dam/royal-enfield/meteor-new/section8/new/MatteBlk/J1D2_MatteBlk_000.jpg',
                          height: 120,
                        ),
                        const Text(
                          'Classic 350',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text('Royal Enefeild'),
                        const Text('699/per day')
                      ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'Recently ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Viewed')
                  ])),
          
           SizedBox(
            height: 300,
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Expanded(
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      
                      Image.network('https://cdn.suzukimotorcycle.co.in/public-live/uploads/product-gallery-images/original/12/Hayabusa-520x420px-15.jpg',height: 60,width: 80,),
                         const Column(
                            mainAxisSize: MainAxisSize.min,
                           children: [
                                 Text('Hayabusa',style: TextStyle(fontWeight: FontWeight.bold),),
                               Text('2000/per day'),
                           ],
                          ),
              
                      const SizedBox(width: 6,),
                      OutlinedButton(style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),onPressed: () {}, child: const  Text('Available',style: TextStyle(color: Colors.white),))
                    ],
                  ),
                  
                ),
                 Expanded(
                  
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    
                    children: [
                      
                      Image.network('https://cdn.suzukimotorcycle.co.in/public-live/uploads/product-gallery-images/original/12/Hayabusa-520x420px-15.jpg',height: 60,width: 80,),
                          
                          const Column(
                            mainAxisSize: MainAxisSize.min,
                           children: [
                                Text('Classic 350',style: TextStyle(fontWeight: FontWeight.bold),),
                                 Text('1800/per day'),
                           ],
                          ),
                        
                      const SizedBox(width: 6,),
                      OutlinedButton(style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.grey,
                        ),onPressed: () {}, child: const  Text('  Booked ',style: TextStyle(color: Colors.white),))
                    ],
                  ),
                  
                ),
                 Expanded(
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      
                      Image.network('https://cdn.suzukimotorcycle.co.in/public-live/uploads/product-gallery-images/original/12/Hayabusa-520x420px-15.jpg',height: 60,width: 80,),
                         
                      const    Column(
                              mainAxisSize: MainAxisSize.min,
                     
                          children: [
                            
                               Text('Meterone',style: TextStyle(fontWeight: FontWeight.bold),),
                               Text('2000/per day'),
                          ],
                         ),
                       
                      const SizedBox(width: 6,),
                      OutlinedButton(style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),onPressed: () {}, child: const  Text('Available',style: TextStyle(color: Colors.white),))
                    ],
                  ),
                  
                ),
                
              ],
            ),
          
           ),
          
          
            ],
          
        
               
          ),
          
        ),
            bottomNavigationBar: SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon:const  Icon(Icons.home),
            onPressed: () {},
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
}
      
