import 'package:api_practice_app/model/charactor_model_map.dart';
import 'package:flutter/material.dart';

class DataInfoScreen extends StatelessWidget {
  final Results? results;
  final Info? info;
  const DataInfoScreen({Key? key, this.results, this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(results!.image!),
            Text("${results!.name}"),
            const SizedBox(height: 16),
            Text('next: ${info!.next}', style: const TextStyle(fontSize: 18)),
            Text('prev: ${info!.prev}', style: const TextStyle(fontSize: 18)),
            Text('pages: ${info!.pages}', style: const TextStyle(fontSize: 18)),
            Text('count: ${info!.count}', style: const TextStyle(fontSize: 18)),
            Text('ID: ${results!.id}', style: const TextStyle(fontSize: 18)),
            Text('location: ${results!.location!.name}', style: const TextStyle(fontSize: 18)),
            Text('origin: ${results!.origin!.name}', style: const TextStyle(fontSize: 18)),
            Text('image: ${results!.image}', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
