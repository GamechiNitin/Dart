import 'myiterator.dart';

class BrowserHistory {
  final List<String> _ulrs = [];

  push(String url) {
    _ulrs.add(url);
  }

  String pop() {
    return _ulrs.removeLast();
  }

  MyIterator<String> createIterator() {
    return StringIterator<String>(this);
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
// ---------- String Iterator ------------

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
