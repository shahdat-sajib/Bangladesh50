
import 'package:flutter/material.dart';
import 'package:mujib_app/reward.dart';
import 'package:mujib_app/youtube_player_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Galada",
        
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: LoginPage(),
        ),

      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

int _pageState = 0;
var _backgroundColor = Colors.white;

double _loginYOffset = 0.0;

double windowWidth = 0.0;
double windowHeight = 0.0;


class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {

    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;

    switch(_pageState){
      case 0:
        _backgroundColor = Colors.white;

        _loginYOffset = windowHeight;
        break;
      case 1:
        _backgroundColor = Colors.teal.shade800;

        _loginYOffset = 0;
        break;
      case 2:
        _backgroundColor = Colors.teal.shade800;

        _loginYOffset = 0;
        break;
    }

    return Stack(
      children: [
        AnimatedContainer(
          duration: Duration(
            milliseconds: 1000,
          ),
          color: _backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 170.00,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 40.00),
                  child: Center(
                    child: Image.asset("assets/images/50bd.png"),
                  ),
                ),
              ),
        
        
              Container(
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        if (_pageState != 0) {
                          _pageState = 0;
                        } else {
                          _pageState = 1;
                        }
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 150.00),
                      padding: EdgeInsets.all(15.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal.shade600,
                        borderRadius: BorderRadius.circular(50),
        
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(0, 5), // Shadow position
                          ),
        ],
                      ),
        
                      
                      child: Center(
                        child: Text(
                          "শুরু করুন",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.00,
                            
                          ),
                        ),
                      ),
                    ),
                  ),
              ),
              ),
        
              const Divider(
                //height: 20,
                thickness: 2,
                indent: 150.00,
                endIndent: 150.00,
              ),
        
              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 32.00),
                  margin: EdgeInsets.only(
                    top: 1.00,
                    left: 55.00,
                    right: 55.00,
                  ),
                  child: Text("The father of the Nation Bangabandhu Sheikh Mujibur Rahman had a vision of Shonar Bangla where the people of his country will live without despair" ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 15.00,
                  ),
                  ),
                  ),
                
              ),
        
                Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 150.00,
                ),
                child: Container(
                  margin: EdgeInsets.only(bottom: 40.00),
                  child: Center(
                    child: Image.asset("assets/images/trophy.png"),
                  ),
                ),
              ),
            ],
          ),
          
        ),


          GestureDetector(
            onTap: () {
              setState(() {
                _pageState = 1;
              });
            },
            child: AnimatedContainer(
              curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
              milliseconds: 1500,
            ), 
            transform: Matrix4.translationValues(0, _loginYOffset, 0),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(children: [
              PrimaryButton(),
            ],),
                  ),
            
          ),
      ],
    );
  }
}


class PrimaryButton extends StatelessWidget {


  const PrimaryButton({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
     child: Center(
       child: Column(
         children: [
           Container(
             color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
           ),

           Container(
             padding: EdgeInsets.only(
               top: 10.00,
             ),
              child: Column(
                children: [
                 Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 25.00,
                      left: 25.00,
                    ),
                    
                    child: CustomPlayer("https://www.youtube.com/watch?v=uHgOpLxIqvY"),
                    
                  ),


                  //  child: ElevatedButton(
                  //    onPressed: (){
                  //      Navigator.push(
                  //        context, 
                  //       MaterialPageRoute(builder: (context) => 
                  //          CustomPlayer("https://www.youtube.com/watch?v=zcr05dYel0Q")));
                  //    },
                  //    child: Text("player"),
                  //    ),
                 )
                ],
              )
              
              
           ),


          Padding(
            padding: const EdgeInsets.only(
              left: 35.0,
              right: 35.0,
              top: 35.0,
            ),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const HistoryPage()),
                );
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12.00,
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/history.jpeg', height: 70.0, width: 80.0,),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.00,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("বাংলাদেশের ইতিহাস জানুন",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.00,
                            ),),
                            Text("ইতিহাস | তাৎপর্য | স্বাধীনতা | সংস্কৃতি",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.00,
                              
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
            
                height: 75.00,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.00),
                  gradient: LinearGradient(
                    colors:[Colors.teal.shade500, Colors.cyan.shade600],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
            
                  boxShadow: [
                    BoxShadow(
                      color: Colors.tealAccent.shade700,
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  
                  ],
                  
                ),
                
              ),
            ),
            
          ),
         

         Padding(
            padding: const EdgeInsets.only(
              left: 35.0,
              right: 35.0,
              top: 35.0,
            ),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const BongoPage()),
                );
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12.00,
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/mujib.jpg', height: 70.0, width: 80.0),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.00,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("বঙ্গবন্ধুর স্বপ্ন জানুন",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.00,
                            ),),
                            Text("সোনার বাংলা | অসাম্প্রদায়িকতা | সমঅধিকার | সমৃদ্ধি",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.00,
                              
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
            
                height: 75.00,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.00),
                  gradient: LinearGradient(
                    colors:[Colors.teal.shade500, Colors.cyan.shade600],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
            
                  boxShadow: [
                    BoxShadow(
                      color: Colors.tealAccent.shade700,
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  
                  ],
                  
                ),
                
              ),
            ),
            
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 35.0,
              right: 35.0,
              top: 35.0,
            ),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const Orjon()),
                );
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12.00,
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/acheivement.png', height: 70.0, width: 80.0,),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.00,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("বাংলাদেশের অর্জন জানুন",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.00,
                            ),),
                            Text("শিল্প | অবকাঠামো | উন্নয়ন | সম্ভাবনা",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.00,
                              
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
            
                height: 75.00,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.00),
                  gradient: LinearGradient(
                    colors:[Colors.teal.shade500, Colors.cyan.shade600],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
            
                  boxShadow: [
                    BoxShadow(
                      color: Colors.tealAccent.shade700,
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
              ),
            ),
          ),
         
         Container(
          //child: CustomNavigation(),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 45.00,

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width/3,
                  color: Colors.green,
                  child: ElevatedButton(
                    onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const ProfilePageTwo()),
                );
              },
                    child: new Image.asset('assets/images/profile.png',
                    height: 30.0,
                    width: 30.0,
                    ),
                  ),
                ),

                Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width/3,
                  color: Colors.red.shade500,
                  child: ElevatedButton(
                    onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const LeaderPage()),
                );
              },
                    child: new Image.asset('assets/images/leaderboard.png',
                    height: 30.0,
                    width: 30.0,
                    ),
                  ),
                ),

                Container(
                  child: GestureDetector(
                    child: ElevatedButton(
                      onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const RewardPage()),
                );
              },
                      child: new Image.asset('assets/images/acheivement2.png',
                          height: 30.0,
                          width: 30.0,
                          ),
                    ),
                    onTap: () {
                      customreward();
                    },
                  ),
                height: 40.0,
                width: MediaQuery.of(context).size.width/3,
                color: Colors.green,
                // child: new Image.asset('assets/images/acheivement2.png',
                // height: 3.0,
                // width: 3.0,
                // ),
                
                  ),
                
              ],
            ),
          ),
         ),
         
         ],
       ),
       
     ),
    );
    
  }
}




