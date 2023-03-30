import 'dart:async';
import 'dart:math';

void main() {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print('Counting: $i');

      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }

    print('A Stream terminou');
  }

  var testStream = myStream(1, 10).asBroadcastStream();

  StreamSubscription mySubscriber = testStream.listen((event) {
    if (event.isEven) {
      print('Numero é par');
    }
  }, onError: (e) {
    print('Ocorreu um erro: $e');
  });

  Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print("Stream paused");
  Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print("Stream resumed");
  Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print("Stream canceled");

  testStream.map((event) => 'Subscriber 1 watching: $event').listen(print);

  print('A main terminou');
}
