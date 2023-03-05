# Scope Function

A Dart implementation similar to [Kotlin scope functions](https://kotlinlang.org/docs/scope-functions.html).

Used for chained programming style.

## Getting started

```dart
import 'package:scope_function/scope_function.dart';
```

## Usage

```dart
netWorkResponse.run(parseResponse)
    .let((it) => it.name)
    .also((name) => print("name: $name"))
    ?.takeif((it) => it.isNotEmpty);
```

## Additional information

- Since Dart not support Context receiver as what Kotlin does, ```withThe```, ```run``` implemented using it as argument.
- Since ```with``` is keyword in dart, use name ```withThe``` instead.
- Recommend use ```..``` operator in replace of ```apply``` which is usually used as configure object.
- Recommend define a function(named/unnamed), and use ```function.call``` in replace of ```run without receiver```.
- We usually choose function based on semantic distinction if both functions can be competent for the job.
  - please refer to [Kotlin scope functions](https://kotlinlang.org/docs/scope-functions.html) for details.
