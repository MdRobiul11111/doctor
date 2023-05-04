import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0 ; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }
  Widget _indicator(bool isActive) {
    return AnimatedContainer(duration: const Duration(milliseconds: 150),
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    height: 3.0,
    width: isActive ? 20.0 : 12.0,
    decoration: BoxDecoration(
    color: isActive ? const Color(0xFF00003F) : const Color.fromARGB(255, 179, 179, 180),
    borderRadius: const BorderRadius.all(Radius.circular(12))
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                     const Padding(padding: EdgeInsets.all(10),
                    child: Center(
            child: Text("Sign Up",
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.w800
              ),
              ),
              ),
                    ),
                     const Text("Amet minim mollit non deserunt ullamco est sit\n          aliqua dolor do amet sint.Velit officia",
            style: TextStyle(
                     fontSize: 16.60,
                     
                     ),
                     ),
                     
            Container(
                    height: 160.0,
                    child: PageView(physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
                    },
                    children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(22),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Center(
                    child:  Image(
                    height: 330,
                    image: AssetImage("assets/doctor1.png")),
                  ), 
              ],
              ),
            ),  Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  Center(
                    child:  Image(
                    height: 330,
                    image: AssetImage("assets/doctor3.png")),
                  ), 
              ],
              ),
            ),  Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  Center(
                    child:  Image(
                    height: 330,
                    image: AssetImage("assets/doctor2.png")),
                  ), 
              ],
              ),
            ),
                    ],
                    ),
                   ),
                   Stack(
            children: <Widget>[
                   Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: _buildPageIndicator(),
                   ),
                   ]),const SizedBox(height: 10,),
                    Container(
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xFF022F8E),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextButton(onPressed: () {
                      
                    },child: const Text("Continue With Mobile Number",
                    style: TextStyle(fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                    ),
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(
                    height: 1,
                    width: 160,
                    color: Colors.grey,
                  ),
                  const Text("Or",style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),),
                   Container(
                    height: 1,
                    width: 160,
                    color: Colors.grey,
                  ),
                  ],
                  ),
                 Container(
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1877F2),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextButton(onPressed: () {
                      
                    },child: Container(margin: const EdgeInsets.only(left: 70),
                      child: Row(
                        children: const [
                          Icon(Icons.facebook,color: Colors.white,),
                          SizedBox(width: 10,),
                          Text("Sign In With Facebook",
                          style: TextStyle(fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    ),
                  ), Container(
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey)
                    ),
                    child: TextButton(onPressed: () {
                      
                    },child: Container(margin: const EdgeInsets.only(left: 70),
                      child: Row(
                        children: const [
                          Icon(Icons.app_blocking,color: Colors.red,),
                          SizedBox(width: 10,),
                          Text("Sign In With Google",
                          style: TextStyle(fontSize: 20,
                         color: Color(0xFF00003F),
                          fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    ),
                  ), Container(
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00003F),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextButton(onPressed: () {
                      
                    },child: Container(margin: const EdgeInsets.only(left: 90),
                      child: Row(
                        children: const [
                          Icon(Icons.apple,color: Colors.white,),
                          SizedBox(width: 10,),
                          Text("Sign With Apple",
                          style: TextStyle(fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
                Container(margin: const EdgeInsets.only(left: 35),
                  child: Center(
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("Dont have an account?",
                        style: TextStyle(fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup(),));
                        }, child: const Text("Sign Up Here",
                        style: TextStyle(fontSize: 17,
                        color: Color(0xFF00003F),
                        fontWeight: FontWeight.bold),
                        ),)
                      ],
                    ),
                  ),
                )
                    
                   ]
                   ),
          ),
        ],
      ),
      )
    );
  }
}