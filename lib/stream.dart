Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (final value in stream) {
    print(sum);
    sum += value;
  }
  return sum;
}

Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
   await Future.delayed(Duration(seconds: 1),(){

    });
   print(i);
    yield i;

  }
}

void main() async {
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum);
}