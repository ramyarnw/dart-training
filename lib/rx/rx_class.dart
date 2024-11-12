import 'dart:io';

import 'package:rxdart/rxdart.dart';

void main()
{
  print("Enter which case do u want to see");
  int? c = int.parse(stdin.readLineSync()!);
  switch (c) {
    case 1:
      {
        CombineLatestStream.list<String>([
          Stream.fromIterable(['a']),
          Stream.fromIterable(['b']),
          Stream.fromIterable(['C', 'D'])])
            .listen(print);
      }
      break;
    case 2:
      {
        CombineLatestStream.combine2(
          Stream.fromIterable([1]),
          Stream.fromIterable([2, 3]),
              (a, b) => a + b,
        )
            .listen(print);
      }
      break;
    case 3:
      {
        ConcatStream([
          Stream.fromIterable([1]),
          TimerStream(2, Duration(days: 1)),//wait one day to emit then print next value
          Stream.fromIterable([3])
        ])
            .listen(print);
      }
      break;
    case 4:
      {
        ConcatEagerStream([
          Stream.fromIterable([1]),
          TimerStream(2, Duration(minutes: 1)),//wait one minute to emit
          Stream.fromIterable([3])
        ])
            .listen(print);
      }break;
    case 5:
      {
        DeferStream(() => Stream.value('hi')).listen(print);
      }break;
    case 6:
      {
      ForkJoinStream.list<String>([
      Stream.fromIterable(['a']),
      Stream.fromIterable(['b']),
      Stream.fromIterable(['C', 'D']),
      ])
          .listen(print);
      }break;
    case 7:
      {
        FromCallableStream(() async {
          await Future<void>.delayed(const Duration(seconds: 1));
          return 'Value';
        }).listen(print);
        FromCallableStream(() => 'Value of callable stream').listen(print);
      }break;
    case 8:
      {
        MergeStream([
          TimerStream(1, Duration(minutes: 1)),
          Stream.fromIterable([2])
        ])
            .listen(print);
      }break;
    case 9:
      {
        RaceStream([
          TimerStream(1, Duration(days: 1)),
          TimerStream(2, Duration(days: 2)),
          TimerStream(3, Duration(seconds: 3))
        ]).listen(print); // prints 3
      }break;
    case 10:
      {
        RangeStream(1, 3).listen((i) => print(i)); // Prints 1, 2, 3

        RangeStream(3, 1).listen((i) => print(i)); // Prints 3, 2, 1

      }break;
    case 11:
      {
        RepeatStream((int repeatCount) =>
            Stream.value('repeat index: $repeatCount'), 3)
            .listen((i) => print(i)); // Prints 'repeat index: 0, repeat index: 1, repeat index: 2'
      }break;
    case 12:
      {
        RetryStream(() => Stream.value(1))
            .listen(print);
      }break;
    case 13:
      {
        final switchLatestStream = SwitchLatestStream<String>(
          Stream.fromIterable(<Stream<String>>[
            Rx.timer('A', Duration(seconds: 2)),
            Rx.timer('B', Duration(seconds: 1)),
            Stream.value('C'),
          ]),
        );

        switchLatestStream.listen(print); // prints 'C'
      }break;
    case 14:
      {
        Stream.periodic(Duration(milliseconds: 10), (i) => i)
            .buffer(Stream.periodic(Duration(seconds: 5), (i) => i))
            .listen(print); // prints [0, 1] [2, 3] [4, 5] ...
      }break;
  }
}