class HistoryPage extends StatelessWidget {
  const HistoryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
             color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
           ),

           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: Container(
                 child: Center(
                   child: Text("বাংলাদেশের ইতিহাস",
                   style: TextStyle(
                     fontSize: 18.0,
                     color: Colors.white,
                   ),),
                 ),
                 height: 45.0,
                 width: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(
                    colors:[Colors.teal.shade500, Colors.cyan.shade600],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
              ),
               ),
             ),
           ),


           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
                 left: 75.0,
                 right: 75.0,
               ),
               child: Text("বাংলাদেশ দক্ষিণ এশিয়ার একটি জনবহুল রাষ্ট্র। ১৯৭১ সালের স্বাধীনতা যুদ্ধে পাকিস্তান থেকে স্বাধীনতা অর্জনের পর দেশটি বিশ্ব মানচিত্রে একটি স্বাধীন রাষ্ট্র হিসাবে আবির্ভূত হয়।",
               textAlign: TextAlign.center,),
             ),
           ),
           
            Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const HistoryOne()),
                );
              },

                 child: Container(
                   child: Center(
                     child: Text("ঔপনিবেশিক শাসন",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),

           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                 onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const LanguagePage()),
                  );
                  },
                 child: Container(
                   child: Center(
                     child: Text("ভাষা আন্দোলন",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),

           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                 onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const SixPage()),
                  );
                  },
                 child: Container(
                   child: Center(
                     child: Text("৬ দফা দাবি",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),


           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: Container(
                 child: Center(
                   child: Text("মুজিব নগর সরকার",
                   style: TextStyle(
                     fontSize: 18.0,
                     color: Colors.white,
                   ),),
                 ),
                 height: 45.0,
                 width: 420.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(
                    colors:[Colors.teal.shade500, Colors.cyan.shade600],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
              ),
               ),
             ),
           ),


           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: Container(
                 child: Center(
                   child: Text("স্বাধীনতার ঘোষক",
                   style: TextStyle(
                     fontSize: 18.0,
                     color: Colors.white,
                   ),),
                 ),
                 height: 45.0,
                 width: 420.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(
                    colors:[Colors.teal.shade500, Colors.cyan.shade600],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
              ),
               ),
             ),
           ),


           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: Container(
                 child: Center(
                   child: Text("বুদ্ধিজীবী হত্যা",
                   style: TextStyle(
                     fontSize: 18.0,
                     color: Colors.white,
                   ),),
                 ),
                 height: 45.0,
                 width: 420.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(
                    colors:[Colors.teal.shade500, Colors.cyan.shade600],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
              ),
               ),
             ),
           ),

          ],),
      ),
    );
  }
}


