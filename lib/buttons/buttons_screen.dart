import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _body();
  }
}

class _body extends StatelessWidget {
  const _body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body:  SizedBox(
        width: double.infinity,
        child: 
          Center(
              child: Row(
                children: [
                  _buttons(enabled: true),
                  _buttons(enabled: false),
                ],
              ),
            ),
        
      ),
    );
  }
}

class _buttons extends StatelessWidget {
  final bool enabled;

  const _buttons({
    super.key,
    this.enabled = true,
  });
  

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;
    return Column(
      children: [
        ElevatedButton(onPressed: onPressed, child: const Text('Elevated')),
          FilledButton(onPressed: onPressed, child: const Text('Filled')),
          FilledButton.tonal(onPressed: onPressed, child: const Text('Filled Tonal')),
          OutlinedButton(onPressed: onPressed, child: const Text('Outlined')),
          TextButton(onPressed: onPressed, child: const Text('Text')),
      ],
    );
  }
}