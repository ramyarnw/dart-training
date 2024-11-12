import 'dart:io';

import 'package:rxdart/rxdart.dart';

Stream<String> numbers(int a, int b) async* {
  for (int i = a; i <= b; i++) {
    yield i.toString();
  }
}

Stream<String> character(int a, int b) async* {
  for (int i = a + 64; i <= b + 64; i++) {
    yield String.fromCharCode(i);
  }
}
Stream<String> duplicate() {
  List<String> a = [
    '1',
    '1',
    '2',
    '2',
    '2',
    '2',
    '1',
    '1',
    '1',
    '2',
    '2',
    '2',
    '3'
  ];
  return Stream.fromIterable(a);
}
void main() {
  print("Enter which case do u want to see");
  int? c = int.parse(stdin.readLineSync()!);
  switch (c) {
    case 1:
      {
        _mapStream(numbers(1, 5)).listen((event) {
          print('map value is $event');
        });
        print("MAP");
      }
      break;
    case 2:
      {
        _filterStream(numbers(1, 5)).listen((event) {
          print('filter $event');
        });
        print("FILTER");
      }
      break;
    case 3:
      {
        _flatMap(numbers(1, 5).asBroadcastStream(),
                character(1, 5).asBroadcastStream())
            .listen((event) {
          print('flat $event');
        });
        print("FLATMAP");
      }
      break;
    case 4:
      {
        _concatStream(numbers(1, 5), character(1, 5)).listen((event) {
          print('concat $event');
        });
      }
      break;
    case 5:
      {
        _combineStream(numbers(1, 5), character(1, 5)).listen((event) {
          print('combine $event');
        });
      }break;
    case 6:
      {
        _zipStream(numbers(1, 5), character(1, 5)).listen((event) {
          print('zip $event');
        });
      }break;
    case 7:
      {
        _scanStream(numbers(1, 5)).listen((event) {
          print('scan $event');
        });
      }break;
    case 8:
      {
        _reduceStream(numbers(1, 5)).then((value) => print('reduce $value'));
      }break;
    case 9:
      {
        _debounceStream(numbers(1, 5)).listen((event) {
          print('debounce $event');
        });
      }break;
    case 10:
      {
        _distinctStream(duplicate()).listen((event) {
          print('distinct $event');
        });
      }break;
    case 11:
      {_takeUntilStream(numbers(1, 5), character(1, 5)).listen((event) {
        print('take until $event');
      });
      }break;
    case 12:
      {
        _defaultEmpty().listen((event) {
          print('empty $event');
        });
      }break;
    case 13:
      {
        _concatMapStream(numbers(1, 5).asBroadcastStream(),
            character(1, 5).asBroadcastStream())
            .listen((event) {
          print('concatMap $event');
        });
      }

    default:
      {
        _distintUntilChanged(duplicate()).listen((event) {
          if (event != null) print('DisUnCh $event');
        });
        print("This is default case");
      }
      break;
  }
}

Stream<String> _mapStream(
  Stream<String> a,
) {
  return a.map((event) => event * 3);
}

Stream _filterStream(Stream<String> a) {
  return a.where((event) => int.parse(event) % 2 == 0);
}

Stream<String> _flatMap(Stream<String> a, Stream<String> b) {
  return a.flatMap((element) => b.map((event) => element + event));
}

Stream<dynamic> _concatStream(Stream<String> a, Stream<String> b) {
  return a.concatWith([b]);
  // return ConcatStream([
  //   Stream.fromIterable(a),
  //   //TimerStream(0, Duration(seconds: 5)),
  //   Stream.fromIterable(b)
  // ]);
}

Stream<Object?> _combineStream(Stream<String> a, Stream<String> b) {
  return CombineLatestStream.list<String>([
    a,
    b,
  ]);
}
Stream<String> _zipStream(Stream<String> a, Stream<String> b) {
  return a.zipWith(b, (String a, String b) => a + b);
}

Stream<String> _scanStream(Stream<String> a) {
  return a.scan((String acc, String curr, int i) => acc + curr, 0.toString());
}
Future _reduceStream(Stream<String> a) {
  return a.reduce((previous, element) => previous + element);
}

Stream _debounceStream(Stream<String> a) {
  return a.debounce((_) => TimerStream(true, Duration(seconds: 1)));
}

Stream _distinctStream(Stream<String> a) {
  return a.distinctUnique();
}

Stream _takeUntilStream(Stream<String> a, Stream<String> b) {
  return a.takeUntil(TimerStream(
    b,
    Duration(microseconds: 50),
  ));
}

Stream _defaultEmpty() {
  return Stream.empty().defaultIfEmpty(10);
}

Stream _concatMapStream(Stream<String> a, Stream<String> b) {
  return a.asyncExpand((event) => b.map((events) => event + events));
}

Stream _distintUntilChanged(Stream<String> a) {
  // return a.scan((accumulated, value, index) {
  //   if (accumulated != value) {
  //     accumulated = value;
  //     return value;
  //   } else
  //     return null;
  // }, 0).where((event) => event != null);
  return a.distinct();
}