import 'package:flutter/material.dart';

import '../Global values/colors.dart';
//import '../Global values/const.dart';
import '../widgetss/todolist.dart';
import 'innerscreens/searchbox.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: tdBGColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
             // spaceheight,
              Center(
                child: CircleAvatar(
                  radius: 60,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(child: Text("Jafis",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              SizedBox(height: 30,),
              SearchBox(),
              SizedBox(height: 30,),
              Text("All Your Notes",style: TextStyle(color: tdBlack,fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 20,),
              Expanded(child: ListView(
                children: [
                  TodoItem(name: 'Jafis',),
                  TodoItem(name: 'Jafis',),
                  TodoItem(name: 'Jafis',),
                  TodoItem(name: 'Jafis',),
                  TodoItem(name: 'Jafis',),
                  TodoItem(name: 'Jafis',),
                  TodoItem(name: 'Jafis',),
                  TodoItem(name: 'Jafis',),

                ],
              ),
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                      children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                          right: 20,
                          left: 20,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Add a new todo item',
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                        right: 20,
                      ),
                      child: ElevatedButton(
                        child: Text(
                          'ADD',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: tdBlue,
                          minimumSize: Size(60, 60),
                          elevation: 10,
                        ),
                      ),
                    ),
                  ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
