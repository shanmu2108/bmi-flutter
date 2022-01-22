
   


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage()
    ));
}

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int weight=50;
  double _height=155;
  int age =20;
  double bmi=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0D22),
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 30,
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 16,
        
      ),
      body: Column(
        children: [
          
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: Row(
              children: [
                Expanded(

                child :Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'WEIGHT',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                        ),
                      Text('$weight'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        GestureDetector(
                             onTap: (){
                               setState(() {
                                 weight--;
                               });
                             },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF1C1F32),
                                    shape: BoxShape.circle,
                                  ),
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                              ),
                            ),
                          ),
            
                           GestureDetector(
                             onTap: (){
                               setState(() {
                                 weight++;
                               });
                             },
                               child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF1C1F32),
                                    shape: BoxShape.circle,
                                  ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              ),
                            ),
                          ),
                        
                          ],
                        ),
                      
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
                Expanded(

                 child:Container(
                     height: 150,
                     width: 150,
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'AGE',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      Text('$age'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        GestureDetector(
                             onTap: (){
                               setState(() {
                                 age--;
                               });
                             },
                               child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF1C1F32),
                                    shape: BoxShape.circle,
                                  ),
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                              ),
                            ),
                          ),
            
                           GestureDetector(
                             onTap: (){
                               setState(() {
                                 age++;
                               });
                             },
                              child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF1C1F32),
                                    shape: BoxShape.circle,
                                  ),
                            child:const  Icon(
                              Icons.add,
                              color: Colors.white,
                              ),
                            ),
                          ),
                        
                          ],
                          )
                      
                    ],
                  ),
                ),
              ),
            ],
        
            ),
          ),
        ),

          Expanded(
          child:Container(
            
            height: 200,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: [
            
                Text(
                  'HEIGHT',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                Text(
                  _height.toStringAsFixed(4),
                ),




                Slider(
                  inactiveColor: Colors.white,
                  value: _height,
                  onChanged:(val){
                    setState(() {
                      _height=val;
                    });
                  },
                  min: 50,
                  max: 250,
                  activeColor: Colors.amber,
                  thumbColor: Colors.white,
                  
                   ),
                  
                
              ],
              
            ),
          ),
          ),
          Expanded(
            child: Center(
           

            
              child: Text(
                bmi.toStringAsFixed(4),
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            
              
              ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            
            child:ElevatedButton(
            onPressed: (){
              double heightinM=_height/100;
              bmi=weight/(heightinM*heightinM);
              setState(() {
                
              });
            },
             child: const Text(
               'CALCULATE YOUR BMI',
                style: TextStyle(
                 fontSize: 18,
                 letterSpacing: 1.5,
               ),
              ),
            
          ),
          ),
        ],
      ),
    );
  }
}
