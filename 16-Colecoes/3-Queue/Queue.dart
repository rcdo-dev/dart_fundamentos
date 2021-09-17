import 'dart:collection';

///
/// * Queue é uma coleção ordenada entre chaves{}, sem índex, que manipula o início e o fim da lista!
///

void queue() {
  print('16.3.0) Queue\n');

  Queue<int?> queue = Queue(); // import 'dart:collection';
  print('Implementação: ${queue.runtimeType}'); // ListQueue<int?>

  queue.addAll([20, 30]);
  queue.add(40);

  queue.addFirst(10);
  queue.addLast(50);
  queue.add(60);

  queue.add(null); // Null Safety.
  print(queue);
  queue.removeLast();

  queue.forEach((element) => print(element));
}

void main() {
  queue();
}
