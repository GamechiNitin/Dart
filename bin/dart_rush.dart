import 'package:dart_rush/dart_rush.dart' as dart_rush;

void main(List<String> arguments) {
  print('Hello world: ${dart_rush.calculate()}!');
  print(
      "AVERAGE FROM TERMINAL :  ${arguments.fold<int>(0, (previousValue, element) => previousValue + int.parse(element))}");
}
