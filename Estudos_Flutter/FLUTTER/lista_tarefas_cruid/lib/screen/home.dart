// Widget da página inicial
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'components/widget_card_list/card_list.dart';
import 'models/task.dart';
import 'providers/task_provider.dart';
import 'providers/filter_provider.dart';
import 'components/widget_bottom_bar/bottom_bar.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    // Obtém o valor atual do texto digitado
    final newList = ref.watch(tasksProvider);
    final filter = ref.watch(filterProvider);

    var controllerText = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
        // TITULO
        appBar: AppBar(title: const Text('Lista Riverpod CRUID')),
        // CORPO
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // FORM INPUT E BOTÃO
                Form(
                  key: formKey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: controllerText,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty || value == '') {
                                return 'Digite um valor';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                label: Text('Adicionar na lista'),
                                labelStyle: TextStyle(fontSize: 20),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black87),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: FloatingActionButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              ref.read(tasksProvider.notifier).addTask(Task(
                                  id: const Uuid().v4(),
                                  name: controllerText.value.text));
                            }
                          },
                          elevation: 0.5,
                          backgroundColor: Colors.grey[200],
                          child: const Icon(
                            Icons.add_circle_outlined,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    itemCount: newList.length,
                    itemBuilder: (context, i) {
                      if (filter == Filter.all) {
                        return WidgetCardList(
                            key: Key(newList[i].id), newList: newList[i]);
                      }
                      if (filter == Filter.pending) {
                        if (newList[i].active) {
                          return WidgetCardList(
                              key: Key(newList[i].id), newList: newList[i]);
                        }
                      }
                      if (filter == Filter.completed) {
                        if (newList[i].active == false) {
                          return WidgetCardList(
                              key: Key(newList[i].id), newList: newList[i]);
                        }
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const WidgetBottomBar());
  }
}
