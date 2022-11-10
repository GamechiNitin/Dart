import 'iterator/brower_history.dart';

void main(List<String> arguments) {
  print('Iterator Pattern:');

//In object-oriented programming, the iterator pattern is a design pattern
//in which an iterator is used to traverse a container and access the container’s elements.

//The iterator pattern decouples algorithms from containers in some cases,
//algorithms are necessarily container-specific and thus cannot be decoupled.
  print(
      "\nIn object-oriented programming, the iterator pattern is a design pattern in which an \niterator is used to traverse a container and \naccess the container’s elements. \n\nThe iterator pattern decouples algorithms from containers; in some cases, \nalgorithms are necessarily container-specific and thus cannot be decoupled.");
  final browerHistory = BrowserHistory();
  // --- For Int Iterator
  browerHistory.push(1);
  browerHistory.push(2);
  browerHistory.push(3);
  // --- For String Iterator
  // browerHistory.push("google.com");
  // browerHistory.push("twitter.com");
  // browerHistory.push("fb.com");

  // browerHistory.pop();
  // for (var i = 0; i < browerHistory._ulrs.length; i++) {
  //   print(browerHistory._ulrs[i]);
  // }

  print('Iterator Pattern Int Example:');
  final iter = browerHistory.createIterator();
  while (iter.hasNext()) {
    print(iter.current());
    iter.moveNext();
  }
}
