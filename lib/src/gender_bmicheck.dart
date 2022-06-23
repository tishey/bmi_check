// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../util/costants.dart';
import 'calculate_bmicheck.dart';



final Decoration activeButton =  BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFF3C8B46), Color(0xFF00A580)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      borderRadius: BorderRadius.circular(25),
                    );


class GenderType extends StatefulWidget {
  const GenderType({Key? key}) : super(key: key);

  @override
  State<GenderType> createState() => _GenderTypeState();
}

class _GenderTypeState extends State<GenderType> with TickerProviderStateMixin {

   late TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  final int _totalPage = 2;
  final PageController _pageController = PageController(initialPage: 0);
       int _currrentPage = 0;

  Widget _pageIndicator(bool isCurrentPage){
    return AnimatedContainer(duration: Duration(milliseconds: 370),
    margin: EdgeInsets.symmetric(horizontal: 2),
    height: isCurrentPage? 10 : 6,
    width: isCurrentPage? 10 : 6,
   
    );
  }
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: (int page) {
        _currrentPage = page;
    },
     children: <Widget>[  
     
      Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Select Gender'),
              
            ),
            elevation: 2,
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children:  [ Container(
                    margin: EdgeInsets.all(40),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), ),
                    child: Image.asset('lib/assets/image/male.jpg')),
                   
                    Container(
                      margin: EdgeInsets.all(40),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), ),
                    child: Image.asset('lib/assets/image/female.jpg')),]
                ),
              ),
              SizedBox(height: 80),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: bColour,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: TabBar(
                      controller: _tabController,
                    indicator: activeButton,
                     
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white,
                    tabs: [
                      Tab(
                        text: 'Male',
                      ),
                      Tab(
                        text: 'Female',
                      ),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 50,)
            ],
          ),
          
          bottomSheet: Container(
            padding: EdgeInsets.all(20),
            color: bColour,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(2, duration: Duration(milliseconds: 400), curve: Curves.linear);
                  },
                  child: Text(
                    'Prev',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(child: Row(children: <Widget>[
                  for (int i = 0; i < _totalPage; i++) i == _currrentPage? _pageIndicator(true) : _pageIndicator(false)
                ],)),
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(2, duration: Duration(milliseconds: 400), curve: Curves.linear);
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          )),
          Calc(),
    ], 
    );
  }
}

// class NewContainer extends StatelessWidget {
//   NewContainer({this.myheight, this.mywidth});

//   double? myheight;
//   double? mywidth;
  
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         margin: EdgeInsets.all(20),
//         height: myheight,
//         width: mywidth,
//         child: Text(''),
        
//         decoration: BoxDecoration(

//           color: Colors.white,
//           borderRadius: BorderRadius.circular(30),
//         ));
//   }
// }

