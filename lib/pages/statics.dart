import 'package:finance_app/data/listdata.dart';
import 'package:finance_app/widget/chartdata.dart';
import 'package:flutter/material.dart';
class StaticsScreen extends StatefulWidget {
  const StaticsScreen({super.key});

  @override
  State<StaticsScreen> createState() => _StaticsScreenState();
}

class _StaticsScreenState extends State<StaticsScreen> {
  List day=['Day','Week','Month','Year'];
  int index_color=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("Statistics",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20
                  ),),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(4, (index) {
                          return GestureDetector(
                            onTap: (){
                              setState(() {
                                index_color==index;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: index_color==index ? Color.fromARGB(255, 47, 125, 121)  : Colors.white
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                day[index],
                                style:TextStyle(
                                  color:index_color==index ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),),
                            ),
                          );
                        })
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 40,
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Expense",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),),
                              Icon(Icons.arrow_downward_sharp,
                              color: Colors.grey,
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Chart(),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Top Spending",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),
                        Icon(
                          Icons.swap_vert,
                          size: 25,
                          color: Colors.grey,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
                (context,index){
                  return ListTile(
                    leading: Image.asset('images/${geter()[index].image!}',
                        height: 40,
                    ),
                    title: Text(geter()[index].name!,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),),
                    subtitle: Text(geter()[index].time!,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),),
                    trailing: Text(geter()[index].fee!,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Colors.red,
                      ),),
                  );
                },
                childCount:geter().length,
            ))
          ],
        ),
      ),
    );
  }
}
