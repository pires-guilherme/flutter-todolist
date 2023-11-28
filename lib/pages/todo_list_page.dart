import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/widget/task_list_item.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController nomeTarefaController = TextEditingController();

  List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
      
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: nomeTarefaController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Adicione uma tarefa",
                            hintText: "ex: Estudar inglês",
      
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      ElevatedButton(
                          onPressed: add,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            fixedSize: Size(50, 50),
                            padding: EdgeInsets.all(0)
                          ),
                        child: Icon(Icons.add, size: 30, color: Colors.white,),
                      )
                    ],
                  ),
                  SizedBox(height: 16,),
                  Flexible(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        for(Task task in tasks)
                            taskListItem(tarefa:task, excluir: excluir),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Row(
                    children: [
                      Expanded(child: Text("Você possui ${tasks.length} tarefas pendentes"),),
                      SizedBox(width: 8),
                      ElevatedButton(
                          onPressed: clear,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            padding: EdgeInsets.all(14),
                          ),child: Text('Limpar tudo', style: TextStyle(color: Colors.white),),)
                    ],
                  )
                ],
              ),
          ),
      
        )
      ),
    );
  }

  void add(){
    print("add aqui");
    String text = nomeTarefaController.text;

    Task tarefa = Task(
      title: text,
      datetime: DateTime.now(),
    );

    setState(() {
      tasks.add(tarefa);
    });

    nomeTarefaController.clear();
  }

  void clear(){
    setState(() {
      tasks.clear();
    });
  }

  void excluir(Task tarefa){
    setState(() {
      tasks.remove(tarefa);
    });
  }
}