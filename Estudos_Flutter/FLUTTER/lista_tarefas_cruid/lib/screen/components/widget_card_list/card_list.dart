import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/task.dart';
import '../../providers/task_provider.dart';

class WidgetCardList extends ConsumerStatefulWidget {
  final Task newList;
  const WidgetCardList({super.key, required this.newList});

  @override
  WidgetCardListState createState() => WidgetCardListState();
}

class WidgetCardListState extends ConsumerState<WidgetCardList> {
  var _isEditing = false;
  late TextEditingController _controller;

  // iniciar controller
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  // dispose excluir da memoria
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _isEditing
              ? SizedBox(
                  height: 50,
                  width: 200,
                  child: TextField(
                    autofocus: true,
                    controller: _controller,
                    onSubmitted: (newValue) {
                      ref
                          .read(tasksProvider.notifier)
                          .changeName(widget.newList.id, newValue);
                      setState(() {
                        _isEditing = false;
                      });
                    },
                  ),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    widget.newList.name,
                    style: const TextStyle(overflow: TextOverflow.fade),
                  ),
                ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _isEditing = true;
                      _controller.text = widget.newList.name;
                    });
                  },
                  icon: const Icon(Icons.create_sharp)),
              IconButton(
                  onPressed: () {
                    ref
                        .read(tasksProvider.notifier)
                        .removeTask(widget.newList.id);
                  },
                  icon: const Icon(Icons.delete_forever_rounded)),
              IconButton(
                  onPressed: () {
                    ref
                        .read(tasksProvider.notifier)
                        .activeTask(widget.newList.id);
                  },
                  icon: const Icon(Icons.library_add_check_rounded)),
            ],
          ),
        ],
      ),
    ));
  }
}
