import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:najahni/core/models/todo_model.dart';
import 'package:najahni/data/providers/todo_provider.dart';
import 'package:provider/provider.dart';

class NewTask extends StatelessWidget {
  const NewTask({
    super.key,
    required this.title,
    required this.isDone,
    required this.id,
  });

  final String title;
  final bool isDone;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor("eeeeee").withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.2),
        //     spreadRadius: 1,
        //     blurRadius: 2,
        //     offset: const Offset(0, 3), // changes position of shadow
        //   ),
        // ],
      ),
      child: Row(
        children: [
          Checkbox(value: isDone, onChanged: (val) {
            TodoModel updatedTask = TodoModel();
            updatedTask.isDone = val;
            updatedTask.taskName = title;
            updatedTask.id = id;
            Provider.of<TodoProvider>(context, listen: false).saveTask(updatedTask);
          }),
          Text(
            title,
            style: const TextStyle(
              fontSize: 19.2,
              fontFamily: "Spring",
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      ),
    );
  }
}
