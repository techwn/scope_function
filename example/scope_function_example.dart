import 'package:scope_function/scope_function.dart';

final List<String> sensitiveWords = ['sensitiveWords1', 'sensitiveWords2', 'Hello'];

void main() {
  final String content = 'Hello World';

  content.also((it) => print(it)).also((it) => print(it.length));

  content.let((it) => it.length).also(print);

  content.takeIf((it) => it.isNotEmpty)?.also((it) => print('content not empty'));

  content.takeUnless(containsSensitiveWords).also((it) => print(it));

  content.run((it) => it.length).also(print);

  withThe<String, int>(content, (it) => it.length).also(print);
}

bool containsSensitiveWords(String content) {
  bool containSensitiveWords = false;
  for (var element in sensitiveWords) {
    if (content.contains(element)) {
      containSensitiveWords = true;
      break;
    }
  }
  return containSensitiveWords;
}
