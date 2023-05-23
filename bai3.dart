Uppercase(String str) {
  return str.toUpperCase();
}

Lowercase(String str) {
  return str.toLowerCase();
}

Nullcase(String str) {
  return 'Error';
}

operationSelector({String? op}) {
  if (op == 'uppercase') return Uppercase;
  if (op == 'lowercase')
    return Lowercase;
  else
    return Nullcase;
}

void main() {
  print("Case 1: in hoa");
  var fn = operationSelector(op: 'uppercase');
  print(fn('Hello'));
  print(fn('World'));

  print("Case 2: in thường");
  fn = operationSelector(op: 'lowercase');
  print(fn('Hello'));
  print(fn('World'));

  print("Case 3: khác và null");
  fn = operationSelector(op: "ddd");
  print(fn('Hello'));
  fn = operationSelector();
  print(fn('World'));
}