class HistoryOne extends StatelessWidget {
  const HistoryOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
            
                  ),
                  Timer(),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                        
                    child: Container(
                      child: Center(
                     child: Text("ঔপনিবেশিক শাসন",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 220.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/history2.jpg",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                      right: 25.00,
                      left: 25.00,
                    ),
                    child: Container(
                      child: Text("ঔপনিবেশিক যুগ (১৭৫৭-১৯৪৭)  বাণিজ্যের মাধ্যমে সম্পদ আহরণের উদ্দেশ্যে ইস্ট ইন্ডিয়া কোম্পানি সতেরো শতকের মাঝামাঝি সময়ে এদেশে এসে বাণিজ্য বসতি স্থাপন করে। আঠারো শতকের মাঝামাঝিতে কোম্পানি বঙ্গের সর্বময় কর্তায় পরিণত হয়। বাণিজ্যের পাশাপাশি রাজ্য স্থাপন ছিল সমকালীন ইউরোপীয় বেনেবাদ নীতির পরিপন্থি। উল্লেখ্য যে, সমকালীন ইউরোপীয়রা সাগরের ওপাড়ে গিয়ে জনমানবশূন্য বা আদিবাসী অধ্যূষিত এলাকা দখল করে স্ব স্ব জাতির পক্ষে উপনিবেশ স্থাপন করলেও বঙ্গদেশই প্রথম সভ্য দেশ যেখানে একটি ঔপনিবেশিক রাষ্ট্র প্রতিষ্ঠিত হলো।ইউরোপীয় ঐতিহাসিকদের মতে, এ অভূতপূর্ব ঘটনা কোনো সচেতন পরিকল্পনার ফসল নয়। তাঁরা মনে করেন যে, বঙ্গদেশে ব্রিটিশ ঔপনিবেশিক রাষ্ট্র প্রতিষ্ঠা ঘটেছে পর্যায়ক্রমে এবং নানা অনভিপ্রেত ঘটনা প্রবাহের ফলে। ইস্ট ইন্ডিয়া কোম্পানির দলিলে দেখা যায় যে, কোর্ট অব ডাইরেক্টর্স কোম্পানির বেঙ্গল কাউন্সিলকে সব সময়ই এখানে রাজ্য স্থাপণের ব্যাপারে নিরোৎসাহিত করেছে, কিন্তু তবুও কালে কোম্পানির বঙ্গরাজ্য প্রতিষ্টিত হলো। দেখা যায় যে, কর্তৃপক্ষের মতামতকে উপেক্ষা করে যখন কোম্পানির স্থানীয় কর্তৃপক্ষ যুদ্ধ বা জোরজবরদস্তির মাধ্যমে কোনো সুবিধা আদায় করতে পেরেছে, কোর্ট তা সবসময়ই অবলীলাক্রমে গ্রহণ করেছে। অর্থাৎ কোর্ট কখনও ঝুঁকি নিতে চায় নি। তবে ফোর্ট উইলিয়ম কাউন্সিল ঝুঁকি নিয়ে সুবিধাজনক সাফল্য দেখাতে পারলে কোট অব ডাইরেক্টর্স তা সব সময়ই মেনে নিয়েছে। বাণিজ্যের সুবিধার্থে কোম্পানির স্থানীয় কর্মকর্তাদের মধ্যে রাজ্য স্থাপনের অভিলাষ ক্রমশই দাঁনা বেধে উঠেছিল আঠারো শতকের প্রথম দশক থেকেই।১৬৫১ সালে সুবাহ বাঙ্গালার সুবাহদার শাহ সুজার নিকট থেকে একটি নিশানের ওপর ভিত্তি করে ইস্ট ইন্ডিয়া কোম্পানি বার্ষিক নির্দিষ্ট তিন হাজার টাকা পরিশোধের শর্তে এ দেশে বিনা শুল্কে বাণিজ্য শুরু করে। বিনা শুল্কে বাণিজ্য করার এ ব্যবস্থা শুধু কোম্পানির জন্য সীমাবদ্ধ থাকা সত্ত্বেও পরবর্তীসময়ে কোম্পানির কর্মকর্তারা তাদের ব্যক্তিগত ব্যবসার জন্যও এ সুবিধা বেআইনীভাবে ব্যবহার করার প্রয়াস পায়। এর ফলে সরকারের সঙ্গে কোম্পানির সম্পর্কে ক্রমশই অবনতি ঘটতে থাকে। এর এক পর্যায়ে নওয়াব সিরাজউদ্দৌলা ইংরেজদের এদেশ থেকে উচ্ছেদ করার জন্য কলকাতা আক্রমণ করেন। এ ঘটনা জন্ম দেয় ষড়যন্ত্রের রাজনীতি যার শেষ ফল পলাশীর যুদ্ধ, বক্সারের যুদ্ধ এবং পরিশেষে ১৭৬৫ সালে দীউয়ানি লাভের মাধ্যমে সুবাহ বাংলায় কোম্পানির আধিপত্য স্থাপন।ঔপনিবেশিক সার্বভৌমত্ব প্রতিষ্ঠা  বক্সারের যুদ্ধে মীর কাসিমের চূড়ান্ত পরাজয় কোম্পানির আধিপত্য প্রতিষ্ঠার পথ সুগম করল। কোম্পানি নীতি গ্রহণ করল সরাসরি ক্ষমতা দখল না করে একজন নামেমাত্র নওয়াব গদিসীন রেখে প্রকৃত ক্ষমতা কোম্পানির হাতে তুলে নিয়ে দেশের রাজস্বের ওপর হিস্যা বসানো। এ নীতির অংশ হিসেবেই ফোর্ট উইলিয়মের গভর্নর রবার্ট ক্লাইভ সম্রাটের নিকট থেকে বাংলা, বিহার ও উরিষ্যার দীউয়ানি লাভ করেন (১৭৬৫)। সম্রাট ও নওয়াবের সঙ্গে চুক্তি হয় যে, দীউয়ান হিসেবে কোম্পানি সুবা বাংলার রাজস্ব সংগ্রহ করবে। চুক্তির শর্তানুসারে কোম্পানি সুবার রাজস্ব থেকে বার্ষিক থোক ছাবিবশ লক্ষ টাকা বাদশাহকে এবং তিপ্পান্ন লক্ষ টাকা নওয়াবকে প্রদান করবে এবং বাকি রাজস্ব কোম্পানি নিজে ভোগ করবে।দীউয়ানি লাভ করে ইস্ট ইন্ডিয়া কোম্পানি নিজে এর ব্যবস্থাপনার দায়িত্ব গ্রহণ না করে এ দায়িত্ব অর্পণ করল একজন নায়েব দীউয়ানের ওপর। নায়েব দীউয়ান হিসেবে নিযুক্ত হলেন চট্রগ্রামের প্রাক্তন ফৌজদার সৈয়দ মুহম্মদ  রেজা খান। নাবালক নওয়াব নজমুদ্দৌলার পক্ষে নিজামত প্রশাসন পরিচালনার দায়িত্বও প্রদান করা হয় রেজা খানকে।  অর্থাৎ ১৭৬৫ সালের ব্যবস্থায় দৃশ্যত রেজা খানই হলেন প্রশাসনের প্রথম ব্যক্তি। কিন্তু প্রকৃত ক্ষমতা ন্যস্ত থাকে অলিখিতভাবে কোম্পানিরই অদৃশ্য হাতে।  দ্বৈত শাসন নামে এ ব্যবস্থায়  নায়েব নাজিমের ওপর সকল দায়িত্ব অর্পিত। কিন্তু প্রকৃতপক্ষে তাঁর কোনো ক্ষমতা নেই, আর কোম্পানির কাছে সকল ক্ষমতা ন্যস্ত, কিন্তু কোনো দায়িত্ব নেই। কোম্পানি সরাসরি ক্ষমতা প্রয়োগ করলে অন্যান্য ইউরোপীয় বণিক ও ভারতীয় রাজন্যগোষ্ঠী তা মেনে নেবে না এ আশংকাবশতই ক্লাইভ কূটনৈতিক চাল দিয়ে দ্বৈত শাসনের ব্যবস্থা করেন। তাছাড়া, দেশ শাসনের জন্য তখন কোম্পানির না ছিল প্রয়োজনীয় লোকবল, না ছিল কোনো অভিজ্ঞতা। তবুও ক্লাইভ দীউয়ানি চুক্তি করেন দুটি প্রধান কারণে। একটি রাজনৈতিক। সিরাজউদ্দৌলা বা মীর কাসিমের মতো নওয়াবের যেন আর আবির্ভাব না হতে পারে তার ব্যবস্থা করা। অপর উদ্দেশ্য অর্থনৈতিক। কোম্পানির প্রাচ্য বাণিজ্যের পুঁজি স্বদেশ থেকে না এনে প্রাচ্য থেকেই সংগ্রহ করা। ইতঃপূর্বে কোম্পানি এদেশে স্বর্ণরৌপ্য নিয়ে আসত পণ্য কেনার জন্য। কিন্তু আঠারো শতকের মাঝামাঝি থেকে ব্রিটিশ সরকার বিদেশে ধাতব রপ্তানির ওপর কড়াকড়ি আরোপ করতে থাকে। উদ্ভূত পরিস্থিতিতে কোম্পানি চেষ্টা চালায় প্রাচ্য বাণিজ্যের জন্য প্রাচ্যদেশ থেকেই পুঁজি সংগ্রহ করার। সুবাহ বাংলার দীউয়ানি লাভ ছিল এ নীতিরই একটি অংশ।দীউয়ানির নামে বাংলায় কোম্পানি যে শোষণ ও উৎপীড়নের রাজ্য কায়েম করল তাতে ব্রিটিশ সরকার এতদিন কোনো ভ্রুক্ষেপ করে নি। ১৭৬৯/৭০ সালের মহাদুর্ভিক্ষ ব্রিটিশ সরকারকে বাধ্য করল কোম্পানির বিষয়াদিতে হস্থক্ষেপ করার জন্য। ১৭৭২ সালের রেগুলেটিং অ্যাক্ট-এর মাধ্যমে পার্লামেন্ট কোম্পানির বঙ্গরাজ্য বিষয়ে প্রথম হস্তক্ষেপ করে। মার্কিন বিপ্লবের পর আমেরিকা থেকে বিতাড়িত হয়ে ব্রিটিশ সরকার বিকল্প কলোনি হিসেবে দৃষ্টিপাত করল ভারতের ওপর। পাস করল পিট-এর ভারত আইন (১৭৮৪) যার মাধ্যমে কোম্পানির বঙ্গ রাজ্যের ওপর ব্রিটিশ সরকারের কর্তৃত্ব আরও সুদৃঢ় করা হলো। লর্ড  কর্নওয়ালিসকে পার্লামেন্ট গভর্নর জেনারেল নিযুক্ত করে এ নির্দেশ দিয়ে যে, তিনি একটি স্থায়ী ভূমি ব্যবস্থা ও দক্ষ প্রশাসন প্রতিষ্ঠার মাধ্যমে বঙ্গরাজ্যকে একটি শক্তিশালী ঔপনিবেশিক রাষ্ট্রে পরিণত করবেন।নির্দেশানুসারে কর্নওয়ালিস ত্বরিৎ গতিতে ভূমি ব্যবস্থা ও প্রশাসনে অনেক সংস্কার আনয়ন করেন।  চিরস্থায়ী বন্দোবস্ত এর মাধ্যমে তিনি একটি জমিদার শ্রেণি সৃষ্টি করেন। ভূমির একচ্ছত্র মালিক করা হয় জমিদারকে। জমিদারের ওপর সরকারের রাজস্ব দাবি চিরকালের জন্য স্থির করে দেওয়া হয়। এ ব্যবস্থার রাজনৈতিক উদ্দেশ্য ছিল ঔপনিবেশিক রাষ্ট্রকে সমর্থন করে এমন একটি প্রভাবশালী অনুগত শ্রেণি সৃষ্টি করা। এর অর্থনৈতিক উদ্দেশ্য ছিল ভূমি নিয়ন্ত্রণে স্থিতিশিলতা সৃষ্টির মাধ্যমে জমিদার শ্রেণির উদ্যোগে দেশের কৃষি অর্থনীতিকে গতিশীল করে তোলা। প্রশাসন, বিচার ও পুলিশ বিভাগকে ঢেলে সাজিয়ে কর্নওয়ালিস ঔপনিবেশিক রাষ্ট্রের ভিত মজবুত করে স্থাপন করেন। একটি উচ্চ বেতনভোগী পেশাগত আমলাতন্ত্র স্থাপন করে কর্নওয়ালিস ঔপনিবেশিক রাষ্ট্রের আমলাতান্ত্রিক শাসন ব্যবস্থার ভিত্তি স্থাপন করেন। যথার্থই বলা হয় যে, কোম্পানির বঙ্গরাজ্যের প্রতিষ্ঠাতা হলেন ক্লাইভ ও হেস্টিংস এবং এর প্রশাসনিক প্রতিষ্ঠাতা কর্নওয়ালিস।তবে বঙ্গরাজ্য সম্পূর্ণভাবে কোম্পানি নিয়ন্ত্রিত হলেও ব্রিটিশ সরকার প্রথম পূর্ণ সার্বভৌমত্ব ঘোষণা করে ১৮১৩ সালে যখন পার্লামেন্ট একটি চার্টার অ্যাক্ট বলে কোম্পানির একচেটিয়া বাণিজ্যাধিকার বিলুপ্ত করে এবং দেশের শাসনভার আনুষ্ঠানিকভাবে কোম্পানির ওপর ন্যস্ত করে। উক্ত আইনে কোম্পানির দূরপ্রাচ্য বাণিজ্য বজায় রাখে। ১৮৩৩ সালের চার্টার আইনে তাও বিলুপ্ত করা হয়। এরপর থেকে কোম্পানির অধিকার থাকে পার্লামেন্টের পক্ষে শুধু ব্রিটিশ ভারত শাসন করার ক্ষেত্রে। ১৮৫৮ সালে কোম্পানি বিলুপ্ত ঘোষণা করে ব্রিটিশ ভারত শাসনের দায়িত্ব সরাসরি ব্রিটিশ সরকার গ্রহণ করে।এমনিভাবে কোম্পানির বঙ্গ রাজ্য ব্রিটিশ ভারতের একটি প্রদেশে পরিণত হয়। এমনকি প্রদেশরূপেও বেঙ্গল প্রেসিডেন্সি ছিল বোম্বে ও মাদ্রাজ প্রেসিডেন্সির চেয়ে অনেক কম সুবিধাপ্রাপ্ত। উক্ত দুটি প্রদেশের জন্য পূর্ণ ক্ষমতা সম্পন্ন গভর্নর ও গভর্নর-এর কাউন্সিল ছিল। কিন্তু বেঙ্গল প্রেসিডেন্সির জন্য না ছিল স্বতন্ত্র গভর্নর, না ছিল কোনো কাউন্সিল। বেঙ্গল প্রেসিডেন্সি শাসিত হতো পরোক্ষভাবে গভর্নর জেনারেল কর্তৃক। গভর্নর জেনারেলের পক্ষে একজন কাউন্সিলর ডেপুটি গভর্নর উপাধি ধারণ করে নামে মাত্র বঙ্গীয় প্রশাসন পরিচালনা করতেন। ফলে ব্রিটিশ সাম্রাজ্য ভারতব্যাপী বিস্তারের ফলে প্রশাসন ও অর্থনীতির দিক থেকে বাংলা প্রদেশ সবচেয়ে অবহেলিত ও পশ্চাদপদ হয়ে পড়ল। ১৮৫৪ সাল থেকে বাংলার জন্য একজন লেফটেন্যান্ট গভর্নর নিযুক্ত করা হলো, কিন্তু কোনো কাউন্সিল ছাড়া। সার্বিক অবস্থা আগের মতই করুণ থাকায় প্রশাসনিক দক্ষতা বৃদ্ধির নামে ১৯০৫ সালে বাংলা ভাগ করা হয়। কিন্তু এর বিপক্ষে রাজনৈতিক চাপের মুখে ১৯১২ সালে বঙ্গ বিভাগ রদ করা হয়।কিন্তু যুক্ত বাংলা প্রশাসনিক দিক থেকে আগের পর্বে ফিরে যায় নি। বাংলাকে বোম্বে ও মাদ্রাজের মতো একটি গভর্নর শাসিত প্রদেশে পরিণত করা হয়। গভর্নরকে সাহায্য করার জন্য স্থাপিত হয় একটি এক্সিকিউটিভ কাউন্সিল। বাংলা প্রদেশের রাজধানী করা হয় কলকাতা এবং কলকাতা থেকে ভারতের রাজধানী স্থানান্তরিত হয় দিল্লিতে।",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    bottom: 40.0,
                  ),
                  child: Container(
                    child: Text("**রিওয়ার্ড পেতে ২ মিনিট অবস্থান করুন ",
                    style: TextStyle(
                      color: Colors.red,
                    ),),
                  ),
                ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}


class LanguagePage extends StatelessWidget {
  const LanguagePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
            children: [
              Container(
               color: Colors.teal.shade200,
               padding: EdgeInsets.only(
                 left: 30.00,
                 right: 30.00,
               ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("জয় বাংলা",
                  style: TextStyle(
                    fontSize: 20.00,
                    color: Colors.red,
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 30.00,
                      right: 30.00,
                    ),
                    child: Image.asset("assets/images/50logo2.png",
                    height: 60.00,
                    width: 100.00,
                    )),
                  Text("জয় বঙ্গবন্ধু",
                  style: TextStyle(
                    fontSize: 20.00,
                    color: Colors.green,
                  ),
                  ),
                ],
              ),
             ),
        
             Container(
               child: Padding(
                 padding: const EdgeInsets.only(
                   top: 20.0,
                 ),
                 child: Container(
                   child: Center(
                     child: Text("বাংলাদেশের ইতিহাস",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 180.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
             ),
        
        
             Padding(
                      padding: const EdgeInsets.only(
                        top: 15.00,
                      ),
                      child: Container(
                        child: Image.asset("assets/images/vasa1.jpg",
                         //height: 50.0,
                         width: 450.0,
                        ),
                      ),
                    ),
        
             
             
              Container(
               child: Padding(
                 padding: const EdgeInsets.only(
                   top: 20.0,
                 ),
                 child: ElevatedButton(
                   onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const DhirendronathPage()),
                  );
                  },
                   child: Container(
                     child: Center(
                       child: Text("গণপরিষদে ধীরেন্দ্রনাথ দত্তের রাষ্ট্রভাষার দাবি",
                       style: TextStyle(
                         fontSize: 18.0,
                         color: Colors.white,
                       ),),
                     ),
                     height: 45.0,
                     width: 420.0,
                               decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        colors:[Colors.teal.shade500, Colors.cyan.shade600],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 12,
                          offset: Offset(0, 4),
                        ),
                      ],
                               ),
                   ),
                 ),
               ),
             ),
        
             Container(
               child: Padding(
                 padding: const EdgeInsets.only(
                   top: 20.0,
                 ),
                 child: ElevatedButton(
                   onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const KhazaPage()),
                  );
                  },
                   child: Container(
                     child: Center(
                       child: Text("খাজা নাজিমুদ্দিনের সাথে চুক্তি",
                       style: TextStyle(
                         fontSize: 18.0,
                         color: Colors.white,
                       ),),
                     ),
                     height: 45.0,
                     width: 420.0,
                                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        colors:[Colors.teal.shade500, Colors.cyan.shade600],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 12,
                          offset: Offset(0, 4),
                        ),
                      ],
                                 ),
                   ),
                 ),
               ),
             ),
        
             Container(
               child: Padding(
                 padding: const EdgeInsets.only(
                   top: 20.0,
                 ),
                 child: ElevatedButton(
                   onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const JinnaPage()),
                  );
                  },
                   child: Container(
                     child: Center(
                       child: Text("মুহাম্মদ আলী জিন্নাহ্‌র ঢাকা সফর",
                       style: TextStyle(
                         fontSize: 18.0,
                         color: Colors.white,
                       ),),
                     ),
                     height: 45.0,
                     width: 420.0,
                                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        colors:[Colors.teal.shade500, Colors.cyan.shade600],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 12,
                          offset: Offset(0, 4),
                        ),
                      ],
                                 ),
                   ),
                 ),
               ),
             ),
        
        
             Container(
               child: Padding(
                 padding: const EdgeInsets.only(
                   top: 20.0,
                 ),
                 child: ElevatedButton(
                   onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const LiakotPage()),
                  );
                  },
                   child: Container(
                     child: Center(
                       child: Text("লিয়াকত আলি খানের ঢাকা সফর",
                       style: TextStyle(
                         fontSize: 18.0,
                         color: Colors.white,
                       ),),
                     ),
                     height: 45.0,
                     width: 420.0,
                                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        colors:[Colors.teal.shade500, Colors.cyan.shade600],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 12,
                          offset: Offset(0, 4),
                        ),
                      ],
                                 ),
                   ),
                 ),
               ),
             ),
        
        
             Container(
               child: Padding(
                 padding: const EdgeInsets.only(
                   top: 20.0,
                   bottom: 40.0,
                 ),
                 child: ElevatedButton(
                   onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const FebruaryPage()),
                  );
                  },
                   child: Container(
                     child: Center(
                       child: Text("২১ ফেব্রুয়ারির ঘটনা",
                       style: TextStyle(
                         fontSize: 18.0,
                         color: Colors.white,
                       ),),
                     ),
                     height: 45.0,
                     width: 420.0,
                                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        colors:[Colors.teal.shade500, Colors.cyan.shade600],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 12,
                          offset: Offset(0, 4),
                        ),
                      ],
                                 ),
                   ),
                 ),
               ),
             ),
        
        
        
            ],),],
        ),
      ),
    );
  }
}


