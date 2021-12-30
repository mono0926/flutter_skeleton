import 'package:flutter/material.dart';

class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details: $id'),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}
