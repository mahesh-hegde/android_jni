// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart' hide Intent;

import 'dart:io';

import 'package:jni/jni.dart';
import 'package:android_jni/android/content/Intent.dart';
import 'package:android_jni/android/content/Context.dart';
import 'package:android_jni/android/app/Activity.dart';
import 'package:android_jni/android/os/SystemClock.dart';
import 'package:android_jni/android/os/Process.dart';
import 'package:android_jni/android/os/Build.dart';

void main() {
  if (!Platform.isAndroid) {
    throw 'Only android is supported';
  }
  final context = Context.fromRef(Jni.getCachedApplicationContext());
  final activity = Activity.fromRef(Jni.getCurrentActivity());

  final examples = [
    Example('package name', () => context.getPackageName().toDartString()),
    Example('intent', () => activity.getIntent().getAction().toDartString()),
    Example('share some text', () {
      final intent = Intent.ctor2(Intent.ACTION_SEND.jniString());
      intent.setType('text/plain'.jniString());
      intent.putExtra8(Intent.EXTRA_TEXT.jniString(), "dart jni".jniString());
      activity.startActivity(Intent.createChooser(
        intent,
        'choose an action'.jniString(),
      ));
      intent.delete();
    }, runInitially: false),
    Example(
        'data dir', () => context.getApplicationInfo().dataDir.toDartString()),
    Example('native library dir',
        () => context.getApplicationInfo().nativeLibraryDir.toDartString()),
    Example('system time', () => SystemClock.uptimeMillis()),
    Example('process id', () => Process.myPid()),
    Example('throw exception', () => context.getString(-1),
        runInitially: false),
    Example('device code name', () => Build_VERSION.CODENAME.toDartString()),
  ];
  runApp(MyApp(examples));
}

class Example {
  String title;
  dynamic Function() callback;
  bool runInitially;
  Example(this.title, this.callback, {this.runInitially = true});
}

class MyApp extends StatefulWidget {
  const MyApp(this.examples, {Key? key}) : super(key: key);
  final List<Example> examples;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('JNI Examples'),
        ),
        body: ListView.builder(
            itemCount: widget.examples.length,
            itemBuilder: (context, i) {
              final eg = widget.examples[i];
              return ExampleCard(eg);
            }),
      ),
    );
  }
}

class ExampleCard extends StatefulWidget {
  const ExampleCard(this.example, {Key? key}) : super(key: key);
  final Example example;

  @override
  _ExampleCardState createState() => _ExampleCardState();
}

class _ExampleCardState extends State<ExampleCard> {
  Widget _pad(Widget w, double h, double v) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: h, vertical: v), child: w);
  }

  bool _run = false;

  @override
  void initState() {
    super.initState();
    _run = widget.example.runInitially;
  }

  @override
  Widget build(BuildContext context) {
    final eg = widget.example;
    var result = "";
    var hasError = false;
    if (_run) {
      try {
        result = eg.callback().toString();
      } on Exception catch (e) {
        hasError = true;
        result = e.toString();
      } on Error catch (e) {
        hasError = true;
        result = e.toString();
      }
    }
    var resultStyle = const TextStyle(fontFamily: "Monospace");
    if (hasError) {
      resultStyle = const TextStyle(fontFamily: "Monospace", color: Colors.red);
    }
    return Card(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(eg.title,
            softWrap: true,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        _pad(
            Text(result.toString(), softWrap: true, style: resultStyle), 8, 16),
        _pad(
            ElevatedButton(
              child: Text(_run ? "Run again" : "Run"),
              onPressed: () => setState(() => _run = true),
            ),
            8,
            8),
      ]),
    );
  }
}
