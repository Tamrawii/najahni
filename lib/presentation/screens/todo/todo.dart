import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:najahni/core/constants/colors.dart';
import 'package:najahni/core/models/todo_model.dart';
import 'package:najahni/data/providers/todo_provider.dart';
import 'package:najahni/presentation/screens/todo/widgets/new_task.dart';
import 'package:provider/provider.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  TextEditingController taskController = TextEditingController();
  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: StreamBuilder(
            stream: context.read<TodoProvider>().loadData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: Text("Loading..."));
              } else {
                return Column(
                  children: [
                     Row(
                      children: [
                         Text(
                          "You've got",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: HexColor("333333"),
                          ),
                        ),
                        Text(
                          " ${context.watch<TodoProvider>().count} ",
                          style: const TextStyle(
                            fontSize: 24,
                            color: AppColors.blue1,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          context.watch<TodoProvider>().count <= 1 ? "task to finish" : "tasks to finish",
                          style:  TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: HexColor("333333"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: taskController,
                              textCapitalization: TextCapitalization.sentences,
                              style: const TextStyle(
                                fontFamily: "Spring",
                                fontWeight: FontWeight.w500,
                                fontSize: 19.2,
                              ),
                              decoration: InputDecoration(
                                hintText: "Type your task",
                                hintStyle: TextStyle(
                                  color: HexColor("CCCCCC"),
                                  fontFamily: "Spring",
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              TodoModel task = TodoModel();
                              task.taskName = taskController.text;
                              task.isDone = isDone;

                              Provider.of<TodoProvider>(context, listen: false).saveTask(task);
                              taskController.clear();
                              FocusScope.of(context).unfocus();
                            },
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          final task = snapshot.data![index];
                          return Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Dismissible(
                              // Use another value (other than the index)
                              key: ValueKey<int>(index),
                              background: Container(
                                color: Colors.redAccent,
                                child: const Icon(Icons.delete_rounded, color: Colors.white,),
                              ),
                              onDismissed: (direction) {
                                int id = task.id;
                                Provider.of<TodoProvider>(context, listen: false).removeTask(id);
                              },
                              child: NewTask(
                                title: task.taskName!,
                                isDone: task.isDone!,
                                id: task.id,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
