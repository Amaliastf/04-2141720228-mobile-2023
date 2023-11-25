import 'dart:async';
import 'dart:math';

// Praktikum 7 Langkah 3
class RandomNumberBloc {
  // Praktikum 7 Langkah 4
  final _generateRandomController = StreamController<void>();
  final _randomNumberController = StreamController<int>();

  Sink<void> get generateRandom => _generateRandomController.sink;
  Stream<int> get randomNumber => _randomNumberController.stream;
  // _secondsStreamController.sink;

  RandomNumberBloc() {
    _generateRandomController.stream.listen((_) {
      final random = Random().nextInt(10);
      _randomNumberController.sink.add(random);
    });
  }

  // Praktikum 7 Langkah 6
  void dispose() {
    _generateRandomController.close();
    _randomNumberController.close();
  }
}