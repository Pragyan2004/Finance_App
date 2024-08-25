import 'package:finance_app/pages/add_screen.dart';
import 'package:finance_app/pages/home.dart';
// import 'package:finance_app/pages/profile.dart';
import 'package:finance_app/pages/statics.dart';
import 'package:flutter/material.dart';
class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_color=0;
  List Screen=[Home(),StaticsScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[index_color],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Add_Screen()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7,bottom: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    index_color=0;
                  });
                },
                child: Icon(Icons.home,
                size: 30,
                color: index_color==0? Colors.grey:Colors.black,
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index_color=1;
                  });
                },
                child: Icon(Icons.stacked_bar_chart,
                  size: 30,
                  color: index_color==1? Colors.grey:Colors.black,
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index_color=2;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
