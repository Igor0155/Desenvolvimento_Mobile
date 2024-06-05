// criando um enum de filtro
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter { all, pending, completed }

/* Sobre a classe StateNotifier
A classe StateNotifier que será passada para nosso StateNotifierProvider.
Esta classe não deve expor o estado fora de sua propriedade "state", o que significa
sem getters/propriedades públicas!
Os métodos públicos nesta classe permitirão que a UI modifique o estado.
*/

// criando um gerenciado de estado para o filtro
class FilterNotifier extends StateNotifier<Filter> {
  FilterNotifier() : super(Filter.all);

  // alterando o filtro
  void setFilter(Filter filter) {
    state = filter;
  }
}

final filterProvider =
    StateNotifierProvider<FilterNotifier, Filter>((ref) => FilterNotifier());
