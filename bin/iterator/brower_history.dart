import 'myiterator.dart';

class BrowserHistory {
  final List<int> _ulrs = [];

  push(int url) {
    _ulrs.add(url);
  }

  int pop() {
    return _ulrs.removeLast();
  }

  MyIterator<int> createIterator() {
    return ListIterator<int>(this);
  }
}

class ListIterator<T> implements MyIterator<T> {
  final BrowserHistory history;

  ListIterator(this.history);
  int index = 0;
  @override
  T current() {
    return history._ulrs[index] as T;
  }

  @override
  bool hasNext() {
    return index < history._ulrs.length;
  }

  @override
  void moveNext() {
    index++;
  }
}

class StringIterator<T> implements MyIterator<T> {
  final BrowserHistory history;

  StringIterator(this.history);
  int index = 0;
  @override
  T current() {
    return history._ulrs[index] as T;
  }

  @override
  bool hasNext() {
    return index < history._ulrs.length;
  }

  @override
  void moveNext() {
    index++;
  }
}
