import 'memento/browser.dart';

void main(List<String> arguments) {
  print('Memento Pattern:');

// Make an object (originator) itself responsible for
// saving its internal state to a (memento) object and
// restoring to a previous state from a (memento) object.
// Only the originator that created a memento is allowed to access it.
// A client (caretaker) can request a memento from the originator (to save the internal state of the originator)
// and pass a memento back to the originator (to restore to a previous state).
// This enables to save and restore the internal state of an originator without violating its encapsulation.

  print(
    "Make an object (originator) itself responsible for\nsaving its internal state to a (memento) object and\nrestoring to a previous state from a (memento) object. \n\nOnly the originator that created a memento is allowed to access it.\n\nA client (caretaker) can request a memento from the originator (to save the internal state of the originator) and \npass a memento back to the originator (to restore to a previous state).\n\nThis enables to save and restore the internal state of an originator without violating its encapsulation.",
  );
  final chrome = Browser();
  final history = History();
  // ------ 1 --------
  chrome.address = "google.com";
  history.push(chrome.createState());
  // ------ 2 --------
  chrome.address = "elon.twitter.com";
  history.push(chrome.createState());
  // ------ 2 --------
  chrome.address = "brvr.com";
  chrome.restoreState(history.pop());
  print(chrome.address);
}
