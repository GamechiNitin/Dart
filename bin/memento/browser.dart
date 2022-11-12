// Originator
class Browser {
  String? address;

  createState() {
    return BrowserState(address!);
  }

  restoreState(BrowserState state) {
    address = state.content;
  }
}

// Memento
class BrowserState {
  final String content;

  BrowserState(this.content);
}

// CareTaker
class History {
  List<BrowserState> history = [];
  void push(BrowserState state) {
    history.add(state);
  }

  BrowserState pop() {
    return history.removeAt(history.length - 1);
  }
}
