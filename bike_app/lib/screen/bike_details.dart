import 'package:flutter/material.dart';

class BikeDetails extends StatelessWidget {
  const BikeDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
           mainAxisAlignment: MainAxisAlignment.center,
           
            children: [  Text(
          
          'Bike Details',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
          
          ),
        ),
      ],),
      ),
       body:  SingleChildScrollView(
         child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(16)),
            Row( mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Indian',style: TextStyle(fontSize: 18),),
                    const Text('Scout Bobber', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                   const SizedBox(height: 50,),
                    Container(
                     padding:const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        
                        border: Border.all(style: BorderStyle.solid),
                         borderRadius: BorderRadius.circular(28),
                         
                      ),
                      child:const Column(
                        children: [
                          Text('Category',style: TextStyle(color: Colors.grey,fontSize: 18),), 
                          Text('Cruiser',style: TextStyle(fontSize: 18)),
                        ],
                      )
                    ),
                    const SizedBox(height: 40,),
                     Container(
                     padding:const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        
                        border: Border.all(style: BorderStyle.solid),
                         borderRadius: BorderRadius.circular(28),
                         
                      ),
                      child:const Column(
                        children: [
                          Text('Displacement',style: TextStyle(color: Colors.grey,fontSize: 18),), 
                          Text('1133 cc',style: TextStyle(fontSize: 18)),
                        ],
                      )
                    ),
                   const SizedBox(height: 40,),
                    Row(
                      children: [
                         Container(
                     padding:const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        
                        border: Border.all(style: BorderStyle.solid),
                         borderRadius: BorderRadius.circular(28),
                         
                      ),
                      child:const Column(
                        children: [
                          Text('Max Speed',style: TextStyle(color: Colors.grey,fontSize: 18),), 
                          Text('124 km/h',style: TextStyle(fontSize: 18)),
                        ],
                      )
                    ),
                       const SizedBox(width: 20,),
                        Container(
                     padding:const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        
                        border: Border.all(style: BorderStyle.solid),
                         borderRadius: BorderRadius.circular(28),
                         
                      ),
                      child:const Column(
                        children: [
                          Text(  'Rent',style: TextStyle(color: Colors.white,fontSize: 18),), 
                          Text('1499/per day',style: TextStyle(fontSize: 18,color: Colors.white)),
                        ],
                      )
                    ),
                      ],
                      
                    ),
                    const SizedBox(height: 20,),
                      RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                      TextSpan(
                          text: 'Add ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'items')
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
                        
                        Image.network('https://cdn.moglix.com/p/ea62JP49eFnx0-xxlarge.jpg',height: 60,width: 80,),
                           const Column(
                              mainAxisSize: MainAxisSize.min,
                             children: [
                                   Text('Riding jacket',style: TextStyle(fontWeight: FontWeight.bold),),
                                 Text('800/per day'),
                             ],
                            ),
                
                        const SizedBox(width: 6,),
                        OutlinedButton(style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),onPressed: () {}, child: const  Text(' 1 ',style: TextStyle(color: Colors.white),))
                      ],
                    ),
                    
                  ),
                   Expanded(
                    
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      
                      children: [
                        
                        Image.network('https://m.media-amazon.com/images/I/61tu2FdKbzL.jpg',height: 60,width: 80,),
                            
                            const Column(
                              mainAxisSize: MainAxisSize.min,
                             children: [
                                  Text('Rideing Gloves',style: TextStyle(fontWeight: FontWeight.bold),),
                                   Text('800/per day'),
                             ],
                            ),
                          
                        const SizedBox(width: 6,),
                        OutlinedButton(style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.grey,
                          ),onPressed: () {}, child: const  Text('Add',style: TextStyle(color: Colors.white),))
                      ],
                    ),
                    
                  ),
                   Expanded(
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        
                        Image.network('https://www.studds.com/Adminpanel/uploads/D9_BLACK_N22.png',height: 60,width: 80,),
                           
                        const    Column(
                                mainAxisSize: MainAxisSize.min,
                       
                            children: [
                              
                                 Text('Helmet',style: TextStyle(fontWeight: FontWeight.bold),),
                                 Text('800/per day'),
                            ],
                           ),
                         
                        const SizedBox(width: 6,),
                        OutlinedButton(style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),onPressed: () {}, child: const  Text(' 1 ',style: TextStyle(color: Colors.white),))
                      ],
                    ),
                    
                  ),
                  
                ],
              ),
            
             ),
            
                  ],
                  
                    )
                  ],
                )
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
