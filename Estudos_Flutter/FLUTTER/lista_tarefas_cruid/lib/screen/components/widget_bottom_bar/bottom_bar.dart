import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/filter_provider.dart';

class WidgetBottomBar extends ConsumerWidget {
  const WidgetBottomBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // botão all Tasks
          ElevatedButton.icon(
            onPressed: () {
              ref.read(filterProvider.notifier).setFilter(Filter.all);
            },
            label: const Text(
              'Todos',
              style: TextStyle(fontSize: 15),
            ),
            icon: const Icon(
              Icons.all_inbox_outlined,
              size: 15,
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              ref.read(filterProvider.notifier).setFilter(Filter.pending);
            },
            label: const Text(
              'Pendentes',
              style: TextStyle(
                fontSize: 15,
                color: Colors.orange,
              ),
            ),
            icon: const Icon(
              Icons.pending_actions_outlined,
              color: Colors.orange,
              size: 15,
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              ref.read(filterProvider.notifier).setFilter(Filter.completed);
            },
            label: const Text(
              'Conluídas',
              style: TextStyle(fontSize: 15, color: Colors.green),
            ),
            icon: const Icon(Icons.check_circle_outline,
                size: 15, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