class DhirendronathPage extends StatelessWidget {
  const DhirendronathPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
                  ),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                    child: Container(
                      child: Center(
                     child: Text("গণপরিষদে ধীরেন্দ্রনাথ দত্তের রাষ্ট্রভাষার দাবি",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                       
                     ),),
                   ),
                   height: 65.0,
                   width: 220.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/vasa2.png",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                      right: 25.00,
                      left: 25.00,
                    ),
                    child: Container(
                      child: Text("১৯৪৮ সালের ২৫শে ফেব্রুয়ারি তারিখে পাকিস্তান গণপরিষদে ইংরেজি ও উর্দুর পাশাপাশি সদস্যদের বাংলায় বক্তৃতা প্রদান এবং সরকারি কাজে বাংলা ভাষা ব্যবহারের জন্য একটি সংশোধনী প্রস্তাব উত্থাপন করেন গণপরিষদ সদস্য ধীরেন্দ্রনাথ দত্ত।ইংরেজিতে প্রদত্ব বক্তৃতায় বাংলাকে অধিকাংশ জাতিগোষ্ঠীর ভাষা হিসেবে উল্লেখ করে ধীরেন্দ্রনাথ বাংলাকে রাষ্ট্রভাষার মর্যাদা দেয়ার দাবি তোলেন। এছাড়াও সরকারি কাগজে বাংলা ভাষা ব্যবহার না করার সিদ্ধান্তের প্রতিবাদ জানান তিনি।",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}


class KhazaPage extends StatelessWidget {
  const KhazaPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
                  ),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                    child: Container(
                      child: Center(
                     child: Text("খাজা নাজিমুদ্দিনের সাথে চুক্তি",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                       
                     ),),
                   ),
                   height: 45.0,
                   width: 220.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/vasa1.jpg",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                      right: 25.00,
                      left: 25.00,
                    ),
                    child: Container(
                      child: Text("১১ তারিখের এ ঘটনার পর ১২ থেকে ১৫ মার্চ ধর্মঘট পালন করা হয়। আন্দোলনের তীব্রতার মুখে ১৫ মার্চ খাজা নাজিমুদ্দিন সংগ্রাম পরিষদের নেতাদের সাথে বৈঠকে মিলিত হন। সংগ্রাম পরিষদের পক্ষে আবুল কাশেম, কামরুদ্দীন আহমদ, মোহাম্মদ তোয়াহা, সৈয়দ নজরুল ইসলাম, আবদুর রহমান চৌধুরী প্রমূখ অংশগ্রহণ করেছিলেন। আলোচনাসাপেক্ষে দুই পক্ষের মধ্যে ৮টি বিষয়ে সমঝোতা চুক্তি স্বাক্ষরিত হয়। ছাত্রদের আন্দোলনের মুখে সরকারের এ নমনীয় আচরণের প্রধান কারণ ছিল ১৯ মার্চ জিন্নাহ্‌'র ঢাকা আগমন।",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}


class JinnaPage extends StatelessWidget {
  const JinnaPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
                  ),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                    child: Container(
                      child: Center(
                     child: Text("মুহাম্মদ আলী জিন্নাহ্‌র ঢাকা সফর",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                       
                     ),),
                   ),
                   height: 45.0,
                   width: 220.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/vasa1.jpg",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                      right: 25.00,
                      left: 25.00,
                    ),
                    child: Container(
                      child: Text("Comming soon...",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}


class LiakotPage extends StatelessWidget {
  const LiakotPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
                  ),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                    child: Container(
                      child: Center(
                     child: Text("লিয়াকত আলি খানের ঢাকা সফর",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                       
                     ),),
                   ),
                   height: 45.0,
                   width: 220.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/vasa1.jpg",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                      right: 25.00,
                      left: 25.00,
                    ),
                    child: Container(
                      child: Text("Comming soon...",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}


class FebruaryPage extends StatelessWidget {
  const FebruaryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
                  ),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                    child: Container(
                      child: Center(
                     child: Text("২১ ফেব্রুয়ারির ঘটনা",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                       
                     ),),
                   ),
                   height: 45.0,
                   width: 220.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/vasa1.jpg",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                      right: 25.00,
                      left: 25.00,
                    ),
                    child: Container(
                      child: Text("Comming soon...",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}


class SixPage extends StatelessWidget {
  const SixPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
                  ),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                    child: Container(
                      child: Center(
                     child: Text("ছয় দফা দাবি",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 220.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/6dofa.png",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                      right: 25.00,
                      left: 25.00,
                    ),
                    child: Container(
                      child: Text("Comming soon ...",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}


class BongoPage extends StatelessWidget {
  const BongoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
             color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
           ),

           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: Container(
                 child: Center(
                   child: Text("বঙ্গবন্ধুর স্বপ্ন",
                   style: TextStyle(
                     fontSize: 18.0,
                     color: Colors.white,
                   ),),
                 ),
                 height: 45.0,
                 width: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(
                    colors:[Colors.teal.shade500, Colors.cyan.shade600],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
              ),
               ),
             ),
           ),


          //  Container(
          //    child: Padding(
          //      padding: const EdgeInsets.only(
          //        top: 20.0,
          //        left: 75.0,
          //        right: 75.0,
          //      ),
          //      child: Text("বাংলাদেশ দক্ষিণ এশিয়ার একটি জনবহুল রাষ্ট্র। ১৯৭১ সালের স্বাধীনতা যুদ্ধে পাকিস্তান থেকে স্বাধীনতা অর্জনের পর দেশটি বিশ্ব মানচিত্রে একটি স্বাধীন রাষ্ট্র হিসাবে আবির্ভূত হয়।",
          //      textAlign: TextAlign.center,),
          //    ),
          //  ),
           
            Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const BongoOne()),
                );
              },

                 child: Container(
                   child: Center(
                     child: Text("পটভূমি",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),

           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                 onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const BongoTwo()),
                  );
                  },
                 child: Container(
                   child: Center(
                     child: Text("বিস্তারিত ",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),

           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                 onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const BongoThree()),
                  );
                  },
                 child: Container(
                   child: Center(
                     child: Text("অগ্রগতি ",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),

          ],),
      ),
    );
  }
}

