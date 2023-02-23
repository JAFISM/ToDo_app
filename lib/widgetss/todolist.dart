import 'package:flutter/material.dart';
import 'package:todo_app/Global%20values/colors.dart';
class TodoItem extends StatelessWidget {
final  String name;
  TodoItem({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        title: Text(name),
        leading: Icon(Icons.check_box_outline_blank),
        trailing: Container(
          decoration: BoxDecoration(
              color: tdRed,
            borderRadius: BorderRadius.circular(5)
          ),
          height: 35,
          width: 35,
          child: Icon(Icons.delete,color: Colors.white,size: 20,),
        ),
      ),
    );
  }
}
