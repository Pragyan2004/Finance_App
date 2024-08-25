import 'package:finance_app/data/listdata.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:CustomScrollView(
          slivers:[
            SliverToBoxAdapter(
            child:SizedBox(height:340,
                child: _head()),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:15,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Transaction History",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 19
                    ),),
                    Text("See All",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 15
                      ),)
                  ],
                ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
                (context,index){
                  return ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset('images/${geter()[index].image}',
                      height: 40,
                        fit: BoxFit.contain,
                      ),
                    ),
                    title: Text(geter()[index].name!,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600
                    ),),
                    subtitle:Text(geter()[index].time!,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600
                      ),),
                    trailing: Text(geter()[index].fee!,
                      style: TextStyle(
                          fontSize: 19,
                          color: geter()[index].buy! ? Colors.red:Colors.green,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  );
                },
              childCount: geter().length,
            ),
            )
          ]
        )
      ),
    );
  }

Widget _head(){
return  Stack(
  children: [
  Column(
  children: [
  Container(
  width: double.infinity,
  height: 250,
  decoration: BoxDecoration(
  color: Colors.grey,
  borderRadius: BorderRadius.only(
  bottomLeft: Radius.circular(20),
  bottomRight: Radius.circular(20),
  )
  ),
  child: Stack(
  children: [
  Positioned(
  top: 10,
  left: 350,
  child: ClipRRect(
  borderRadius: BorderRadius.circular(7),
  child: Container(
  height: 60,
  width: 40,
  color: Color.fromRGBO(250, 250, 250, 0.1),
  child: Icon(
  Icons.notification_add_outlined,
  size: 30,
  color: Colors.white,
  ),
  ),
  )
  ),
  Padding(
  padding: const EdgeInsets.only(top:30,left: 10),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text(
  "Good Afternoon",
  style: TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color:Color.fromARGB(255, 224, 223, 223),
  ),),
  Text(
  "Morica Fandides",
  style: TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  color:Color.fromARGB(255, 224, 223, 223),
  ),),
  ],
  ),
  )
  ],
  ),
  ),
  ],
  ),

  Positioned(
  top: 140,
  left: 37,
  child: Container(
  height: 170,
  width: 320,
  decoration: BoxDecoration(
  boxShadow: [
  BoxShadow(
  color: Color.fromARGB(47, 125, 121, 3),
  offset: Offset(0,6),
  blurRadius: 12,
  spreadRadius: 6,
  ),
  ],
  color:Color.fromARGB(255, 47, 125, 121),
  borderRadius: BorderRadius.circular(15),
  ),
  child: Column(
  children: [
  SizedBox(height: 10),
  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Text("Total Balance",
  style: TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color:Colors.white
  ),),
  Icon(Icons.more_horiz,
  color: Colors.white,
  size: 20,
  )
  ],
  ),
  ),
  SizedBox(height: 7),
  Padding(
  padding: const EdgeInsets.only(left: 15),
  child: Row(
  children: [
  Text("\$ 2,957",
  style: TextStyle(
  fontSize: 20,
  color: Colors.white,
  fontWeight: FontWeight.bold
  ),)
  ],
  ),
  ),
  SizedBox(height: 25),
  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15.0),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Row(
  children: [
  CircleAvatar(
  radius: 13,
  backgroundColor: Color.fromARGB(225,85, 145, 141),
  child: Icon(
  Icons.arrow_downward,
  size: 19,
  color: Colors.white,
  ),
  ),
  SizedBox(width: 10),
  Text("Income",
  style: TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  color: Color.fromARGB(225,216,216,215),
  ),)
  ],
  ),
  Row(
  children: [
  CircleAvatar(
  radius: 13,
  backgroundColor: Color.fromARGB(225,85, 145, 141),
  child: Icon(
  Icons.arrow_upward,
  size: 19,
  color: Colors.white,
  ),
  ),
  SizedBox(width: 10),
  Text("Expensive",
  style: TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  color: Color.fromARGB(225,216,216,215),
  ),)
  ],
  ),
  ],
  ),
  ),
  SizedBox(height: 6),
  Padding(
  padding: const EdgeInsets.symmetric(horizontal:30),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Text("\$ 1,4450",style: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Color.fromARGB(225,216,216,215),
  ),),
  Text("\$ 450",
  style: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Color.fromARGB(225,216,216,215),
  ),),
  ],
  ),
  ),
  ],
  ),
  ),
  )
  ],
  );
}
}