class BongoOne extends StatelessWidget {
  const BongoOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
                  ),
                  Timer(),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                        
                    child: Container(
                      child: Center(
                     child: Text("পটভূমি",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 220.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/bongo1.png",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                      right: 25.00,
                      left: 25.00,
                    ),
                    child: Container(
                      child: Text("শেখ মুজিবুর রহমান; দক্ষিণ এশিয়ার প্রভাবশালী একজন রাজনীতিবিদ। যিনি তদানীন্তন ব্রিটিশ ভারত থেকে ভারতের বিভাজন ও পশ্চিম পাকিস্তানের শোষণের নাগপাশ থেকে বাংলাদেশ নামক স্বাধীন ভূখণ্ড প্রতিষ্ঠার সংগ্রামে কেন্দ্রীয় পর্যায়ে নেতৃত্ব প্রদান করেছিলেন।কিউবার বিপ্লবী নেতা ফিদেল কাস্ট্রো বঙ্গবন্ধুর নেতৃত্ব, ব্যক্তিগত সিদ্ধান্ত, ধৈর্য ও অবিচলতার ব্যাপারে গর্ব করে বলেছিলেন যে, ‘আমি হিমালয় দেখিনি, শেখ মুজিবকে দেখেছি।’ পর্বততুল্য ব্যক্তিত্ব ও সাহসিকতা সম্পন্ন বঙ্গবন্ধু দেশ ও জাতিকে অনেক বেশি ভালোবেসেছিলেন। ব্রিটিশ সাংবাদিক ডেভিড ফ্রস্ট এক সাক্ষাৎকারে বঙ্গবন্ধুকে জিজ্ঞাসা করেছিলেন যে, ‘আপনার শক্তি কোথায়?’ তিনি উত্তরে বলেছিলেন, ‘আমি আমার জনগণকে ভালোবাসি।’ আবার তার দুর্বল দিকের কথা জিজ্ঞেস করলে তিনি বলেছিলেন, ‘আমি আমার জনগণকে খুব বেশি ভালোবাসি।’ জীবনের পুরোটা সময় এদেশের মাটি ও মানুষের জন্য ব্যয় করা এই মানুষটির বাংলাদেশকে নিয়ে ছিল দুঃসাহসিক স্বপ্ন।",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}


class BongoTwo extends StatelessWidget {
  const BongoTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
                  ),
                  Timer(),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                    child: Container(
                      child: Center(
                     child: Text("বিস্তারিত",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 220.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/bongo1.png",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                      right: 25.00,
                      left: 25.00,
                    ),
                    child: Container(
                      child: Text("Coming soon...",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}


class BongoThree extends StatelessWidget {
  const BongoThree({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
                  ),
                  Timer(),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                    child: Container(
                      child: Center(
                     child: Text("অগ্রগতি",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 220.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/bongo1.png",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                      right: 25.00,
                      left: 25.00,
                    ),
                    child: Container(
                      child: Text("Coming soon...",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}


class Orjon extends StatelessWidget {
  const Orjon({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
             color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
           ),

           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: Container(
                 child: Center(
                   child: Text("বাংলাদেশের অর্জন",
                   style: TextStyle(
                     fontSize: 18.0,
                     color: Colors.white,
                   ),),
                 ),
                 height: 45.0,
                 width: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(
                    colors:[Colors.teal.shade500, Colors.cyan.shade600],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
              ),
               ),
             ),
           ),


           
           
            Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const GdpPage()),
                );
              },

                 child: Container(
                   child: Center(
                     child: Text("বাংলাদেশের মোট দেশীয় উৎপাদন (জিডিপি)",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),

           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const Padma()),
                );
              },

                 child: Container(
                   child: Center(
                     child: Text("পদ্মা সেতু ",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),

           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                 onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const Matro()),
                  );
                  },
                 child: Container(
                   child: Center(
                     child: Text("মেট্রো রেল ",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),

           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                 onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const SixPage()),
                  );
                  },
                 child: Container(
                   child: Center(
                     child: Text("এলিভেটেড এক্সপ্রেসওয়ে",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),


           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                 onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const SixPage()),
                  );
                  },
                 child: Container(
                   child: Center(
                     child: Text("কর্ণফুলি টানেল",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),


           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                 onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const SixPage()),
                  );
                  },
                 child: Container(
                   child: Center(
                     child: Text("বঙ্গবন্ধু সেতু ",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),


           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                 onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const SixPage()),
                  );
                  },
                 child: Container(
                   child: Center(
                     child: Text("ডিজিটাল বাংলাদেশ রুপকল্প ২০২১",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),

           Container(
             child: Padding(
               padding: const EdgeInsets.only(
                 top: 20.0,
               ),
               child: ElevatedButton(
                 onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const SixPage()),
                  );
                  },
                 child: Container(
                   child: Center(
                     child: Text("ভার্চুয়াল ট্যুর ",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 420.0,
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                             ),
                 ),
               ),
             ),
           ),

           

          ],),
      ),
    );
  }
}


