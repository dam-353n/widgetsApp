import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';
  
  const ProgressScreen({super.key});

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
        title: const Text('Progress Indicators'),
      ),
      body: const Center(
        child: Column(
          children: [
            CircularProgressIndicator(strokeWidth: 2),

            SizedBox(height: 20),

            LinearProgressIndicator(),

            SizedBox(height: 20),

            _progressIndicator()
          ],
        ),
      ),
    );
  }
}

class _progressIndicator extends StatelessWidget {
  const _progressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) => (value * 5) / 100).take(20),
      builder: (context, asyncSnapshot) {

        final progressValue = asyncSnapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children:  [
                  Text('Loading...'),
                  SizedBox(width: 20),
                  Expanded(
                    child: LinearProgressIndicator(value: progressValue),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children:  [
                  Text('${(progressValue * 100).toStringAsFixed(0)} %'),
                  SizedBox(width: 20),
                  CircularProgressIndicator(value: progressValue, strokeWidth: 2, backgroundColor: Colors.amber,),
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}