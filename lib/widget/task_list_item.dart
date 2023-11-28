import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_list/models/task.dart';

class taskListItem extends StatelessWidget {
  const taskListItem({super.key, required this.tarefa});

  final Task tarefa;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.grey[200],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(DateFormat('dd/MM/yyyy HH:mm:ss').format(tarefa.datetime),  style: TextStyle(fontSize: 12,),),
          Text(tarefa.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
