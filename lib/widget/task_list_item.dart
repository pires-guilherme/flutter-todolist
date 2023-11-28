import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_list/models/task.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class taskListItem extends StatelessWidget {
  const taskListItem({super.key, required this.tarefa, required this.excluir});

  final Task tarefa;
  final Function (Task) excluir;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(3),
      child: Slidable(
        actionPane: const SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        secondaryActions:  [
          IconSlideAction(
            icon: Icons.delete,
            color: Colors.red,
            caption: "Excluir",
            onTap: (){
              excluir(tarefa);
            } ,
          ),
        ],
        child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.grey[200],
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(DateFormat('dd/MM/yyyy HH:mm:ss').format(tarefa.datetime),  style: TextStyle(fontSize: 12,),),
                  Text(tarefa.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)
                ],
              ),
            ),
      ),
    );
  }
}
