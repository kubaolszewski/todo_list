import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AddTodoDialog extends StatelessWidget {
  const AddTodoDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Adding todos soon....'),
        const SizedBox(height: 12),
        SizedBox(
          width: 200,
          child: TextButton(
            style: TextButton.styleFrom(
              side: BorderSide(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            onPressed: () => Modular.to.pop(),
            child: const Text('Cool!'),
          ),
        ),
      ],
    );
  }
}