class RewardPage extends StatelessWidget {
  const RewardPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: 
              [Column(
              children: [
                Container(
                 color: Colors.teal.shade200,
                 padding: EdgeInsets.only(
                   left: 30.00,
                   right: 30.00,
                 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("জয় বাংলা",
                    style: TextStyle(
                      fontSize: 20.00,
                      color: Colors.red,
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 30.00,
                        right: 30.00,
                      ),
                      child: Image.asset("assets/images/50logo2.png",
                      height: 60.00,
                      width: 100.00,
                      )),
                    Text("জয় বঙ্গবন্ধু",
                    style: TextStyle(
                      fontSize: 20.00,
                      color: Colors.green,
                    ),
                    ),
                  ],
                ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: Row(
                     children: 
                       [Padding(
                         padding: const EdgeInsets.only(
                           left: 30.0,
                           right: 25.0,
                         ),
                         child: Container(
                           child: Center(
                             child: Text("কাজসমূহ",
                             style: TextStyle(
                               fontSize: 18.0,
                               color: Colors.white,
                             ),),
                           ),
                           height: 45.0,
                           width: 230.0,
                                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                            gradient: LinearGradient(
                              colors:[Colors.teal.shade500, Colors.cyan.shade600],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 12,
                                offset: Offset(0, 4),
                              ),
                            ],
                                         ),
                         ),
                       ),
                       Container(
                         child: Center(
                           child: Text("পয়েন্ট",
                           style: TextStyle(
                             fontSize: 18.0,
                             color: Colors.white,
                           ),),
                         ),
                         height: 45.0,
                         width: 180.0,
                                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            colors:[Colors.teal.shade500, Colors.cyan.shade600],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 12,
                              offset: Offset(0, 4),
                            ),
                          ],
                                       ),
                       ),
                     ],
                   ),
                 ),
               ),
        
        
               
               
                Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                    onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const HistoryOne()),
                    );
                  },
        
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("গাছ লাগান",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 305.0,
                               ),
                               child: Container(
                                 child: Text("১০",
                                 //textAlign: TextAlign.start,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("শহর পরিষ্কার রাখুন",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 254.0,
                               ),
                               child: Container(
                                 child: Text("১০",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("বস্ত্র বিতরণ করুন",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 270.0,
                               ),
                               child: Container(
                                 child: Text("১৫",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("খাদ্য বিতরণ করুন",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 260.0,
                               ),
                               child: Container(
                                 child: Text("২০",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("কারিগরি সহায়তা প্রদান ",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 213.0,
                               ),
                               child: Container(
                                 child: Text("৫০০",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("আশ্রয়ণ সহায়তা প্রদান",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 220.0,
                               ),
                               child: Container(
                                 child: Text("১০০০",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("আর্থিক সহায়তা প্রদান",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 232.0,
                               ),
                               child: Container(
                                 child: Text("২০০",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("পথ শিশু পাঠদান ",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 260.0,
                               ),
                               child: Container(
                                 child: Text("১৫০",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.only(
                   bottom: 30.0,
                 ),
                 child: Container(
                   child: Padding(
                     padding: const EdgeInsets.only(
                       top: 20.0,
                     ),
                     child: ElevatedButton(
                       onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const SixPage()),
                        );
                        },
                       child: Container(
                         child: Padding(
                           padding: const EdgeInsets.only(
                             top: 10.0,
                           ),
                           child: Row(
                             children: [
                               Container(
                                 child: Text("অন্যান্য",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(
                                   left: 321.0,
                                 ),
                                 child: Container(
                                 child: Text("***",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                             ),
                               ),
                             ],
                           ),
                         ),
                         height: 45.0,
                         width: 420.0,
                                   decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            colors:[Colors.teal.shade500, Colors.cyan.shade600],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 12,
                              offset: Offset(0, 4),
                            ),
                          ],
                                   ),
                       ),
                       
                     ),
                     
                   ),
                 ),
                 
               ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 40.0,
                  ),
                  child: Container(
                    child: Text("*** কাজের ওপর নির্ভরশীল ",
                    style: TextStyle(
                      color: Colors.red,
                    ),),
                  ),
                ),
              ],
              ),
            ],
        ),
      ),
    );
  }
}


class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: 
              [Column(
              children: [
                Container(
                 color: Colors.teal.shade200,
                 padding: EdgeInsets.only(
                   left: 30.00,
                   right: 30.00,
                 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("জয় বাংলা",
                    style: TextStyle(
                      fontSize: 20.00,
                      color: Colors.red,
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 30.00,
                        right: 30.00,
                      ),
                      child: Image.asset("assets/images/50logo2.png",
                      height: 60.00,
                      width: 100.00,
                      )),
                    Text("জয় বঙ্গবন্ধু",
                    style: TextStyle(
                      fontSize: 20.00,
                      color: Colors.green,
                    ),
                    ),
                  ],
                ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: Container(
                     child: Center(
                       child: Text("বাংলাদেশের Orjon",
                       style: TextStyle(
                         fontSize: 18.0,
                         color: Colors.white,
                       ),),
                     ),
                     height: 45.0,
                     width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        colors:[Colors.teal.shade500, Colors.cyan.shade600],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 12,
                          offset: Offset(0, 4),
                        ),
                      ],
                  ),
                   ),
                 ),
               ),
        
        
               
               
                Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                    onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const HistoryOne()),
                    );
                  },
        
                     child: Container(
                       child: Center(
                         child: Text("GDP",
                         style: TextStyle(
                           fontSize: 18.0,
                           color: Colors.white,
                         ),),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const LanguagePage()),
                      );
                      },
                     child: Container(
                       child: Center(
                         child: Text("PADMAN SETU",
                         style: TextStyle(
                           fontSize: 18.0,
                           color: Colors.white,
                         ),),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Center(
                         child: Text("MATRO RAIL",
                         style: TextStyle(
                           fontSize: 18.0,
                           color: Colors.white,
                         ),),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Center(
                         child: Text("ELEVATED EXPRESSWAY",
                         style: TextStyle(
                           fontSize: 18.0,
                           color: Colors.white,
                         ),),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Center(
                         child: Text("KORNOPHULI EXPRESS",
                         style: TextStyle(
                           fontSize: 18.0,
                           color: Colors.white,
                         ),),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Center(
                         child: Text("BONGOBONDHU SETU",
                         style: TextStyle(
                           fontSize: 18.0,
                           color: Colors.white,
                         ),),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Center(
                         child: Text("DIGITAL BANGLADESH VISION 2021",
                         style: TextStyle(
                           fontSize: 18.0,
                           color: Colors.white,
                         ),),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Center(
                         child: Text("VIRTUAL TOUR",
                         style: TextStyle(
                           fontSize: 18.0,
                           color: Colors.white,
                         ),),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),

               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Center(
                         child: Text("VIRTUAL TOUR",
                         style: TextStyle(
                           fontSize: 18.0,
                           color: Colors.white,
                         ),),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
              ],),
            ],
        ),
      ),
    );
  }
}



