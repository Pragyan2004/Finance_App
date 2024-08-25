import 'package:finance_app/pages/home.dart';
import 'package:flutter/material.dart';
class Add_Screen extends StatefulWidget {
  const Add_Screen({super.key});

  @override
  State<Add_Screen> createState() => _Add_ScreenState();
}

class _Add_ScreenState extends State<Add_Screen> {
  String? selectedItem;
  String? selectedItemi;
  final TextEditingController expalin_C= TextEditingController();
  FocusNode ex=FocusNode();
  final TextEditingController amount_c= TextEditingController();
  FocusNode amount=FocusNode();
  final List<String>_item=[
  "food",
  "Transfer",
  "Transportation",
  "Education"
  ];
  final List<String> _itemi=[
    'Income',
    "Expand",
  ];
  @override
  void initState() {
    super.initState();
    ex.addListener(() {
      setState(() {});
    });
    amount.addListener(() {
      setState(() {});
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            background_container(context),
            Positioned(
              top: 120,
            child:main_container()
            ),
          ],
        ),
      ),
    );
  }
  Container main_container(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 550,
      width: 340,
      child: Column(
        children: [
          SizedBox(height: 50),
      name(),
          SizedBox(height: 30),
         explain(),
          SizedBox(height: 30),
          Amount(),
          SizedBox(height: 30),
          How(),
          SizedBox(height: 30),
          save(),
      ]
      ),
    );
  }
  GestureDetector save(){
    return  GestureDetector(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()),);
        },
        child:Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff368983),
          ),
          width: 120,
          height: 50,
          child: Text("Save",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color:Colors.white,
            ),),
        )
    );
  }

  Padding How(){
    return  Padding(padding:EdgeInsets.symmetric(horizontal: 15),
        child:Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2,color: Color(0xffC5C5C5C5),
            ),
          ),
          child: DropdownButton<String>(
            value: selectedItemi,
            onChanged: ((value){
              setState(() {
                selectedItemi=value!;
              });
            }),
            items: _itemi
                .map((e) => DropdownMenuItem(
              child:Container(
                child: Row(
                  children: [
                    Container(
                      width:40 ,
                      child: Image.asset("images/${e}.jpeg"),
                    ),
                    SizedBox(width: 30,),
                    Text(e,
                      style: TextStyle(
                        fontSize: 18,

                      ),)
                  ],
                ),
              ),
              value:e,
            ))
                .toList(),
            selectedItemBuilder: (BuildContext context)=>
                _item.map((e) => Row(
                  children: [
                    Container(
                      width: 42,
                      child: Image.asset('images/${e}.jpeg'),
                    ),
                    SizedBox(width: 10),
                    Text(e)
                  ],
                ))
                    .toList(),
            hint: Text("How",
              style: TextStyle(
                  color: Colors.grey
              ),),
            dropdownColor: Colors.white,
            isExpanded: true,
            underline: Container(),
          ),
        )
    );
  }

  Padding Amount(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child:TextField(
        keyboardType:TextInputType.number,
        focusNode: amount,
        controller: amount_c,
        decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(horizontal:15,vertical: 15),
          labelText: 'amount',
          labelStyle: TextStyle(
            fontSize: 17,
            color: Colors.grey.shade500,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 2,color: Color(0xffC5C5C5)
              )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                width: 2,color: Color(0xff368983)
            ),

          ),
        ),
      ),
    );
  }

  Padding explain(){
    return  Padding(padding: EdgeInsets.symmetric(horizontal: 15),
      child:TextField(
        focusNode: ex,
        controller: expalin_C,
        decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(horizontal:15,vertical: 15),
          labelText: 'explain',
          labelStyle: TextStyle(
            fontSize: 17,
            color: Colors.grey.shade500,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 2,color: Color(0xffC5C5C5)
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 2,color: Color(0xff368983)
              )
          ),
        ),
      ),
    );
  }
  Padding name(){
    return Padding(padding:EdgeInsets.symmetric(horizontal: 15),
      child:Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2,color: Color(0xffC5C5C5C5),
          ),
        ),
        child: DropdownButton<String>(
            value: selectedItem,
            onChanged: ((value){
              setState(() {
                selectedItem=value!;
              });
            }),
            items: _item
                .map((e) => DropdownMenuItem(
              child:Container(
                child: Row(
                  children: [
                    Container(
                      width:40 ,
                      child: Image.asset("images/${e}.png"),
                    ),
                    SizedBox(width: 30,),
                    Text(e,
                      style: TextStyle(
                        fontSize: 18,

                      ),)
                  ],
                ),
              ),
              value:e,
            ))
                .toList(),
            selectedItemBuilder: (BuildContext context)=>
            _item.map((e) => Row(
    children: [
      Container(
    width: 42,
    child: Image.asset('images/${e}.png'),
    ),
      SizedBox(width: 10),
      Text(e)
    ],
    ))
    .toList(),
  hint: Text("Name",
  style: TextStyle(
  color: Colors.grey
  ),),
  dropdownColor: Colors.white,
  isExpanded: true,
  underline: Container(),
  ),
  )
  );
  }
  Column background_container(BuildContext context){
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            color: Color(0xff368983),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                        icon: Icon(Icons.arrow_back,
                          color: Colors.white,
                        )
                    ),
                    Text("Adding",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),),
                    Icon(Icons.attach_file_outlined,
                      color: Colors.white,)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
