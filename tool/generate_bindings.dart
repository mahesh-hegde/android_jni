import 'dart:io';

import 'package:jnigen/jnigen.dart';

const useAsmOption = '--use-asm';

// usage: dart run tool/gen.dart android_source_path
void main(List<String> args) async {
  if (args.isEmpty || (args.length == 2 && args[0] != useAsmOption)) {
    stdout.writeln('usage: tool/gen.dart [--use-asm] '
        'path_to_android_sources_or_jar');
    exitCode = 2;
    return;
  }
  final useAsm = (args.length == 2 && args[0] == useAsmOption);
  final sources = args.map(Uri.directory).toList();
  await generateJniBindings(
    Config(
      classPath: useAsm ? sources : [],
      sourcePath: useAsm ? [] : sources,
      classes: ['android'],
      exclude: BindingExclusions(
        methods: excludeAll<Method>([
          ['android.app.AlertDialog', 'setButton2'],
          ['android.app.AlertDialog', 'setButton3'],
        ]),
        fields: excludeAll<Field>([
          ['android.icu.text.SymbolTable', 'SYMBOL_REF'],
          ['android.util.Patterns', 'TOP_LEVEL_DOMAIN_STR_FOR_WEB_URL'],
        ]),
      ),
      outputConfig: OutputConfig(
        bindingsType: BindingsType.dartOnly,
        dartConfig: DartCodeOutputConfig(
          path: Uri.directory('lib/'),
        ),
      ),
    ),
  );
}
