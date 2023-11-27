import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({super.key});

  final TextEditingController nomeTarefaControoler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
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
                SizedBox(height: 400,),
                Row(
                  children: [
                    Expanded(child: Text("Você possui 0 tarefas pendentes"),),
                    SizedBox(width: 8),
                    ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          padding: EdgeInsets.all(14),
                        ),child: Text('Limpar tudo'),)
                  ],
                )
              ],
            ),
          ),
        ),

      )
    );
  }

  void add(){

  }

}