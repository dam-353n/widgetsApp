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
  const _body();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body:  SizedBox(
        width: double.infinity,
        child: SizedBox(
          width: double.infinity,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _Buttons(enabled: true,),
                  SizedBox(width: 10,),
                  _Buttons(enabled: false,),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  final bool enabled;

  const _Buttons({
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