class LeaderPage extends StatelessWidget {
  const LeaderPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: 
              [Column(
              children: [
                Container(
                 color: Colors.teal.shade200,
                 padding: EdgeInsets.only(
                   left: 30.00,
                   right: 30.00,
                 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("জয় বাংলা",
                    style: TextStyle(
                      fontSize: 20.00,
                      color: Colors.red,
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 30.00,
                        right: 30.00,
                      ),
                      child: Image.asset("assets/images/50logo2.png",
                      height: 60.00,
                      width: 100.00,
                      )),
                    Text("জয় বঙ্গবন্ধু",
                    style: TextStyle(
                      fontSize: 20.00,
                      color: Colors.green,
                    ),
                    ),
                  ],
                ),
               ),
                
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: Container(
                     child: Center(
                       child: Text("স্কোর বোর্ড",
                       style: TextStyle(
                         fontSize: 18.0,
                         color: Colors.white,
                       ),),
                     ),
                     height: 45.0,
                     width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        colors:[Colors.teal.shade500, Colors.cyan.shade600],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 12,
                          offset: Offset(0, 4),
                        ),
                      ],
                  ),
                   ),
                 ),
               ),
        
        
               
               
                Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                    onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const HistoryOne()),
                    );
                  },
        
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("মোঃ ইসরাফিল আলম ",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Container(
                               child: Image.asset("assets/images/acheivement2.png"),
                               height: 30.0,
                               width: 30.0,
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 190.0,
                               ),
                               child: Container(
                                 child: Text("২৫২০ ",
                                 textAlign: TextAlign.end,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                         
                         
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("মোঃ রবিউল ইসলাম ",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 230.0,
                               ),
                               child: Container(
                                 child: Text("২৪৬০ ",
                                 textAlign: TextAlign.end,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("রফিকুল ইসলাম  ",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 255.0,
                               ),
                               child: Container(
                                 child: Text("২২৪০ ",
                                 textAlign: TextAlign.end,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("আমিনুল ইসলাম ",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 253.0,
                               ),
                               child: Container(
                                 child: Text("২২০০ ",
                                 textAlign: TextAlign.end,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text(" রহমত আলী ",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 280.0,
                               ),
                               child: Container(
                                 child: Text("২১৮০ ",
                                 textAlign: TextAlign.end,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("সাত্তার খান ",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 290.0,
                               ),
                               child: Container(
                                 child: Text("২০৭০ ",
                                 textAlign: TextAlign.end,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("তমা হক ",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 315.0,
                               ),
                               child: Container(
                                 child: Text("১৯১০ ",
                                 textAlign: TextAlign.end,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),
        
               Container(
                 child: Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: ElevatedButton(
                     onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SixPage()),
                      );
                      },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.only(
                           top: 10.0,
                         ),
                         child: Row(
                           children: [
                             Container(
                               child: Text("আরিফা সুলতানা",
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white,
                                 
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 left: 260.0,
                               ),
                               child: Container(
                                 child: Text("১৮২০ ",
                                 textAlign: TextAlign.right,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                             ),
                           ],
                         ),
                       ),
                       height: 45.0,
                       width: 420.0,
                                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors:[Colors.teal.shade500, Colors.cyan.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                                 ),
                     ),
                   ),
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.only(
                   bottom: 30.0,
                 ),
                 child: Container(
                   child: Padding(
                     padding: const EdgeInsets.only(
                       top: 20.0,
                     ),
                     child: ElevatedButton(
                       onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const SixPage()),
                        );
                        },
                       child: Container(
                         child: Padding(
                           padding: const EdgeInsets.only(
                             top: 10.0,
                           ),
                           child: Row(
                             children: [
                               Container(
                                 child: Text("নিলয়",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(
                                   left: 332.0,
                                 ),
                                 child: Container(
                                 child: Text(" ১৭৮০ ",
                                 //textAlign: TextAlign.center,
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.white,
                                   
                                 ),),
                             ),
                               ),
                             ],
                           ),
                         ),
                         height: 45.0,
                         width: 420.0,
                                   decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            colors:[Colors.teal.shade500, Colors.cyan.shade600],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 12,
                              offset: Offset(0, 4),
                            ),
                          ],
                                   ),
                       ),
                     ),
                   ),
                 ),
               ),
        
              ],),
            ],
        ),
      ),
    );
  }
}



