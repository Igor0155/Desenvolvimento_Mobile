import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/task.dart';

/* Sobre a classe StateNotifier
A classe StateNotifier que será passada para nosso StateNotifierProvider.
Esta classe não deve expor o estado fora de sua propriedade "state", o que significa
sem getters/propriedades públicas!
Os métodos públicos nesta classe permitirão que a UI modifique o estado.
*/

// Para casos mais simples é o StateProvider. Para os mais complicados o NotifierProvider

class TaskNotifier extends StateNotifier<List<Task>> {
  // iniciar a lista de task para uma lista vazia
  TaskNotifier() : super([]);

  void addTask(Task task) {
    state = [...state, task];
  }

  void removeTask(String taskId) {
    // pega o array e retira a task com o id passado
    state = state.where((task) => task.id != taskId).toList();
  }

  void activeTask(String taskId) {
    // map anda nele todo até achar o id compativel para modificar o ativo
    state = state.map((task) {
      if (task.id == taskId) {
        return task.copyWith(active: !task.active);
      }
      return task;
    }).toList();
  }

  void changeName(String taskId, String newName) {
    state = state.map((task) {
      if (task.id == taskId) {
        return task.copyWith(name: newName);
      }
      return task;
    }).toList();
  }
}

final tasksProvider =
    StateNotifierProvider<TaskNotifier, List<Task>>((ref) => TaskNotifier());