class ProfilePageTwo extends StatelessWidget {
  const ProfilePageTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: profileView()// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
 
  Widget profileView() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Container(height: 50, width: 50 ,child: Icon(Icons.arrow_back_ios, size: 24,color: Colors.black54,), decoration: BoxDecoration(border: Border.all(color: Colors.black54), borderRadius: BorderRadius.all(Radius.circular(10))),),
              Padding(
                padding: const EdgeInsets.only(
                  //right: 200.00,
                  left: 30.00,
                ),
                child: Text('Profiles details', textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
              Container(height: 24,width: 24)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0,0 ,50),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                child: ClipOval(child: Image.asset('assets/images/profile2.png', height: 150, width: 150, fit: BoxFit.cover,),),
              ),
              Positioned(bottom: 1, right: 1 ,child: Container(
                height: 40, width: 40,
                child: Icon(Icons.add_a_photo, color: Colors.white,),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ))
            ],
          ),
        ),
        Expanded(child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.black54, Color.fromRGBO(0, 41, 102, 1)]
            )
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Name', style: TextStyle(color: Colors.white70),),
                    ),
                  ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Email', style: TextStyle(color: Colors.white70),),
                    ),
                  ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Type something about yourself', style: TextStyle(color: Colors.white70),),
                    ),
                  ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Phone number', style: TextStyle(color: Colors.white70),),
                    ),
                  ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container( height: 40, width: 200,
                    child: Align(child: Text('Save', style: TextStyle(color: Colors.white70, fontSize: 20),),),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),)
                    ),
                  ),
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}



class Timer extends StatelessWidget {
  const Timer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Duration>(
  duration: Duration(minutes: 2),
  tween: Tween(begin: Duration(minutes: 2), end: Duration.zero),
  onEnd: () {
    
    print('Cheers! Reward Added!');
    //Navigator.pushNamed(context, "/displayScreen");
  },
  builder: (BuildContext context, Duration value, Widget? child) {
    final minutes = value.inMinutes;
    final seconds = value.inSeconds % 60;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text('$minutes:$seconds',
               textAlign: TextAlign.center,
               style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.bold,
               fontSize: 20)));
    },
    );
  }
}



class GdpPage extends StatelessWidget {
  const GdpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
            
                  ),
                  Timer(),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                        
                    child: Container(
                      child: Center(
                     child: Text("বাংলাদেশের মোট দেশীয় উৎপাদন (জিডিপি) ",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 320.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        bottom: 10.0,
                      ),
                      child: Container(
                        child: Text("Growth rate of GDP 2016 - 2026"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/gdp.PNG",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        bottom: 10.0,
                      ),
                      child: Container(
                        child: Text("Bangladesh Bank Reserve "),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/gdp3.JPG",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        bottom: 10.0,
                      ),
                      child: Container(
                        child: Text("Bangladesh Remitance "),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/gdp2.JPG",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),

                  Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    bottom: 40.0,
                  ),
                  child: Container(
                    child: Text("**রিওয়ার্ড পেতে ২ মিনিট অবস্থান করুন ",
                    style: TextStyle(
                      color: Colors.red,
                    ),),
                  ),
                ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}


class Padma extends StatelessWidget {
  const Padma({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
            
                  ),
                  Timer(),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                        
                    child: Container(
                      child: Center(
                     child: Text("পদ্মা সেতু ",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 220.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/padma2.jpg",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                      right: 25.00,
                      left: 25.00,
                    ),
                    child: Container(
                      child: Text("প্রধান সেতু 6,150 মি (20,180 ফুট):\n\nঠিকাদার: চায়না মেজর ব্রিজ ইঞ্জিনিয়ারিং \nচুক্তির মেয়াদ: 4 বছর+1 বছর\nচুক্তি খরচ: BDT: 12,133.39 কোটি\nকাজের আদেশের তারিখ: 26 নভেম্বর 2014\nসমাপ্তির তারিখ: 31 ডিসেম্বর 2019\nকাজের শারীরিক অগ্রগতি: 85.50%\nনদী প্রশিক্ষণ কাজ 14 কিমি (8.7 মাইল) দৈর্ঘ্য।\n\nঠিকাদার: সিনোহাইড্রো কর্পোরেশন লিমিটেড\nচুক্তির মেয়াদ: 4 বছর+1 বছর\nচুক্তি খরচ: BDT: 9,400 কোটি\nকাজের আদেশের তারিখ: 31 ডিসেম্বর 2014 \nসমাপ্তির তারিখ: 31 ডিসেম্বর 2019 কাজের শারীরিক অগ্রগতি: 66%",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    bottom: 40.0,
                  ),
                  child: Container(
                    child: Text("**রিওয়ার্ড পেতে ২ মিনিট অবস্থান করুন ",
                    style: TextStyle(
                      color: Colors.red,
                    ),),
                  ),
                ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}



class Matro extends StatelessWidget {
  const Matro({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.teal.shade200,
             padding: EdgeInsets.only(
               left: 30.00,
               right: 30.00,
             ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("জয় বাংলা",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.red,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.00,
                    right: 30.00,
                  ),
                  child: Image.asset("assets/images/50logo2.png",
                  height: 60.00,
                  width: 100.00,
                  )),
                Text("জয় বঙ্গবন্ধু",
                style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.green,
                ),
                ),
              ],
            ),
            
                  ),
                  Timer(),
                  Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                        top: 20.0,
                        ),
                        
                    child: Container(
                      child: Center(
                     child: Text("মেট্রো রেল ",
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                     ),),
                   ),
                   height: 45.0,
                   width: 220.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors:[Colors.teal.shade500, Colors.cyan.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                ),
                 ),
               ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                    ),
                    child: Container(
                      child: Image.asset("assets/images/rail1.jpg",
                       //height: 50.0,
                       width: 450.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.00,
                      right: 25.00,
                      left: 25.00,
                    ),
                    child: Container(
                      child: Text("লাইনের সংখ্যা\n1 (নির্মাণাধীন)\n5 (পরিকল্পিত)\n\nস্টেশনের সংখ্যা\n16 (নির্মাণাধীন)\n52 (পরিকল্পিত/প্রস্তাবিত)\n\nসিস্টেমের দৈর্ঘ্য\n20.1 কিমি (12.5 মাইল) (নির্মাণাধীন) \n128.74 কিমি (80.00 মাইল) (পরিকল্পিত)\n\nওভারহেডের মাধ্যমে বিদ্যুতায়ন 1500V ডিসি\nগড় গতি 30 কিমি/ঘন্টা (19 মাইল)\nসর্বোচ্চ গতি 100 কিমি/ঘন্টা (62 মাইল)",
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    bottom: 40.0,
                  ),
                  child: Container(
                    child: Text("**রিওয়ার্ড পেতে ২ মিনিট অবস্থান করুন ",
                    style: TextStyle(
                      color: Colors.red,
                    ),),
                  ),
                ),
                ],
              ),
            ],
          ),
        ),
      ) 
    );
  }
}
